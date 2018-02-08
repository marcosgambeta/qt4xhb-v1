%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMDISUBWINDOW
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QMdiArea INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD activationOrder
   METHOD activeSubWindow
   METHOD addSubWindow
   METHOD background
   METHOD currentSubWindow
   METHOD documentMode
   METHOD removeSubWindow
   METHOD setActivationOrder
   METHOD setBackground
   METHOD setDocumentMode
   METHOD setOption
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setViewMode
   METHOD subWindowList
   METHOD tabPosition
   METHOD tabShape
   METHOD testOption
   METHOD viewMode
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD activateNextSubWindow
   METHOD activatePreviousSubWindow
   METHOD cascadeSubWindows
   METHOD closeActiveSubWindow
   METHOD closeAllSubWindows
   METHOD setActiveSubWindow
   METHOD tileSubWindows

   METHOD onSubWindowActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMdiArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QMdiSubWindow>

$prototype=QMdiArea ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=WindowOrder activationOrder () const
$method=|QMdiArea::WindowOrder|activationOrder|

$prototype=QMdiSubWindow * activeSubWindow () const
$method=|QMdiSubWindow *|activeSubWindow|

$prototype=QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
$method=|QMdiSubWindow *|addSubWindow|QWidget *,Qt::WindowFlags=0

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=QMdiSubWindow * currentSubWindow () const
$method=|QMdiSubWindow *|currentSubWindow|

$prototype=bool documentMode () const
$method=|bool|documentMode|

$prototype=void removeSubWindow ( QWidget * widget )
$method=|void|removeSubWindow|QWidget *

$prototype=void setActivationOrder ( WindowOrder order )
$method=|void|setActivationOrder|QMdiArea::WindowOrder

$prototype=void setBackground ( const QBrush & background )
$method=|void|setBackground|const QBrush &

$prototype=void setDocumentMode ( bool enabled )
$method=|void|setDocumentMode|bool

$prototype=void setOption ( AreaOption option, bool on = true )
$method=|void|setOption|QMdiArea::AreaOption,bool=true

$prototype=void setTabPosition ( QTabWidget::TabPosition position )
$method=|void|setTabPosition|QTabWidget::TabPosition

$prototype=void setTabShape ( QTabWidget::TabShape shape )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QMdiArea::ViewMode

$prototype=QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
HB_FUNC_STATIC( QMDIAREA_SUBWINDOWLIST )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QMdiArea::CreationOrder : hb_parni(1);
    QList<QMdiSubWindow *> list = obj->subWindowList ( (QMdiArea::WindowOrder) par1 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMDISUBWINDOW" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QMdiSubWindow *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QTabWidget::TabPosition tabPosition () const
$method=|QTabWidget::TabPosition|tabPosition|

$prototype=QTabWidget::TabShape tabShape () const
$method=|QTabWidget::TabShape|tabShape|

$prototype=bool testOption ( AreaOption option ) const
$method=|bool|testOption|QMdiArea::AreaOption

$prototype=ViewMode viewMode () const
$method=|QMdiArea::ViewMode|viewMode|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void activateNextSubWindow ()
$method=|void|activateNextSubWindow|

$prototype=void activatePreviousSubWindow ()
$method=|void|activatePreviousSubWindow|

$prototype=void cascadeSubWindows ()
$method=|void|cascadeSubWindows|

$prototype=void closeActiveSubWindow ()
$method=|void|closeActiveSubWindow|

$prototype=void closeAllSubWindows ()
$method=|void|closeAllSubWindows|

$prototype=void setActiveSubWindow ( QMdiSubWindow * window )
$method=|void|setActiveSubWindow|QMdiSubWindow *

$prototype=void tileSubWindows ()
$method=|void|tileSubWindows|

#pragma ENDDUMP
