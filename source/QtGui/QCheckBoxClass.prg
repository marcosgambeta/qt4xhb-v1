/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QCheckBox INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QCheckBox
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCheckBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCheckBox>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QCheckBox ( QWidget * parent = 0 )
*/
HB_FUNC( QCHECKBOX_NEW1 )
{
  QCheckBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QCheckBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCheckBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QCheckBox ( const QString & text, QWidget * parent = 0 )
*/
HB_FUNC( QCHECKBOX_NEW2 )
{
  QCheckBox * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QCheckBox ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCheckBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QCheckBox ( QWidget * parent = 0 )
//[2]QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCHECKBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCHECKBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
Qt::CheckState checkState () const
*/
HB_FUNC( QCHECKBOX_CHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->checkState (  );
    hb_retni( i );
  }
}


/*
bool isTristate () const
*/
HB_FUNC( QCHECKBOX_ISTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isTristate (  );
    hb_retl( b );
  }
}


/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC( QCHECKBOX_SETCHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCheckState (  (Qt::CheckState) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTristate ( bool y = true )
*/
HB_FUNC( QCHECKBOX_SETTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = ISNIL(1)? true : hb_parl(1);
    obj->setTristate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC( QCHECKBOX_MINIMUMSIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QCHECKBOX_SIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}





#pragma ENDDUMP
