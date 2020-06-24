%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractListModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStringListModel(QObject * parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QStringListModel(const QStringList & strings, QObject * parent = 0)
$internalConstructor=|new2|const QStringList &,QObject *=0

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
$addMethod=new

$prototypeV2=void setStringList( const QStringList & strings )

$prototypeV2=QStringList stringList() const

$prototypeV2=virtual QVariant data( const QModelIndex & index, int role ) const

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=virtual Qt::DropActions supportedDropActions() const

#pragma ENDDUMP
