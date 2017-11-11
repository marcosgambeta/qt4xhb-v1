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

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD index
   METHOD parent1
   METHOD parent2
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
   METHOD setItem1
   METHOD setItem2
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

/*
QStandardItemModel(QObject *parent = 0)
*/
$constructor=|new1|QObject *=0

/*
QStandardItemModel(int rows, int columns, QObject *parent = 0)
*/
$constructor=|new2|int,int,QObject *=0

//[1]QStandardItemModel(QObject *parent = 0)
//[2]QStandardItemModel(int rows, int columns, QObject *parent = 0)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
QModelIndex parent(const QModelIndex &child) const
*/
$method=|QModelIndex|parent,parent1|const QModelIndex &

/*
QObject *parent() const
*/
$method=|QObject *|parent,parent2|

//[1]QModelIndex parent(const QModelIndex &child) const
//[2]QObject *parent() const

HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_PARENT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_PARENT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
$method=|int|rowCount|const QModelIndex &=QModelIndex()

/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
$method=|int|columnCount|const QModelIndex &=QModelIndex()

/*
bool hasChildren(const QModelIndex &parent = QModelIndex()) const
*/
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const
*/
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,int role = Qt::EditRole)
*/
$method=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

/*
bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

/*
bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
$method=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
$method=|Qt::ItemFlags|flags|const QModelIndex &

/*
Qt::DropActions supportedDropActions() const
*/
$method=|Qt::DropActions|supportedDropActions|

/*
void clear()
*/
$method=|void|clear|

/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
QStandardItem *itemFromIndex(const QModelIndex &index) const
*/
$method=|QStandardItem *|itemFromIndex|const QModelIndex &

/*
QModelIndex indexFromItem(const QStandardItem *item) const
*/
$method=|QModelIndex|indexFromItem|const QStandardItem *

/*
QStandardItem *item(int row, int column = 0) const
*/
$method=|QStandardItem *|item|int,int=0

/*
void setItem(int row, int column, QStandardItem *item)
*/
$method=|void|setItem,setItem1|int,int,QStandardItem *

/*
void setItem(int row, QStandardItem *item)
*/
$method=|void|setItem,setItem2|int,QStandardItem *

//[1]void setItem(int row, int column, QStandardItem *item)
//[2]void setItem(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_SETITEM1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEMMODEL_SETITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStandardItem *invisibleRootItem() const
*/
$method=|QStandardItem *|invisibleRootItem|

/*
QStandardItem *horizontalHeaderItem(int column) const
*/
$method=|QStandardItem *|horizontalHeaderItem|int

/*
void setHorizontalHeaderItem(int column, QStandardItem *item)
*/
$method=|void|setHorizontalHeaderItem|int,QStandardItem *

/*
QStandardItem *verticalHeaderItem(int row) const
*/
$method=|QStandardItem *|verticalHeaderItem|int

/*
void setVerticalHeaderItem(int row, QStandardItem *item)
*/
$method=|void|setVerticalHeaderItem|int,QStandardItem *

/*
void setHorizontalHeaderLabels(const QStringList &labels)
*/
$method=|void|setHorizontalHeaderLabels|const QStringList &

/*
void setVerticalHeaderLabels(const QStringList &labels)
*/
$method=|void|setVerticalHeaderLabels|const QStringList &

/*
void setRowCount(int rows)
*/
$method=|void|setRowCount|int

/*
void setColumnCount(int columns)
*/
$method=|void|setColumnCount|int

/*
void appendRow(const QList<QStandardItem*> &items)
*/
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

/*
void appendRow(QStandardItem *item)
*/
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

/*
void appendColumn(const QList<QStandardItem*> &items)
*/
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

/*
void insertRow(int row, const QList<QStandardItem*> &items)
*/
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

/*
void insertRow(int row, QStandardItem *item)
*/
$method=|void|insertRow,insertRow2|int,QStandardItem *

/*
bool insertRow(int row, const QModelIndex &parent = QModelIndex())
*/
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

/*
void insertColumn(int column, const QList<QStandardItem*> &items)
*/
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

/*
bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
*/
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

/*
QStandardItem *takeItem(int row, int column = 0)
*/
$method=|QStandardItem *|takeItem|int,int=0

/*
QList<QStandardItem*> takeRow(int row)
*/
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

/*
QList<QStandardItem*> takeColumn(int column)
*/
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

/*
QStandardItem *takeHorizontalHeaderItem(int column)
*/
$method=|QStandardItem *|takeHorizontalHeaderItem|int

/*
QStandardItem *takeVerticalHeaderItem(int row)
*/
$method=|QStandardItem *|takeVerticalHeaderItem|int

/*
const QStandardItem *itemPrototype() const
*/
$method=|const QStandardItem *|itemPrototype|

/*
void setItemPrototype(const QStandardItem *item)
*/
$method=|void|setItemPrototype|const QStandardItem *

/*
QList<QStandardItem*> findItems(const QString &text,Qt::MatchFlags flags = Qt::MatchExactly,int column = 0) const
*/
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

/*
int sortRole() const
*/
$method=|int|sortRole|

/*
void setSortRole(int role)
*/
$method=|void|setSortRole|int

/*
QStringList mimeTypes() const
*/
$method=|QStringList|mimeTypes|

/*
QMimeData *mimeData(const QModelIndexList &indexes) const
*/
$method=|QMimeData *|mimeData|const QModelIndexList &

/*
bool dropMimeData (const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent)
*/
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

#pragma ENDDUMP
