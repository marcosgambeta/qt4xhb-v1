$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QITEMSELECTION
REQUEST QABSTRACTITEMMODEL
REQUEST QVARIANT
REQUEST QMIMEDATA
REQUEST QSIZE
#endif

CLASS QAbstractProxyModel INHERIT QAbstractItemModel

   METHOD delete
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD setSourceModel
   METHOD sourceModel
   METHOD buddy
   METHOD canFetchMore
   METHOD data
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD mimeData
   METHOD mimeTypes
   METHOD revert
   METHOD setData
   METHOD setHeaderData
   METHOD sort
   METHOD span
   METHOD submit
   METHOD supportedDropActions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractProxyModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QItemSelection>
#include <QStringList>
#include <QSize>

$deleteMethod

/*
virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const = 0
*/
$virtualMethod=|QModelIndex|mapFromSource|const QModelIndex &

/*
virtual QItemSelection mapSelectionFromSource ( const QItemSelection & sourceSelection ) const
*/
$virtualMethod=|QItemSelection|mapSelectionFromSource|const QItemSelection &

/*
virtual QItemSelection mapSelectionToSource ( const QItemSelection & proxySelection ) const
*/
$virtualMethod=|QItemSelection|mapSelectionToSource|const QItemSelection &

/*
virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const = 0
*/
$virtualMethod=|QModelIndex|mapToSource|const QModelIndex &

/*
virtual void setSourceModel ( QAbstractItemModel * sourceModel )
*/
$virtualMethod=|void|setSourceModel|QAbstractItemModel *

/*
QAbstractItemModel * sourceModel () const
*/
$method=|QAbstractItemModel *|sourceModel|

/*
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
$virtualMethod=|QModelIndex|buddy|const QModelIndex &

/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
$virtualMethod=|bool|canFetchMore|const QModelIndex &

/*
virtual QVariant data ( const QModelIndex & proxyIndex, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
virtual void fetchMore ( const QModelIndex & parent )
*/
$virtualMethod=|void|fetchMore|const QModelIndex &

/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role ) const
*/
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int

/*
virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
$virtualMethod=|QMimeData *|mimeData|const QModelIndexList &

/*
virtual QStringList mimeTypes () const
*/
$virtualMethod=|QStringList|mimeTypes|

/*
virtual void revert ()
*/
$virtualMethod=|void|revert|

/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
virtual QSize span ( const QModelIndex & index ) const
*/
$virtualMethod=|QSize|span|const QModelIndex &

/*
virtual bool submit ()
*/
$virtualMethod=|bool|submit|

/*
virtual Qt::DropActions supportedDropActions () const
*/
$virtualMethod=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP
