%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QOBJECT
REQUEST QVARIANT
REQUEST QSTANDARDITEM
REQUEST QMIMEDATA
#endif

CLASS QStandardItemModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD index
   METHOD parent
   METHOD rowCount
   METHOD columnCount
   METHOD hasChildren
   METHOD data
   METHOD setData
   METHOD headerData
   METHOD setHeaderData
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRows
   METHOD removeColumns
   METHOD flags
   METHOD supportedDropActions
   METHOD clear
   METHOD sort
   METHOD itemFromIndex
   METHOD indexFromItem
   METHOD item
   METHOD setItem
   METHOD invisibleRootItem
   METHOD horizontalHeaderItem
   METHOD setHorizontalHeaderItem
   METHOD verticalHeaderItem
   METHOD setVerticalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setVerticalHeaderLabels
   METHOD setRowCount
   METHOD setColumnCount
   METHOD appendRow1
   METHOD appendRow2
   METHOD appendRow
   METHOD appendColumn
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow
   METHOD insertColumn1
   METHOD insertColumn2
   METHOD insertColumn
   METHOD takeItem
   METHOD takeRow
   METHOD takeColumn
   METHOD takeHorizontalHeaderItem
   METHOD takeVerticalHeaderItem
   METHOD itemPrototype
   METHOD setItemPrototype
   METHOD findItems
   METHOD sortRole
   METHOD setSortRole
   METHOD mimeTypes
   METHOD mimeData
   METHOD dropMimeData

   METHOD onItemChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStandardItemModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QMimeData>

$prototype=QStandardItemModel(QObject *parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QStandardItemModel(int rows, int columns, QObject *parent = 0)
$internalConstructor=|new2|int,int,QObject *=0

//[1]QStandardItemModel(QObject *parent = 0)
//[2]QStandardItemModel(int rows, int columns, QObject *parent = 0)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QStandardItemModel_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QStandardItemModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=QModelIndex parent(const QModelIndex &child) const
$internalMethod=|QModelIndex|parent,parent1|const QModelIndex &

$prototype=QObject *parent() const
$internalMethod=|QObject *|parent,parent2|

//[1]QModelIndex parent(const QModelIndex &child) const
//[2]QObject *parent() const

HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QStandardItemModel_parent1();
  }
  else if( ISNUMPAR(0) )
  {
    QStandardItemModel_parent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=int columnCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=bool hasChildren(const QModelIndex &parent = QModelIndex()) const
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,int role = Qt::EditRole)
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=Qt::ItemFlags flags(const QModelIndex &index) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=Qt::DropActions supportedDropActions() const
$method=|Qt::DropActions|supportedDropActions|

$prototype=void clear()
$method=|void|clear|

$prototype=void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=QStandardItem *itemFromIndex(const QModelIndex &index) const
$method=|QStandardItem *|itemFromIndex|const QModelIndex &

$prototype=QModelIndex indexFromItem(const QStandardItem *item) const
$method=|QModelIndex|indexFromItem|const QStandardItem *

$prototype=QStandardItem *item(int row, int column = 0) const
$method=|QStandardItem *|item|int,int=0

$prototype=void setItem(int row, int column, QStandardItem *item)
$internalMethod=|void|setItem,setItem1|int,int,QStandardItem *

$prototype=void setItem(int row, QStandardItem *item)
$internalMethod=|void|setItem,setItem2|int,QStandardItem *

//[1]void setItem(int row, int column, QStandardItem *item)
//[2]void setItem(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    QStandardItemModel_setItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItemModel_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QStandardItem *invisibleRootItem() const
$method=|QStandardItem *|invisibleRootItem|

$prototype=QStandardItem *horizontalHeaderItem(int column) const
$method=|QStandardItem *|horizontalHeaderItem|int

$prototype=void setHorizontalHeaderItem(int column, QStandardItem *item)
$method=|void|setHorizontalHeaderItem|int,QStandardItem *

$prototype=QStandardItem *verticalHeaderItem(int row) const
$method=|QStandardItem *|verticalHeaderItem|int

$prototype=void setVerticalHeaderItem(int row, QStandardItem *item)
$method=|void|setVerticalHeaderItem|int,QStandardItem *

$prototype=void setHorizontalHeaderLabels(const QStringList &labels)
$method=|void|setHorizontalHeaderLabels|const QStringList &

$prototype=void setVerticalHeaderLabels(const QStringList &labels)
$method=|void|setVerticalHeaderLabels|const QStringList &

$prototype=void setRowCount(int rows)
$method=|void|setRowCount|int

$prototype=void setColumnCount(int columns)
$method=|void|setColumnCount|int

$prototype=void appendRow(const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendRow ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void appendRow(QStandardItem *item)
$method=|void|appendRow,appendRow2|QStandardItem *

//[1]void appendRow(const QList<QStandardItem*> &items)
//[2]void appendRow(QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_APPENDROW1 );
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_APPENDROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void appendColumn(const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDCOLUMN )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendColumn ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void insertRow(int row, const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertRow ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void insertRow(int row, QStandardItem *item)
$method=|void|insertRow,insertRow2|int,QStandardItem *

$prototype=bool insertRow(int row, const QModelIndex &parent = QModelIndex())
$method=|bool|insertRow,insertRow3|int,const QModelIndex &=QModelIndex()

//[1]void insertRow(int row, const QList<QStandardItem*> &items)
//[2]void insertRow(int row, QStandardItem *item)
//[3]bool insertRow(int row, const QModelIndex &parent = QModelIndex())

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTROW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTROW2 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTROW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertColumn(int column, const QList<QStandardItem*> &items)
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertColumn ( PINT(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
$method=|bool|insertColumn,insertColumn2|int,const QModelIndex &=QModelIndex()

//[1]void insertColumn(int column, const QList<QStandardItem*> &items)
//[2]bool insertColumn(int column, const QModelIndex &parent = QModelIndex())

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTCOLUMN1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_INSERTCOLUMN2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QStandardItem *takeItem(int row, int column = 0)
$method=|QStandardItem *|takeItem|int,int=0

$prototype=QList<QStandardItem*> takeRow(int row)
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEROW )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> list = obj->takeRow ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QStandardItem*> takeColumn(int column)
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKECOLUMN )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QStandardItem *> list = obj->takeColumn ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QStandardItem *takeHorizontalHeaderItem(int column)
$method=|QStandardItem *|takeHorizontalHeaderItem|int

$prototype=QStandardItem *takeVerticalHeaderItem(int row)
$method=|QStandardItem *|takeVerticalHeaderItem|int

$prototype=const QStandardItem *itemPrototype() const
$method=|const QStandardItem *|itemPrototype|

$prototype=void setItemPrototype(const QStandardItem *item)
$method=|void|setItemPrototype|const QStandardItem *

$prototype=QList<QStandardItem*> findItems(const QString &text,Qt::MatchFlags flags = Qt::MatchExactly,int column = 0) const
HB_FUNC_STATIC( QSTANDARDITEMMODEL_FINDITEMS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::MatchExactly : hb_parni(2);
    QList<QStandardItem *> list = obj->findItems ( PQSTRING(1), (Qt::MatchFlags) par2, OPINT(3,0) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=int sortRole() const
$method=|int|sortRole|

$prototype=void setSortRole(int role)
$method=|void|setSortRole|int

$prototype=QStringList mimeTypes() const
$method=|QStringList|mimeTypes|

$prototype=QMimeData *mimeData(const QModelIndexList &indexes) const
$method=|QMimeData *|mimeData|const QModelIndexList &

$prototype=bool dropMimeData (const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent)
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

#pragma ENDDUMP
