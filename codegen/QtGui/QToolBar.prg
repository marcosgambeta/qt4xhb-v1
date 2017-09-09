$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QToolBar INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD actionAt1
   METHOD actionAt2
   METHOD actionAt
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction4
   METHOD addAction5
   METHOD addAction
   METHOD addSeparator
   METHOD addWidget
   METHOD allowedAreas
   METHOD clear
   METHOD iconSize
   METHOD insertSeparator
   METHOD insertWidget
   METHOD isAreaAllowed
   METHOD isFloatable
   METHOD isFloating
   METHOD isMovable
   METHOD orientation
   METHOD setAllowedAreas
   METHOD setFloatable
   METHOD setMovable
   METHOD setOrientation
   METHOD toggleViewAction
   METHOD toolButtonStyle
   METHOD widgetForAction
   METHOD setIconSize
   METHOD setToolButtonStyle

   METHOD onActionTriggered
   METHOD onAllowedAreasChanged
   METHOD onIconSizeChanged
   METHOD onMovableChanged
   METHOD onOrientationChanged
   METHOD onToolButtonStyleChanged
   METHOD onTopLevelChanged
   METHOD onVisibilityChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QToolBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QIcon>

/*
QToolBar ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBAR_NEW1 )
{
  QToolBar * o = new QToolBar ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QToolBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBAR_NEW2 )
{
  QToolBar * o = new QToolBar ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QToolBar ( const QString & title, QWidget * parent = 0 )
//[2]QToolBar ( QWidget * parent = 0 )

HB_FUNC_STATIC( QTOOLBAR_NEW )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTOOLBAR_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTOOLBAR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAction * actionAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ACTIONAT1 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->actionAt ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * actionAt ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ACTIONAT2 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->actionAt ( *PQPOINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

//[1]QAction * actionAt ( int x, int y ) const
//[2]QAction * actionAt ( const QPoint & p ) const

HB_FUNC_STATIC( QTOOLBAR_ACTIONAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ACTIONAT1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ACTIONAT2 );
  }
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION1 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction ( const QString & text )
*/
$method=|QAction *|addAction,addAction2|const QString &

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION3 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION4 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par2 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addAction ( PQSTRING(1), par2, (const char *) hb_parc(3) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDACTION5 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    const QObject * par3 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addAction ( par1, PQSTRING(2), par3, (const char *) hb_parc(4) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

//[1]void addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )
//[4]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[5]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )

HB_FUNC_STATIC( QTOOLBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION3 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION4 );
  }
  else if( ISNUMPAR(4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QTOOLBAR_ADDACTION5 );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QTOOLBAR_ADDSEPARATOR )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addSeparator ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDWIDGET )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addWidget ( PQWIDGET(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
Qt::ToolBarAreas allowedAreas () const
*/
HB_FUNC_STATIC( QTOOLBAR_ALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->allowedAreas () );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTOOLBAR_CLEAR )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QTOOLBAR_ICONSIZE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTSEPARATOR )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->insertSeparator ( PQACTION(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * insertWidget ( QAction * before, QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTWIDGET )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->insertWidget ( PQACTION(1), PQWIDGET(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
bool isAreaAllowed ( Qt::ToolBarArea area ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ISAREAALLOWED )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->isAreaAllowed ( (Qt::ToolBarArea) par1 ) );
  }
}

/*
bool isFloatable () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFloatable () );
  }
}

/*
bool isFloating () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATING )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFloating () );
  }
}

/*
bool isMovable () const
*/
HB_FUNC_STATIC( QTOOLBAR_ISMOVABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isMovable () );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QTOOLBAR_ORIENTATION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->orientation () );
  }
}

/*
void setAllowedAreas ( Qt::ToolBarAreas areas )
*/
HB_FUNC_STATIC( QTOOLBAR_SETALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAllowedAreas ( (Qt::ToolBarAreas) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFloatable ( bool floatable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETFLOATABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFloatable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMovable ( bool movable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETMOVABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMovable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QTOOLBAR_SETORIENTATION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * toggleViewAction () const
*/
HB_FUNC_STATIC( QTOOLBAR_TOGGLEVIEWACTION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->toggleViewAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QTOOLBAR_TOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->toolButtonStyle () );
  }
}

/*
QWidget * widgetForAction ( QAction * action ) const
*/
HB_FUNC_STATIC( QTOOLBAR_WIDGETFORACTION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widgetForAction ( PQACTION(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC_STATIC( QTOOLBAR_SETICONSIZE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIconSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QTOOLBAR_SETTOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setToolButtonStyle ( (Qt::ToolButtonStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
