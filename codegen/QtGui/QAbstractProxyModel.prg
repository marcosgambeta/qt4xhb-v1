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

$beginClassFrom=QAbstractItemModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QItemSelection>
#include <QtCore/QStringList>
#include <QtCore/QSize>
#include <QtCore/QMimeData>

$deleteMethod

$prototypeV2=virtual QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const = 0

$prototypeV2=virtual QItemSelection mapSelectionFromSource( const QItemSelection & sourceSelection ) const

$prototypeV2=virtual QItemSelection mapSelectionToSource( const QItemSelection & proxySelection ) const

$prototypeV2=virtual QModelIndex mapToSource( const QModelIndex & proxyIndex ) const = 0

$prototypeV2=virtual void setSourceModel( QAbstractItemModel * sourceModel )

$prototypeV2=QAbstractItemModel * sourceModel() const

$prototypeV2=virtual QModelIndex buddy( const QModelIndex & index ) const

$prototypeV2=virtual bool canFetchMore( const QModelIndex & parent ) const

$prototype=virtual QVariant data ( const QModelIndex & proxyIndex, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototypeV2=virtual void fetchMore( const QModelIndex & parent )

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototype=virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototypeV2=virtual QVariant headerData( int section, Qt::Orientation orientation, int role ) const

$prototypeV2=virtual QMimeData * mimeData( const QModelIndexList & indexes ) const

$prototypeV2=virtual QStringList mimeTypes() const

$prototypeV2=virtual void revert()

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototypeV2=virtual QSize span( const QModelIndex & index ) const

$prototypeV2=virtual bool submit()

$prototypeV2=virtual Qt::DropActions supportedDropActions() const

#pragma ENDDUMP
