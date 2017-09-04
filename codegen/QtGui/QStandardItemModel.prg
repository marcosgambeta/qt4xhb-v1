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

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW1 )
{
  QStandardItemModel * o = new QStandardItemModel ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QStandardItemModel(int rows, int columns, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW2 )
{
  QStandardItemModel * o = new QStandardItemModel ( PINT(1), PINT(2), OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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

HB_FUNC_STATIC( QSTANDARDITEMMODEL_DELETE )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INDEX )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QModelIndex parent(const QModelIndex &child) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QObject *parent() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->parent ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

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
}

/*
int rowCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ROWCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->rowCount ( par1 ) );
  }
}

/*
int columnCount(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_COLUMNCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->columnCount ( par1 ) );
  }
}

/*
bool hasChildren(const QModelIndex &parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HASCHILDREN )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->hasChildren ( par1 ) );
  }
}

/*
QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_DATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
  }
}

/*
QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HEADERDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,int role = Qt::EditRole)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHEADERDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setHeaderData ( PINT(1), (Qt::Orientation) hb_parni(2), *PQVARIANT(3), OPINT(4,Qt::EditRole) ) );
  }
}

/*
bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROWS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->insertRows ( PINT(1), PINT(2), par3 ) );
  }
}

/*
bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMNS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->insertColumns ( PINT(1), PINT(2), par3 ) );
  }
}

/*
bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_REMOVEROWS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->removeRows ( PINT(1), PINT(2), par3 ) );
  }
}

/*
bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_REMOVECOLUMNS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
  }
}

/*
Qt::ItemFlags flags(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_FLAGS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags ( *PQMODELINDEX(1) ) );
  }
}

/*
Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SUPPORTEDDROPACTIONS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->supportedDropActions () );
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_CLEAR )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SORT )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( PINT(1), (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStandardItem *itemFromIndex(const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEMFROMINDEX )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->itemFromIndex ( *PQMODELINDEX(1) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
QModelIndex indexFromItem(const QStandardItem *item) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INDEXFROMITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStandardItem * par1 = (const QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexFromItem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QStandardItem *item(int row, int column = 0) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->item ( PINT(1), OPINT(2,0) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
void setItem(int row, int column, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM1 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par3 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItem ( PINT(1), PINT(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItem ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

/*
QStandardItem *invisibleRootItem() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INVISIBLEROOTITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->invisibleRootItem ();
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
QStandardItem *horizontalHeaderItem(int column) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_HORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->horizontalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
void setHorizontalHeaderItem(int column, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHorizontalHeaderItem ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStandardItem *verticalHeaderItem(int row) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_VERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->verticalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
void setVerticalHeaderItem(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETVERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setVerticalHeaderItem ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalHeaderLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETHORIZONTALHEADERLABELS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderLabels ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalHeaderLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETVERTICALHEADERLABELS )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderLabels ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowCount(int rows)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETROWCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnCount(int columns)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETCOLUMNCOUNT )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendRow(QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par1 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
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
par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertRow ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool insertRow(int row, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW3 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->insertRow ( PINT(1), par2 ) );
  }
}

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
par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertColumn ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN2 )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->insertColumn ( PINT(1), par2 ) );
  }
}

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
}

/*
QStandardItem *takeItem(int row, int column = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->takeItem ( PINT(1), OPINT(2,0) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
QList<QStandardItem*> takeRow(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEROW )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QStandardItem *> list = obj->takeRow ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEHORIZONTALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->takeHorizontalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
QStandardItem *takeVerticalHeaderItem(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_TAKEVERTICALHEADERITEM )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->takeVerticalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
const QStandardItem *itemPrototype() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_ITEMPROTOTYPE )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStandardItem * ptr = obj->itemPrototype ();
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
void setItemPrototype(const QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEMPROTOTYPE )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStandardItem * par1 = (const QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemPrototype ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SORTROLE )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->sortRole () );
  }
}

/*
void setSortRole(int role)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETSORTROLE )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSortRole ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_MIMETYPES )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->mimeTypes () );
  }
}

/*
QMimeData *mimeData(const QModelIndexList &indexes) const
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_MIMEDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndexList * par1 = (QModelIndexList *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMimeData * ptr = obj->mimeData ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}

/*
bool dropMimeData (const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent)
*/
HB_FUNC_STATIC( QSTANDARDITEMMODEL_DROPMIMEDATA )
{
  QStandardItemModel * obj = (QStandardItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->dropMimeData ( par1, (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
  }
}

#pragma ENDDUMP
