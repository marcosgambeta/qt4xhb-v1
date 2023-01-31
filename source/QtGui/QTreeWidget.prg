/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
#endif

CLASS QTreeWidget INHERIT QTreeView

   METHOD new
   METHOD delete
   METHOD addTopLevelItem
   METHOD addTopLevelItems
   METHOD closePersistentEditor
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD editItem
   METHOD findItems
   METHOD headerItem
   METHOD indexOfTopLevelItem
   METHOD insertTopLevelItem
   METHOD insertTopLevelItems
   METHOD invisibleRootItem
   METHOD isFirstItemColumnSpanned
   METHOD itemAbove
   METHOD itemAt
   METHOD itemBelow
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD selectedItems
   METHOD setColumnCount
   METHOD setCurrentItem
   METHOD setFirstItemColumnSpanned
   METHOD setHeaderItem
   METHOD setHeaderLabel
   METHOD setHeaderLabels
   METHOD setItemWidget
   METHOD sortColumn
   METHOD sortItems
   METHOD takeTopLevelItem
   METHOD topLevelItem
   METHOD topLevelItemCount
   METHOD visualItemRect
   METHOD setSelectionModel
   METHOD clear
   METHOD collapseItem
   METHOD expandItem
   METHOD scrollToItem

   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemCollapsed
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemExpanded
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTreeWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTreeWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QTreeWidget( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    QTreeWidget * obj = new QTreeWidget( OPQWIDGET( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTREEWIDGET_DELETE )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addTopLevelItem( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_ADDTOPLEVELITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->addTopLevelItem( PQTREEWIDGETITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addTopLevelItems( const QList<QTreeWidgetItem *> & items )
*/
HB_FUNC_STATIC( QTREEWIDGET_ADDTOPLEVELITEMS )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QTreeWidgetItem *> par1;
      PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << static_cast<QTreeWidgetItem*>( hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) ) );
      }
      obj->addTopLevelItems( par1 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void closePersistentEditor( QTreeWidgetItem * item, int column = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_CLOSEPERSISTENTEDITOR )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQTREEWIDGETITEM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->closePersistentEditor( PQTREEWIDGETITEM(1), OPINT( 2, 0 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QTREEWIDGET_COLUMNCOUNT )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int currentColumn() const
*/
HB_FUNC_STATIC( QTREEWIDGET_CURRENTCOLUMN )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentColumn() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTreeWidgetItem * currentItem() const
*/
HB_FUNC_STATIC( QTREEWIDGET_CURRENTITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTreeWidgetItem * ptr = obj->currentItem();
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void editItem( QTreeWidgetItem * item, int column = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_EDITITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQTREEWIDGETITEM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->editItem( PQTREEWIDGETITEM(1), OPINT( 2, 0 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<QTreeWidgetItem *> findItems( const QString & text, Qt::MatchFlags flags, int column = 0 ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_FINDITEMS )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      QList<QTreeWidgetItem *> list = obj->findItems( PQSTRING(1), ( Qt::MatchFlags ) hb_parni(2), OPINT( 3, 0 ) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QTREEWIDGETITEM");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, static_cast<QTreeWidgetItem*>( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QTREEWIDGETITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTreeWidgetItem * headerItem() const
*/
HB_FUNC_STATIC( QTREEWIDGET_HEADERITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTreeWidgetItem * ptr = obj->headerItem();
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int indexOfTopLevelItem( QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_INDEXOFTOPLEVELITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      RINT( obj->indexOfTopLevelItem( PQTREEWIDGETITEM(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void insertTopLevelItem( int index, QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_INSERTTOPLEVELITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQTREEWIDGETITEM(2) )
    {
#endif
      obj->insertTopLevelItem( PINT(1), PQTREEWIDGETITEM(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void insertTopLevelItems( int index, const QList<QTreeWidgetItem *> & items )
*/
HB_FUNC_STATIC( QTREEWIDGET_INSERTTOPLEVELITEMS )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISARRAY(2) )
    {
#endif
      QList<QTreeWidgetItem *> par2;
      PHB_ITEM aList2 = hb_param( 2, HB_IT_ARRAY );
      int nLen2 = hb_arrayLen( aList2 );
      for( int i2 = 0; i2 < nLen2; i2++ )
      {
        par2 << static_cast<QTreeWidgetItem*>( hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) ) );
      }
      obj->insertTopLevelItems( PINT(1), par2 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QTreeWidgetItem * invisibleRootItem() const
*/
HB_FUNC_STATIC( QTREEWIDGET_INVISIBLEROOTITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTreeWidgetItem * ptr = obj->invisibleRootItem();
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isFirstItemColumnSpanned( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ISFIRSTITEMCOLUMNSPANNED )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      RBOOL( obj->isFirstItemColumnSpanned( PQTREEWIDGETITEM(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTreeWidgetItem * itemAbove( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMABOVE )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->itemAbove( PQTREEWIDGETITEM(1) );
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTREEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    QTreeWidgetItem * itemAt( const QPoint & p ) const
    */
    QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QTreeWidgetItem * ptr = obj->itemAt( *PQPOINT(1) );
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
    }
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QTreeWidgetItem * itemAt( int x, int y ) const
    */
    QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QTreeWidgetItem * ptr = obj->itemAt( PINT(1), PINT(2) );
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTreeWidgetItem * itemBelow( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMBELOW )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->itemBelow( PQTREEWIDGETITEM(1) );
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QWidget * itemWidget( QTreeWidgetItem * item, int column ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_ITEMWIDGET )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && HB_ISNUM(2) )
    {
#endif
      QWidget * ptr = obj->itemWidget( PQTREEWIDGETITEM(1), PINT(2) );
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void openPersistentEditor( QTreeWidgetItem * item, int column = 0 )
*/
HB_FUNC_STATIC( QTREEWIDGET_OPENPERSISTENTEDITOR )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQTREEWIDGETITEM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->openPersistentEditor( PQTREEWIDGETITEM(1), OPINT( 2, 0 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void removeItemWidget( QTreeWidgetItem * item, int column )
*/
HB_FUNC_STATIC( QTREEWIDGET_REMOVEITEMWIDGET )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && HB_ISNUM(2) )
    {
#endif
      obj->removeItemWidget( PQTREEWIDGETITEM(1), PINT(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<QTreeWidgetItem *> selectedItems() const
*/
HB_FUNC_STATIC( QTREEWIDGET_SELECTEDITEMS )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QTreeWidgetItem *> list = obj->selectedItems();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QTREEWIDGETITEM");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, static_cast<QTreeWidgetItem*>( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QTREEWIDGETITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setColumnCount( int columns )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETCOLUMNCOUNT )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setColumnCount( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    /*
    void setCurrentItem( QTreeWidgetItem * item )
    */
    QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->setCurrentItem( PQTREEWIDGETITEM(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && HB_ISNUM(2) )
  {
    /*
    void setCurrentItem( QTreeWidgetItem * item, int column )
    */
    QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->setCurrentItem( PQTREEWIDGETITEM(1), PINT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    void setCurrentItem( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
    */
    QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->setCurrentItem( PQTREEWIDGETITEM(1), PINT(2), ( QItemSelectionModel::SelectionFlags ) hb_parni(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setFirstItemColumnSpanned( const QTreeWidgetItem * item, bool span )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETFIRSTITEMCOLUMNSPANNED )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && HB_ISLOG(2) )
    {
#endif
      obj->setFirstItemColumnSpanned( PQTREEWIDGETITEM(1), PBOOL(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHeaderItem( QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETHEADERITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->setHeaderItem( PQTREEWIDGETITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHeaderLabel( const QString & label )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETHEADERLABEL )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setHeaderLabel( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHeaderLabels( const QStringList & labels )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETHEADERLABELS )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setHeaderLabels( PQSTRINGLIST(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setItemWidget( QTreeWidgetItem * item, int column, QWidget * widget )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETITEMWIDGET )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && HB_ISNUM(2) && ISQWIDGET(3) )
    {
#endif
      obj->setItemWidget( PQTREEWIDGETITEM(1), PINT(2), PQWIDGET(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int sortColumn() const
*/
HB_FUNC_STATIC( QTREEWIDGET_SORTCOLUMN )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sortColumn() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void sortItems( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTREEWIDGET_SORTITEMS )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->sortItems( PINT(1), ( Qt::SortOrder ) hb_parni(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QTreeWidgetItem * takeTopLevelItem( int index )
*/
HB_FUNC_STATIC( QTREEWIDGET_TAKETOPLEVELITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->takeTopLevelItem( PINT(1) );
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTreeWidgetItem * topLevelItem( int index ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_TOPLEVELITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QTreeWidgetItem * ptr = obj->topLevelItem( PINT(1) );
      Qt4xHb::createReturnClass(ptr, "QTREEWIDGETITEM", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int topLevelItemCount() const
*/
HB_FUNC_STATIC( QTREEWIDGET_TOPLEVELITEMCOUNT )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->topLevelItemCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QRect visualItemRect( const QTreeWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTREEWIDGET_VISUALITEMRECT )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->visualItemRect( PQTREEWIDGETITEM(1) ) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setSelectionModel( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTREEWIDGET_SETSELECTIONMODEL )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMSELECTIONMODEL(1) )
    {
#endif
      obj->setSelectionModel( PQITEMSELECTIONMODEL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clear()
*/
HB_FUNC_STATIC( QTREEWIDGET_CLEAR )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void collapseItem( const QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_COLLAPSEITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->collapseItem( PQTREEWIDGETITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void expandItem( const QTreeWidgetItem * item )
*/
HB_FUNC_STATIC( QTREEWIDGET_EXPANDITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
    {
#endif
      obj->expandItem( PQTREEWIDGETITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void scrollToItem( const QTreeWidgetItem * item, QAbstractItemView::ScrollHint hint = QAbstractItemView::EnsureVisible )
*/
HB_FUNC_STATIC( QTREEWIDGET_SCROLLTOITEM )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQTREEWIDGETITEM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->scrollToItem( PQTREEWIDGETITEM(1), HB_ISNIL(2) ? ( QAbstractItemView::ScrollHint ) QAbstractItemView::EnsureVisible : ( QAbstractItemView::ScrollHint ) hb_parni(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QTreeWidgetSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QTREEWIDGET_ONCURRENTITEMCHANGED )
{
  QTreeWidgetSlots_connect_signal("currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)", "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMACTIVATED )
{
  QTreeWidgetSlots_connect_signal("itemActivated(QTreeWidgetItem*,int)", "itemActivated(QTreeWidgetItem*,int)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMCHANGED )
{
  QTreeWidgetSlots_connect_signal("itemChanged(QTreeWidgetItem*,int)", "itemChanged(QTreeWidgetItem*,int)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMCLICKED )
{
  QTreeWidgetSlots_connect_signal("itemClicked(QTreeWidgetItem*,int)", "itemClicked(QTreeWidgetItem*,int)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMCOLLAPSED )
{
  QTreeWidgetSlots_connect_signal("itemCollapsed(QTreeWidgetItem*)", "itemCollapsed(QTreeWidgetItem*)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMDOUBLECLICKED )
{
  QTreeWidgetSlots_connect_signal("itemDoubleClicked(QTreeWidgetItem*,int)", "itemDoubleClicked(QTreeWidgetItem*,int)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMENTERED )
{
  QTreeWidgetSlots_connect_signal("itemEntered(QTreeWidgetItem*,int)", "itemEntered(QTreeWidgetItem*,int)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMEXPANDED )
{
  QTreeWidgetSlots_connect_signal("itemExpanded(QTreeWidgetItem*)", "itemExpanded(QTreeWidgetItem*)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMPRESSED )
{
  QTreeWidgetSlots_connect_signal("itemPressed(QTreeWidgetItem*,int)", "itemPressed(QTreeWidgetItem*,int)");
}

HB_FUNC_STATIC( QTREEWIDGET_ONITEMSELECTIONCHANGED )
{
  QTreeWidgetSlots_connect_signal("itemSelectionChanged()", "itemSelectionChanged()");
}

#pragma ENDDUMP
