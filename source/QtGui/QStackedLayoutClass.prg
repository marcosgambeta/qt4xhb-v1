/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET

CLASS QStackedLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QStackedLayout
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget
   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStackedLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QStackedLayout>

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
QStackedLayout ()
*/
HB_FUNC( QSTACKEDLAYOUT_NEW1 )
{
  QStackedLayout * o = NULL;
  o = new QStackedLayout (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QStackedLayout ( QWidget * parent )
*/
HB_FUNC( QSTACKEDLAYOUT_NEW2 )
{
  QStackedLayout * o = NULL;
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QStackedLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QStackedLayout ( QLayout * parentLayout )
*/
HB_FUNC( QSTACKEDLAYOUT_NEW3 )
{
  QStackedLayout * o = NULL;
  QLayout * par1 = (QLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QStackedLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSTACKEDLAYOUT_DELETE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


/*
int addWidget ( QWidget * widget )
*/
HB_FUNC( QSTACKEDLAYOUT_ADDWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->addWidget ( par1 );
    hb_retni( i );
  }
}


/*
int currentIndex () const
*/
HB_FUNC( QSTACKEDLAYOUT_CURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentIndex (  );
    hb_retni( i );
  }
}


/*
QWidget * currentWidget () const
*/
HB_FUNC( QSTACKEDLAYOUT_CURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC( QSTACKEDLAYOUT_INSERTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->insertWidget ( par1, par2 );
    hb_retni( i );
  }
}


/*
void setStackingMode ( StackingMode stackingMode )
*/
HB_FUNC( QSTACKEDLAYOUT_SETSTACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStackingMode (  (QStackedLayout::StackingMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
StackingMode stackingMode () const
*/
HB_FUNC( QSTACKEDLAYOUT_STACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->stackingMode (  );
    hb_retni( i );
  }
}


/*
QWidget * widget ( int index ) const
*/
HB_FUNC( QSTACKEDLAYOUT_WIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * ptr = obj->widget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC( QSTACKEDLAYOUT_SETCURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC( QSTACKEDLAYOUT_SETCURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCurrentWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
