$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTOOLBAR
REQUEST QWIDGET
REQUEST QMENU
REQUEST QSIZE
REQUEST QMENUBAR
REQUEST QBYTEARRAY
REQUEST QSTATUSBAR
REQUEST QDOCKWIDGET
#endif

CLASS QMainWindow INHERIT QWidget

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

$destructor

#pragma BEGINDUMP

#include <QMainWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QMainWindow * o = new QMainWindow ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
*/
$method=|void|addDockWidget,addDockWidget1|Qt::DockWidgetArea,QDockWidget *

/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/
$method=|void|addDockWidget,addDockWidget2|Qt::DockWidgetArea,QDockWidget *,Qt::Orientation

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
*/
$method=|void|addToolBar,addToolBar1|Qt::ToolBarArea,QToolBar *

/*
void addToolBar ( QToolBar * toolbar )
*/
$method=|void|addToolBar,addToolBar2|QToolBar *

/*
QToolBar * addToolBar ( const QString & title )
*/
$method=|QToolBar *|addToolBar,addToolBar3|const QString &

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
*/
$method=|void|addToolBarBreak|Qt::ToolBarArea=Qt::TopToolBarArea

/*
QWidget * centralWidget () const
*/
$method=|QWidget *|centralWidget|

/*
Qt::DockWidgetArea corner ( Qt::Corner corner ) const
*/
$method=|Qt::DockWidgetArea|corner|Qt::Corner

/*
virtual QMenu * createPopupMenu ()
*/
$virtualMethod=|QMenu *|createPopupMenu|

/*
DockOptions dockOptions () const
*/
$method=|QMainWindow::DockOptions|dockOptions|

/*
Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
*/
$method=|Qt::DockWidgetArea|dockWidgetArea|QDockWidget *

/*
bool documentMode () const
*/
$method=|bool|documentMode|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
void insertToolBar ( QToolBar * before, QToolBar * toolbar )
*/
$method=|void|insertToolBar|QToolBar *,QToolBar *

/*
void insertToolBarBreak ( QToolBar * before )
*/
$method=|void|insertToolBarBreak|QToolBar *

/*
bool isAnimated () const
*/
$method=|bool|isAnimated|

/*
bool isDockNestingEnabled () const
*/
$method=|bool|isDockNestingEnabled|

/*
QMenuBar * menuBar () const
*/
$method=|QMenuBar *|menuBar|

/*
QWidget * menuWidget () const
*/
$method=|QWidget *|menuWidget|

/*
void removeDockWidget ( QDockWidget * dockwidget )
*/
$method=|void|removeDockWidget|QDockWidget *

/*
void removeToolBar ( QToolBar * toolbar )
*/
$method=|void|removeToolBar|QToolBar *

/*
void removeToolBarBreak ( QToolBar * before )
*/
$method=|void|removeToolBarBreak|QToolBar *

/*
bool restoreDockWidget ( QDockWidget * dockwidget )
*/
$method=|bool|restoreDockWidget|QDockWidget *

/*
bool restoreState ( const QByteArray & state, int version = 0 )
*/
$method=|bool|restoreState|const QByteArray &,int=0

/*
QByteArray saveState ( int version = 0 ) const
*/
$method=|QByteArray|saveState|int=0

/*
void setCentralWidget ( QWidget * widget )
*/
$method=|void|setCentralWidget|QWidget *

/*
void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
*/
$method=|void|setCorner|Qt::Corner,Qt::DockWidgetArea

/*
void setDockOptions ( DockOptions options )
*/
$method=|void|setDockOptions|QMainWindow::DockOptions

/*
void setDocumentMode ( bool enabled )
*/
$method=|void|setDocumentMode|bool

/*
void setIconSize ( const QSize & iconSize )
*/
$method=|void|setIconSize|const QSize &

/*
void setMenuBar ( QMenuBar * menuBar )
*/
$method=|void|setMenuBar|QMenuBar *

/*
void setMenuWidget ( QWidget * menuBar )
*/
$method=|void|setMenuWidget|QWidget *

/*
void setStatusBar ( QStatusBar * statusbar )
*/
$method=|void|setStatusBar|QStatusBar *

/*
void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
*/
$method=|void|setTabPosition|Qt::DockWidgetAreas,QTabWidget::TabPosition

/*
void setTabShape ( QTabWidget::TabShape tabShape )
*/
$method=|void|setTabShape|QTabWidget::TabShape

/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

/*
void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
*/
$method=|void|splitDockWidget|QDockWidget *,QDockWidget *,Qt::Orientation

/*
QStatusBar * statusBar () const
*/
$method=|QStatusBar *|statusBar|

/*
QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
*/
$method=|QTabWidget::TabPosition|tabPosition|Qt::DockWidgetArea

/*
QTabWidget::TabShape tabShape () const
*/
$method=|QTabWidget::TabShape|tabShape|

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
$method=|void|tabifyDockWidget|QDockWidget *,QDockWidget *

/*
Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
*/
$method=|Qt::ToolBarArea|toolBarArea|QToolBar *

/*
bool toolBarBreak ( QToolBar * toolbar ) const
*/
$method=|bool|toolBarBreak|QToolBar *

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
$method=|Qt::ToolButtonStyle|toolButtonStyle|

/*
void setAnimated ( bool enabled )
*/
$method=|void|setAnimated|bool

/*
void setDockNestingEnabled ( bool enabled ) const
*/
$method=|void|setDockNestingEnabled|bool

#pragma ENDDUMP
