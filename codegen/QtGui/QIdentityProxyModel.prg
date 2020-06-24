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

$beginClassFrom=QAbstractProxyModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QItemSelection>

$prototype=QIdentityProxyModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=virtual QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const

$prototypeV2=virtual QItemSelection mapSelectionFromSource( const QItemSelection & selection ) const

$prototypeV2=virtual QItemSelection mapSelectionToSource( const QItemSelection & selection ) const

$prototypeV2=virtual QModelIndex mapToSource( const QModelIndex & proxyIndex ) const

$prototypeV2=virtual QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const

$prototypeV2=virtual QModelIndex parent( const QModelIndex & child ) const

$prototypeV2=virtual bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual void setSourceModel( QAbstractItemModel * newSourceModel )

#pragma ENDDUMP
