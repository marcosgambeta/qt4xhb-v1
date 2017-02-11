/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QToolBar>

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

#include <QIcon>

/*
QToolBar ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC( QTOOLBAR_NEW1 )
{
  QToolBar * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QToolBar ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QToolBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QToolBar ( QWidget * parent = 0 )
*/
HB_FUNC( QTOOLBAR_NEW2 )
{
  QToolBar * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QToolBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QToolBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QToolBar ( const QString & title, QWidget * parent = 0 )
//[2]QToolBar ( QWidget * parent = 0 )

HB_FUNC( QTOOLBAR_NEW )
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

HB_FUNC( QTOOLBAR_DELETE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAction * actionAt ( int x, int y ) const
*/
HB_FUNC( QTOOLBAR_ACTIONAT1 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QAction * ptr = obj->actionAt ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
QAction * actionAt ( const QPoint & p ) const
*/
HB_FUNC( QTOOLBAR_ACTIONAT2 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->actionAt ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


//[1]QAction * actionAt ( int x, int y ) const
//[2]QAction * actionAt ( const QPoint & p ) const

HB_FUNC( QTOOLBAR_ACTIONAT )
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
HB_FUNC( QTOOLBAR_ADDACTION1 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addAction ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * addAction ( const QString & text )
*/
HB_FUNC( QTOOLBAR_ADDACTION2 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QAction * ptr = obj->addAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC( QTOOLBAR_ADDACTION3 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QString par2 = hb_parc(2);
    QAction * ptr = obj->addAction ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC( QTOOLBAR_ADDACTION4 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    const QObject * par2 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par3 = hb_parc(3);
    QAction * ptr = obj->addAction ( par1, par2,  (const char *) par3 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC( QTOOLBAR_ADDACTION5 )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QString par2 = hb_parc(2);
    const QObject * par3 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    const char * par4 = hb_parc(4);
    QAction * ptr = obj->addAction ( par1, par2, par3,  (const char *) par4 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


//[1]void addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )
//[4]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[5]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )

HB_FUNC( QTOOLBAR_ADDACTION )
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
HB_FUNC( QTOOLBAR_ADDSEPARATOR )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addSeparator (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
QAction * addWidget ( QWidget * widget )
*/
HB_FUNC( QTOOLBAR_ADDWIDGET )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addWidget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
Qt::ToolBarAreas allowedAreas () const
*/
HB_FUNC( QTOOLBAR_ALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->allowedAreas (  );
    hb_retni( i );
  }
}


/*
void clear ()
*/
HB_FUNC( QTOOLBAR_CLEAR )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC( QTOOLBAR_ICONSIZE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC( QTOOLBAR_INSERTSEPARATOR )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->insertSeparator ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
QAction * insertWidget ( QAction * before, QWidget * widget )
*/
HB_FUNC( QTOOLBAR_INSERTWIDGET )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->insertWidget ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
bool isAreaAllowed ( Qt::ToolBarArea area ) const
*/
HB_FUNC( QTOOLBAR_ISAREAALLOWED )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isAreaAllowed (  (Qt::ToolBarArea) par1 );
    hb_retl( b );
  }
}


/*
bool isFloatable () const
*/
HB_FUNC( QTOOLBAR_ISFLOATABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFloatable (  );
    hb_retl( b );
  }
}


/*
bool isFloating () const
*/
HB_FUNC( QTOOLBAR_ISFLOATING )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFloating (  );
    hb_retl( b );
  }
}


/*
bool isMovable () const
*/
HB_FUNC( QTOOLBAR_ISMOVABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isMovable (  );
    hb_retl( b );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC( QTOOLBAR_ORIENTATION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->orientation (  );
    hb_retni( i );
  }
}


/*
void setAllowedAreas ( Qt::ToolBarAreas areas )
*/
HB_FUNC( QTOOLBAR_SETALLOWEDAREAS )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAllowedAreas (  (Qt::ToolBarAreas) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFloatable ( bool floatable )
*/
HB_FUNC( QTOOLBAR_SETFLOATABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFloatable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMovable ( bool movable )
*/
HB_FUNC( QTOOLBAR_SETMOVABLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setMovable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation orientation )
*/
HB_FUNC( QTOOLBAR_SETORIENTATION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (Qt::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAction * toggleViewAction () const
*/
HB_FUNC( QTOOLBAR_TOGGLEVIEWACTION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->toggleViewAction (  );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );  }
}


/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC( QTOOLBAR_TOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->toolButtonStyle (  );
    hb_retni( i );
  }
}


/*
QWidget * widgetForAction ( QAction * action ) const
*/
HB_FUNC( QTOOLBAR_WIDGETFORACTION )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par1 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->widgetForAction ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC( QTOOLBAR_SETICONSIZE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC( QTOOLBAR_SETTOOLBUTTONSTYLE )
{
  QToolBar * obj = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setToolButtonStyle (  (Qt::ToolButtonStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




