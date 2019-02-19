%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const = 0
$virtualMethod=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=virtual QItemSelection mapSelectionFromSource ( const QItemSelection & sourceSelection ) const
$virtualMethod=|QItemSelection|mapSelectionFromSource|const QItemSelection &

$prototype=virtual QItemSelection mapSelectionToSource ( const QItemSelection & proxySelection ) const
$virtualMethod=|QItemSelection|mapSelectionToSource|const QItemSelection &

$prototype=virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const = 0
$virtualMethod=|QModelIndex|mapToSource|const QModelIndex &

$prototype=virtual void setSourceModel ( QAbstractItemModel * sourceModel )
$virtualMethod=|void|setSourceModel|QAbstractItemModel *

$prototype=QAbstractItemModel * sourceModel () const
$method=|QAbstractItemModel *|sourceModel|

$prototype=virtual QModelIndex buddy ( const QModelIndex & index ) const
$virtualMethod=|QModelIndex|buddy|const QModelIndex &

$prototype=virtual bool canFetchMore ( const QModelIndex & parent ) const
$virtualMethod=|bool|canFetchMore|const QModelIndex &

$prototype=virtual QVariant data ( const QModelIndex & proxyIndex, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual void fetchMore ( const QModelIndex & parent )
$virtualMethod=|void|fetchMore|const QModelIndex &

$prototype=virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant headerData ( int section, Qt::Orientation orientation, int role ) const
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int

$prototype=virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
$virtualMethod=|QMimeData *|mimeData|const QModelIndexList &

$prototype=virtual QStringList mimeTypes () const
$virtualMethod=|QStringList|mimeTypes|

$prototype=virtual void revert ()
$virtualMethod=|void|revert|

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=virtual QSize span ( const QModelIndex & index ) const
$virtualMethod=|QSize|span|const QModelIndex &

$prototype=virtual bool submit ()
$virtualMethod=|bool|submit|

$prototype=virtual Qt::DropActions supportedDropActions () const
$virtualMethod=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP
