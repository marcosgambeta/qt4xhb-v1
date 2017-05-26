/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QVBoxLayout INHERIT QBoxLayout

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVBoxLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVBoxLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QVBoxLayout ()
*/
HB_FUNC_STATIC( QVBOXLAYOUT_NEW1 )
{
  QVBoxLayout * o = NULL;
  o = new QVBoxLayout ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVBoxLayout ( QWidget * parent )
*/
HB_FUNC_STATIC( QVBOXLAYOUT_NEW2 )
{
  QVBoxLayout * o = NULL;
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVBoxLayout ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QVBoxLayout ()
//[2]QVBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QVBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVBOXLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QVBOXLAYOUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVBOXLAYOUT_DELETE )
{
  QVBoxLayout * obj = (QVBoxLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
