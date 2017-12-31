$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QWorkspace INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD activeWindow
   METHOD addWindow
   METHOD background
   METHOD scrollBarsEnabled
   METHOD setBackground
   METHOD setScrollBarsEnabled
   METHOD windowList
   METHOD sizeHint
   METHOD activateNextWindow
   METHOD activatePreviousWindow
   METHOD arrangeIcons
   METHOD cascade
   METHOD closeActiveWindow
   METHOD closeAllWindows
   METHOD setActiveWindow
   METHOD tile

   METHOD onWindowActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWorkspace>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QWorkspace ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QWidget * activeWindow () const
$method=|QWidget *|activeWindow|

$prototype=QWidget * addWindow ( QWidget * w, Qt::WindowFlags flags = 0 )
$method=|QWidget *|addWindow|QWidget *,Qt::WindowFlags=0

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=bool scrollBarsEnabled () const
$method=|bool|scrollBarsEnabled|

$prototype=void setBackground ( const QBrush & background )
$method=|void|setBackground|const QBrush &

$prototype=void setScrollBarsEnabled ( bool enable )
$method=|void|setScrollBarsEnabled|bool

$prototype=QWidgetList windowList ( WindowOrder order = CreationOrder ) const
HB_FUNC_STATIC( QWORKSPACE_WINDOWLIST )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QWorkspace::CreationOrder : hb_parni(1);
    QWidgetList list = obj->windowList ( (QWorkspace::WindowOrder) par1 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWIDGET" );
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
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void activateNextWindow ()
$method=|void|activateNextWindow|

$prototype=void activatePreviousWindow ()
$method=|void|activatePreviousWindow|

$prototype=void arrangeIcons ()
$method=|void|arrangeIcons|

$prototype=void cascade ()
$method=|void|cascade|

$prototype=void closeActiveWindow ()
$method=|void|closeActiveWindow|

$prototype=void closeAllWindows ()
$method=|void|closeAllWindows|

$prototype=void setActiveWindow ( QWidget * w )
$method=|void|setActiveWindow|QWidget *

$prototype=void tile ()
$method=|void|tile|

#pragma ENDDUMP
