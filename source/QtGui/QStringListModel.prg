/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QStringListModel INHERIT QAbstractListModel

   METHOD new
   METHOD setStringList
   METHOD stringList
   METHOD data
   METHOD flags
   METHOD insertRows
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD supportedDropActions

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStringListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStringListModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QStringListModel(QObject * parent = 0)
*/
void QStringListModel_new1()
{
  QStringListModel * obj = new QStringListModel( OPQOBJECT(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QStringListModel(const QStringList & strings, QObject * parent = 0)
*/
void QStringListModel_new2()
{
  QStringListModel * obj = new QStringListModel( PQSTRINGLIST(1), OPQOBJECT(2,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QStringListModel(QObject * parent = 0)
[2]QStringListModel(const QStringList & strings, QObject * parent = 0)
*/

HB_FUNC_STATIC( QSTRINGLISTMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QStringListModel_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QStringListModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStringList( const QStringList & strings )
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SETSTRINGLIST )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setStringList( PQSTRINGLIST(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList stringList() const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_STRINGLIST )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->stringList() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QVariant data( const QModelIndex & index, int role ) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_DATA )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
    {
#endif
      QVariant * ptr = new QVariant( obj->data( *PQMODELINDEX(1), PINT(2) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual Qt::ItemFlags flags( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_FLAGS )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->flags( *PQMODELINDEX(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_INSERTROWS )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertRows( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt4xHb::itemGetPtr(3) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_REMOVEROWS )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeRows( PINT(1), PINT(2), ISNIL(3)? QModelIndex() : *(QModelIndex *) Qt4xHb::itemGetPtr(3) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_ROWCOUNT )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt4xHb::itemGetPtr(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SETDATA )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQMODELINDEX(1) && ISQVARIANT(2) && ISOPTNUM(3) )
    {
#endif
      RBOOL( obj->setData( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SORT )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      obj->sort( PINT(1), ISNIL(2)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QSTRINGLISTMODEL_SUPPORTEDDROPACTIONS )
{
  QStringListModel * obj = (QStringListModel *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedDropActions() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
