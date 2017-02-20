/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTOOLBAR
REQUEST QWIDGET
REQUEST QMENU
REQUEST QSIZE
REQUEST QMENUBAR
REQUEST QBYTEARRAY
REQUEST QSTATUSBAR
REQUEST QDOCKWIDGET

CLASS QMainWindow INHERIT QWidget

   DATA class_id INIT Class_Id_QMainWindow
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addDockWidget1
   METHOD addDockWidget2
   METHOD addDockWidget
   METHOD addToolBar1
   METHOD addToolBar2
   METHOD addToolBar3
   METHOD addToolBar
   METHOD addToolBarBreak
   METHOD centralWidget
   METHOD corner
   METHOD createPopupMenu
   METHOD dockOptions
   METHOD dockWidgetArea
   METHOD documentMode
   METHOD iconSize
   METHOD insertToolBar
   METHOD insertToolBarBreak
   METHOD isAnimated
   METHOD isDockNestingEnabled
   METHOD menuBar
   METHOD menuWidget
   METHOD removeDockWidget
   METHOD removeToolBar
   METHOD removeToolBarBreak
   METHOD restoreDockWidget
   METHOD restoreState
   METHOD saveState
   METHOD setCentralWidget
   METHOD setCorner
   METHOD setDockOptions
   METHOD setDocumentMode
   METHOD setIconSize
   METHOD setMenuBar
   METHOD setMenuWidget
   METHOD setStatusBar
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setToolButtonStyle
   METHOD splitDockWidget
   METHOD statusBar
   METHOD tabPosition
   METHOD tabShape
   METHOD tabifiedDockWidgets
   METHOD tabifyDockWidget
   METHOD toolBarArea
   METHOD toolBarBreak
   METHOD toolButtonStyle
   METHOD setAnimated
   METHOD setDockNestingEnabled
   METHOD onIconSizeChanged
   METHOD onToolButtonStyleChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMainWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMainWindow>

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
QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_NEW )
{
  QMainWindow * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QMainWindow ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMainWindow *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QMAINWINDOW_DELETE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET1 )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDockWidget * par2 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addDockWidget (  (Qt::DockWidgetArea) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET2 )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDockWidget * par2 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    obj->addDockWidget (  (Qt::DockWidgetArea) par1, par2,  (Qt::Orientation) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
//[2]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    HB_FUNC_EXEC( QMAINWINDOW_ADDDOCKWIDGET1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QMAINWINDOW_ADDDOCKWIDGET2 );
  }
}

/*
void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR1 )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QToolBar * par2 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addToolBar (  (Qt::ToolBarArea) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addToolBar ( QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR2 )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addToolBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QToolBar * addToolBar ( const QString & title )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR3 )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QToolBar * ptr = obj->addToolBar ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QTOOLBAR" );
  }
}


//[1]void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
//[2]void addToolBar ( QToolBar * toolbar )
//[3]QToolBar * addToolBar ( const QString & title )

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQTOOLBAR(2) )
  {
    HB_FUNC_EXEC( QMAINWINDOW_ADDTOOLBAR1 );
  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    HB_FUNC_EXEC( QMAINWINDOW_ADDTOOLBAR2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMAINWINDOW_ADDTOOLBAR3 );
  }
}

/*
void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TopToolBarArea : hb_parni(1);
    obj->addToolBarBreak (  (Qt::ToolBarArea) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * centralWidget () const
*/
HB_FUNC_STATIC( QMAINWINDOW_CENTRALWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->centralWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
Qt::DockWidgetArea corner ( Qt::Corner corner ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_CORNER )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( (int) obj->corner (  (Qt::Corner) par1 ) );
  }
}


/*
virtual QMenu * createPopupMenu ()
*/
HB_FUNC_STATIC( QMAINWINDOW_CREATEPOPUPMENU )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createPopupMenu (  );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
DockOptions dockOptions () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->dockOptions (  ) );
  }
}


/*
Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKWIDGETAREA )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDockWidget * par1 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->dockWidgetArea ( par1 ) );
  }
}


/*
bool documentMode () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCUMENTMODE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->documentMode (  ) );
  }
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ICONSIZE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void insertToolBar ( QToolBar * before, QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QToolBar * par2 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertToolBar ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertToolBarBreak ( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertToolBarBreak ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISANIMATED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isAnimated (  ) );
  }
}


/*
bool isDockNestingEnabled () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISDOCKNESTINGENABLED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDockNestingEnabled (  ) );
  }
}


/*
QMenuBar * menuBar () const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenuBar * ptr = obj->menuBar (  );
    _qt4xhb_createReturnClass ( ptr, "QMENUBAR" );
  }
}


/*
QWidget * menuWidget () const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->menuWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void removeDockWidget ( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVEDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDockWidget * par1 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeDockWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeToolBar ( QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeToolBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeToolBarBreak ( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeToolBarBreak ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool restoreDockWidget ( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTOREDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDockWidget * par1 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->restoreDockWidget ( par1 ) );
  }
}


/*
bool restoreState ( const QByteArray & state, int version = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTORESTATE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    hb_retl( obj->restoreState ( *par1, par2 ) );
  }
}


/*
QByteArray saveState ( int version = 0 ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SAVESTATE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 0 : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->saveState ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setCentralWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCENTRALWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCentralWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCORNER )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setCorner (  (Qt::Corner) par1,  (Qt::DockWidgetArea) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDockOptions ( DockOptions options )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDockOptions (  (QMainWindow::DockOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocumentMode ( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCUMENTMODE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDocumentMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETICONSIZE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMenuBar ( QMenuBar * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenuBar * par1 = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMenuBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMenuWidget ( QWidget * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMenuWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStatusBar ( QStatusBar * statusbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETSTATUSBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStatusBar * par1 = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStatusBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABPOSITION )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setTabPosition (  (Qt::DockWidgetAreas) par1,  (QTabWidget::TabPosition) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabShape ( QTabWidget::TabShape tabShape )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABSHAPE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabShape (  (QTabWidget::TabShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTOOLBUTTONSTYLE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setToolButtonStyle (  (Qt::ToolButtonStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QMAINWINDOW_SPLITDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDockWidget * par1 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDockWidget * par2 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    obj->splitDockWidget ( par1, par2,  (Qt::Orientation) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStatusBar * statusBar () const
*/
HB_FUNC_STATIC( QMAINWINDOW_STATUSBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStatusBar * ptr = obj->statusBar (  );
    _qt4xhb_createReturnClass ( ptr, "QSTATUSBAR" );
  }
}


/*
QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABPOSITION )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( (int) obj->tabPosition (  (Qt::DockWidgetArea) par1 ) );
  }
}


/*
QTabWidget::TabShape tabShape () const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABSHAPE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->tabShape (  ) );
  }
}


/*
QList<QDockWidget *> tabifiedDockWidgets ( QDockWidget * dockwidget ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABIFIEDDOCKWIDGETS )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDockWidget * par1 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QDockWidget *> list = obj->tabifiedDockWidgets ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDOCKWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QDOCKWIDGET" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QDockWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void tabifyDockWidget ( QDockWidget * first, QDockWidget * second )
*/
HB_FUNC_STATIC( QMAINWINDOW_TABIFYDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDockWidget * par1 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QDockWidget * par2 = (QDockWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->tabifyDockWidget ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARAREA )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->toolBarArea ( par1 ) );
  }
}


/*
bool toolBarBreak ( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QToolBar * par1 = (QToolBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->toolBarBreak ( par1 ) );
  }
}


/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBUTTONSTYLE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->toolButtonStyle (  ) );
  }
}



/*
void setAnimated ( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETANIMATED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAnimated ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDockNestingEnabled ( bool enabled ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKNESTINGENABLED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDockNestingEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
