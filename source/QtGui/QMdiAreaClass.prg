/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMDISUBWINDOW
REQUEST QBRUSH
REQUEST QSIZE
#endif

CLASS QMdiArea INHERIT QAbstractScrollArea

   DATA class_id INIT Class_Id_QMdiArea
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QMdiArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMdiArea>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QMdiArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMDIAREA_NEW )
{
  QMdiArea * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QMdiArea ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMdiArea *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QMDIAREA_DELETE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
WindowOrder activationOrder () const
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVATIONORDER )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->activationOrder (  ) );
  }
}


/*
QMdiSubWindow * activeSubWindow () const
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMdiSubWindow * ptr = obj->activeSubWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QMDISUBWINDOW" );
  }
}


/*
QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
*/
HB_FUNC_STATIC( QMDIAREA_ADDSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QMdiSubWindow * ptr = obj->addSubWindow ( par1,  (Qt::WindowFlags) par2 );
    _qt4xhb_createReturnClass ( ptr, "QMDISUBWINDOW" );
  }
}


/*
QBrush background () const
*/
HB_FUNC_STATIC( QMDIAREA_BACKGROUND )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
QMdiSubWindow * currentSubWindow () const
*/
HB_FUNC_STATIC( QMDIAREA_CURRENTSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMdiSubWindow * ptr = obj->currentSubWindow (  );
    _qt4xhb_createReturnClass ( ptr, "QMDISUBWINDOW" );
  }
}


/*
bool documentMode () const
*/
HB_FUNC_STATIC( QMDIAREA_DOCUMENTMODE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->documentMode (  ) );
  }
}


/*
void removeSubWindow ( QWidget * widget )
*/
HB_FUNC_STATIC( QMDIAREA_REMOVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeSubWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActivationOrder ( WindowOrder order )
*/
HB_FUNC_STATIC( QMDIAREA_SETACTIVATIONORDER )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setActivationOrder (  (QMdiArea::WindowOrder) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBackground ( const QBrush & background )
*/
HB_FUNC_STATIC( QMDIAREA_SETBACKGROUND )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocumentMode ( bool enabled )
*/
HB_FUNC_STATIC( QMDIAREA_SETDOCUMENTMODE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDocumentMode ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( AreaOption option, bool on = true )
*/
HB_FUNC_STATIC( QMDIAREA_SETOPTION )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QMdiArea::AreaOption) par1, ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabPosition ( QTabWidget::TabPosition position )
*/
HB_FUNC_STATIC( QMDIAREA_SETTABPOSITION )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabPosition (  (QTabWidget::TabPosition) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabShape ( QTabWidget::TabShape shape )
*/
HB_FUNC_STATIC( QMDIAREA_SETTABSHAPE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabShape (  (QTabWidget::TabShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewMode ( ViewMode mode )
*/
HB_FUNC_STATIC( QMDIAREA_SETVIEWMODE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setViewMode (  (QMdiArea::ViewMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
*/
HB_FUNC_STATIC( QMDIAREA_SUBWINDOWLIST )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QMdiArea::CreationOrder : hb_parni(1);
    QList<QMdiSubWindow *> list = obj->subWindowList (  (QMdiArea::WindowOrder) par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMDISUBWINDOW" );
    #else
    pDynSym = hb_dynsymFindName( "QMDISUBWINDOW" );
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


/*
QTabWidget::TabPosition tabPosition () const
*/
HB_FUNC_STATIC( QMDIAREA_TABPOSITION )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->tabPosition (  ) );
  }
}


/*
QTabWidget::TabShape tabShape () const
*/
HB_FUNC_STATIC( QMDIAREA_TABSHAPE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->tabShape (  ) );
  }
}


/*
bool testOption ( AreaOption option ) const
*/
HB_FUNC_STATIC( QMDIAREA_TESTOPTION )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QMdiArea::AreaOption) par1 ) );
  }
}


/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QMDIAREA_VIEWMODE )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->viewMode (  ) );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMDIAREA_MINIMUMSIZEHINT )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMDIAREA_SIZEHINT )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void activateNextSubWindow ()
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVATENEXTSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->activateNextSubWindow (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void activatePreviousSubWindow ()
*/
HB_FUNC_STATIC( QMDIAREA_ACTIVATEPREVIOUSSUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->activatePreviousSubWindow (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cascadeSubWindows ()
*/
HB_FUNC_STATIC( QMDIAREA_CASCADESUBWINDOWS )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cascadeSubWindows (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closeActiveSubWindow ()
*/
HB_FUNC_STATIC( QMDIAREA_CLOSEACTIVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeActiveSubWindow (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closeAllSubWindows ()
*/
HB_FUNC_STATIC( QMDIAREA_CLOSEALLSUBWINDOWS )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeAllSubWindows (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setActiveSubWindow ( QMdiSubWindow * window )
*/
HB_FUNC_STATIC( QMDIAREA_SETACTIVESUBWINDOW )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMdiSubWindow * par1 = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActiveSubWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void tileSubWindows ()
*/
HB_FUNC_STATIC( QMDIAREA_TILESUBWINDOWS )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->tileSubWindows (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
