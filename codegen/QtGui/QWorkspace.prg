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

/*
QWorkspace ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWORKSPACE_NEW )
{
  QWorkspace * o = new QWorkspace ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QWidget * activeWindow () const
*/
HB_FUNC_STATIC( QWORKSPACE_ACTIVEWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->activeWindow ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * addWindow ( QWidget * w, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QWORKSPACE_ADDWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QWidget * ptr = obj->addWindow ( PQWIDGET(1), (Qt::WindowFlags) par2 );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QBrush background () const
*/
HB_FUNC_STATIC( QWORKSPACE_BACKGROUND )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
bool scrollBarsEnabled () const
*/
$method=|bool|scrollBarsEnabled|

/*
void setBackground ( const QBrush & background )
*/
HB_FUNC_STATIC( QWORKSPACE_SETBACKGROUND )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackground ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScrollBarsEnabled ( bool enable )
*/
$method=|void|setScrollBarsEnabled|bool

/*
QWidgetList windowList ( WindowOrder order = CreationOrder ) const
*/
HB_FUNC_STATIC( QWORKSPACE_WINDOWLIST )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QWorkspace::CreationOrder : hb_parni(1);
    QWidgetList list = obj->windowList ( (QWorkspace::WindowOrder) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
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

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void activateNextWindow ()
*/
$method=|void|activateNextWindow|

/*
void activatePreviousWindow ()
*/
$method=|void|activatePreviousWindow|

/*
void arrangeIcons ()
*/
$method=|void|arrangeIcons|

/*
void cascade ()
*/
$method=|void|cascade|

/*
void closeActiveWindow ()
*/
$method=|void|closeActiveWindow|

/*
void closeAllWindows ()
*/
$method=|void|closeAllWindows|

/*
void setActiveWindow ( QWidget * w )
*/
$method=|void|setActiveWindow|QWidget *

/*
void tile ()
*/
$method=|void|tile|

#pragma ENDDUMP
