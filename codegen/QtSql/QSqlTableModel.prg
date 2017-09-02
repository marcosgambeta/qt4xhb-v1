/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QVARIANT
#endif

CLASS QSqlTableModel INHERIT QSqlQueryModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD database
   METHOD editStrategy
   METHOD fieldIndex
   METHOD filter
   METHOD insertRecord
   METHOD isDirty
   METHOD primaryKey
   METHOD revertRow
   METHOD select
   METHOD setEditStrategy
   METHOD setFilter
   METHOD setRecord
   METHOD setSort
   METHOD setTable
   METHOD tableName
   METHOD clear
   METHOD data
   METHOD flags
   METHOD headerData
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD revert
   METHOD revertAll
   METHOD submit
   METHOD submitAll
   METHOD onBeforeDelete
   METHOD onBeforeInsert
   METHOD onBeforeUpdate
   METHOD onPrimeInsert
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlTableModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlIndex>

/*
QSqlTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_NEW )
{
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QSqlTableModel * o = new QSqlTableModel ( OPQOBJECT(1,0), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSQLTABLEMODEL_DELETE )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSqlDatabase database () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_DATABASE )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlDatabase * ptr = new QSqlDatabase( obj->database () );
    _qt4xhb_createReturnClass ( ptr, "QSQLDATABASE" );
  }
}


/*
EditStrategy editStrategy () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_EDITSTRATEGY )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->editStrategy () );
  }
}


/*
int fieldIndex ( const QString & fieldName ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FIELDINDEX )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->fieldIndex ( PQSTRING(1) ) );
  }
}


/*
QString filter () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FILTER )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->filter () );
  }
}


/*
bool insertRecord ( int row, const QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_INSERTRECORD )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->insertRecord ( PINT(1), *PQSQLRECORD(2) ) );
  }
}


/*
bool isDirty ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ISDIRTY )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDirty ( *PQMODELINDEX(1) ) );
  }
}


/*
QSqlIndex primaryKey () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_PRIMARYKEY )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlIndex * ptr = new QSqlIndex( obj->primaryKey () );
    _qt4xhb_createReturnClass ( ptr, "QSQLINDEX", true );
  }
}


/*
virtual void revertRow ( int row )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERTROW )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revertRow ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool select ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SELECT )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->select () );
  }
}


/*
virtual void setEditStrategy ( EditStrategy strategy )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETEDITSTRATEGY )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEditStrategy ( (QSqlTableModel::EditStrategy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFilter ( const QString & filter )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETFILTER )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFilter ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setRecord ( int row, const QSqlRecord & record )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETRECORD )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setRecord ( PINT(1), *PQSQLRECORD(2) ) );
  }
}


/*
virtual void setSort ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETSORT )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSort ( PINT(1), (Qt::SortOrder) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setTable ( const QString & tableName )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETTABLE )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTable ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString tableName () const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_TABLENAME )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->tableName () );
  }
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_CLEAR )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_DATA )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_FLAGS )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags ( *PQMODELINDEX(1) ) );
  }
}


/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_HEADERDATA )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_INSERTROWS )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->insertRows ( PINT(1), PINT(2), par3 ) );
  }
}


/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REMOVECOLUMNS )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
  }
}


/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REMOVEROWS )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->removeRows ( PINT(1), PINT(2), par3 ) );
  }
}


/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_ROWCOUNT )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->rowCount ( par1 ) );
  }
}


/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SETDATA )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
  }
}


/*
virtual void sort ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SORT )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->sort ( PINT(1), (Qt::SortOrder) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void revert ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERT )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revert ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void revertAll ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_REVERTALL )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revertAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool submit ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SUBMIT )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->submit () );
  }
}


/*
bool submitAll ()
*/
HB_FUNC_STATIC( QSQLTABLEMODEL_SUBMITALL )
{
  QSqlTableModel * obj = (QSqlTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->submitAll () );
  }
}





#pragma ENDDUMP