%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtCore/QSize>
#include <QtCore/QMimeData>

$deleteMethod

$prototypeV2=virtual QModelIndex buddy( const QModelIndex & index ) const

$prototypeV2=virtual bool canFetchMore( const QModelIndex & parent ) const

$prototypeV2=virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const = 0

$prototypeV2=virtual QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0

$prototypeV2=virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=virtual void fetchMore( const QModelIndex & parent )

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=virtual bool hasChildren( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=bool hasIndex( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototypeV2=virtual QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0

$prototypeV2=bool insertColumn( int column, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool insertRow( int row, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototype=virtual QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
$virtualMethod=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags( Qt::MatchStartsWith OR Qt::MatchWrap )

$prototypeV2=virtual QMimeData * mimeData( const QModelIndexList & indexes ) const

$prototypeV2=virtual QStringList mimeTypes() const

$prototypeV2=virtual QModelIndex parent( const QModelIndex & index ) const = 0

$prototypeV2=bool removeColumn( int column, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeRow( int row, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const = 0

$prototypeV2=virtual bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=virtual bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=void setSupportedDragActions( Qt::DropActions actions )

$prototypeV2=QModelIndex sibling( int row, int column, const QModelIndex & index ) const

$prototypeV2=virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=virtual QSize span( const QModelIndex & index ) const

$prototypeV2=Qt::DropActions supportedDragActions() const

$prototypeV2=virtual Qt::DropActions supportedDropActions() const

$prototypeV2=virtual void revert()

$prototypeV2=virtual bool submit()

$beginSignals
$signal=|columnsAboutToBeInserted(QModelIndex,int,int)
$signal=|columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
$signal=|columnsAboutToBeRemoved(QModelIndex,int,int)
$signal=|columnsInserted(QModelIndex,int,int)
$signal=|columnsMoved(QModelIndex,int,int,QModelIndex,int)
$signal=|columnsRemoved(QModelIndex,int,int)
$signal=|dataChanged(QModelIndex,QModelIndex)
$signal=|headerDataChanged(Qt::Orientation,int,int)
$signal=|layoutAboutToBeChanged()
$signal=|layoutChanged()
$signal=|modelAboutToBeReset()
$signal=|modelReset()
$signal=|rowsAboutToBeInserted(QModelIndex,int,int)
$signal=|rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
$signal=|rowsAboutToBeRemoved(QModelIndex,int,int)
$signal=|rowsInserted(QModelIndex,int,int)
$signal=|rowsMoved(QModelIndex,int,int,QModelIndex,int)
$signal=|rowsRemoved(QModelIndex,int,int)
$endSignals

#pragma ENDDUMP
