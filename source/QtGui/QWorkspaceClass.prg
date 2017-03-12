/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QWorkspace INHERIT QWidget

   DATA class_id INIT Class_Id_QWorkspace
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QWorkspace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWorkspace>

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
QWorkspace ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWORKSPACE_NEW )
{
  QWorkspace * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QWorkspace ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWorkspace *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QWORKSPACE_DELETE )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWidget * activeWindow () const
*/
HB_FUNC_STATIC( QWORKSPACE_ACTIVEWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->activeWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
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
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QWidget * ptr = obj->addWindow ( par1,  (Qt::WindowFlags) par2 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
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
    QBrush * ptr = new QBrush( obj->background (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
bool scrollBarsEnabled () const
*/
HB_FUNC_STATIC( QWORKSPACE_SCROLLBARSENABLED )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->scrollBarsEnabled (  ) );
  }
}


/*
void setBackground ( const QBrush & background )
*/
HB_FUNC_STATIC( QWORKSPACE_SETBACKGROUND )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScrollBarsEnabled ( bool enable )
*/
HB_FUNC_STATIC( QWORKSPACE_SETSCROLLBARSENABLED )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScrollBarsEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidgetList windowList ( WindowOrder order = CreationOrder ) const
*/
HB_FUNC_STATIC( QWORKSPACE_WINDOWLIST )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QWorkspace::CreationOrder : hb_parni(1);
    QWidgetList list = obj->windowList (  (QWorkspace::WindowOrder) par1 );
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


// Reimplemented Public Functions

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWORKSPACE_SIZEHINT )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


// Public Slots

/*
void activateNextWindow ()
*/
HB_FUNC_STATIC( QWORKSPACE_ACTIVATENEXTWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->activateNextWindow (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void activatePreviousWindow ()
*/
HB_FUNC_STATIC( QWORKSPACE_ACTIVATEPREVIOUSWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->activatePreviousWindow (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void arrangeIcons ()
*/
HB_FUNC_STATIC( QWORKSPACE_ARRANGEICONS )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->arrangeIcons (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cascade ()
*/
HB_FUNC_STATIC( QWORKSPACE_CASCADE )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cascade (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closeActiveWindow ()
*/
HB_FUNC_STATIC( QWORKSPACE_CLOSEACTIVEWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeActiveWindow (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closeAllWindows ()
*/
HB_FUNC_STATIC( QWORKSPACE_CLOSEALLWINDOWS )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeAllWindows (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActiveWindow ( QWidget * w )
*/
HB_FUNC_STATIC( QWORKSPACE_SETACTIVEWINDOW )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActiveWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void tile ()
*/
HB_FUNC_STATIC( QWORKSPACE_TILE )
{
  QWorkspace * obj = (QWorkspace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->tile (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
