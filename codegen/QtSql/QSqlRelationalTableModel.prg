/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT
#endif

CLASS QSqlRelationalTableModel INHERIT QSqlTableModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelationalTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlRelationalTableModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSqlRelationalTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_NEW )
{
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QSqlRelationalTableModel * o = new QSqlRelationalTableModel ( OPQOBJECT(1,0), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_DELETE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSqlRelation relation ( int column ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_RELATION )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlRelation * ptr = new QSqlRelation( obj->relation ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRELATION", true );
  }
}


/*
virtual QSqlTableModel * relationModel ( int column ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_RELATIONMODEL )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlTableModel * ptr = obj->relationModel ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QSQLTABLEMODEL" );
  }
}


/*
virtual void setRelation ( int column, const QSqlRelation & relation )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETRELATION )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRelation ( PINT(1), *PQSQLRELATION(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_CLEAR )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_DATA )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_REMOVECOLUMNS )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
  }
}


/*
virtual bool select ()
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SELECT )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->select () );
  }
}


/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETDATA )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
  }
}


/*
virtual void setTable ( const QString & table )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETTABLE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTable ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void revertRow ( int row )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_REVERTROW )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revertRow ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP