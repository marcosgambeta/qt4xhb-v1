/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QACTION
#endif

CLASS QDockWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD allowedAreas
   METHOD features
   METHOD isAreaAllowed
   METHOD isFloating
   METHOD setAllowedAreas
   METHOD setFeatures
   METHOD setFloating
   METHOD setTitleBarWidget
   METHOD setWidget
   METHOD titleBarWidget
   METHOD toggleViewAction
   METHOD widget
   METHOD onAllowedAreasChanged
   METHOD onDockLocationChanged
   METHOD onFeaturesChanged
   METHOD onTopLevelChanged
   METHOD onVisibilityChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDockWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDockWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDOCKWIDGET_NEW1 )
{
  QDockWidget * o = NULL;
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  o = new QDockWidget ( PQSTRING(1), par2,  (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QDOCKWIDGET_NEW2 )
{
  QDockWidget * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QDockWidget ( par1,  (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QDOCKWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDOCKWIDGET_NEW1 );
  }
  else if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDOCKWIDGET_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOCKWIDGET_DELETE )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::DockWidgetAreas allowedAreas () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ALLOWEDAREAS )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->allowedAreas () );
  }
}


/*
DockWidgetFeatures features () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_FEATURES )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->features () );
  }
}


/*
bool	isAreaAllowed ( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ISAREAALLOWED )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isAreaAllowed (  (Qt::DockWidgetArea) par1 ) );
  }
}


/*
bool	isFloating () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_ISFLOATING )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFloating () );
  }
}


/*
void setAllowedAreas ( Qt::DockWidgetAreas areas )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETALLOWEDAREAS )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAllowedAreas (  (Qt::DockWidgetAreas) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFeatures ( DockWidgetFeatures features )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETFEATURES )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFeatures (  (QDockWidget::DockWidgetFeatures) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFloating ( bool floating )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETFLOATING )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFloating ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitleBarWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETTITLEBARWIDGET )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTitleBarWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QDOCKWIDGET_SETWIDGET )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * titleBarWidget () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_TITLEBARWIDGET )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->titleBarWidget ();
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
QAction * toggleViewAction () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_TOGGLEVIEWACTION )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->toggleViewAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QDOCKWIDGET_WIDGET )
{
  QDockWidget * obj = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}





#pragma ENDDUMP
