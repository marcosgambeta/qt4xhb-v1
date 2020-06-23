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
#include <QtCore/QStringList>
#include <QtCore/QSize>
#include <QtCore/QMimeData>

$prototype=QSortFilterProxyModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=bool dynamicSortFilter() const

$prototypeV2=Qt::CaseSensitivity filterCaseSensitivity() const

$prototypeV2=int filterKeyColumn() const

$prototypeV2=QRegExp filterRegExp() const

$prototypeV2=int filterRole() const

$prototypeV2=bool isSortLocaleAware() const

$prototypeV2=void setDynamicSortFilter( bool enable )

$prototypeV2=void setFilterCaseSensitivity( Qt::CaseSensitivity cs )

$prototypeV2=void setFilterKeyColumn( int column )

$prototypeV2=void setFilterRole( int role )

$prototypeV2=void setSortCaseSensitivity( Qt::CaseSensitivity cs )

$prototypeV2=void setSortLocaleAware( bool on )

$prototypeV2=void setSortRole( int role )

$prototypeV2=Qt::CaseSensitivity sortCaseSensitivity() const

$prototypeV2=int sortColumn() const

$prototypeV2=Qt::SortOrder sortOrder() const

$prototypeV2=int sortRole() const

$prototypeV2=virtual QModelIndex buddy( const QModelIndex & index ) const

$prototypeV2=virtual bool canFetchMore( const QModelIndex & parent ) const

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototypeV2=virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=virtual void fetchMore( const QModelIndex & parent )

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototype=virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototypeV2=virtual QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const

$prototypeV2=virtual QItemSelection mapSelectionFromSource( const QItemSelection & sourceSelection ) const

$prototypeV2=virtual QItemSelection mapSelectionToSource( const QItemSelection & proxySelection ) const

$prototypeV2=virtual QModelIndex mapToSource( const QModelIndex & proxyIndex ) const

$prototype=virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
$virtualMethod=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags( Qt::MatchStartsWith OR Qt::MatchWrap )

$prototypeV2=virtual QMimeData * mimeData( const QModelIndexList & indexes ) const

$prototypeV2=virtual QStringList mimeTypes() const

$prototypeV2=virtual QModelIndex parent( const QModelIndex & child ) const

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

$prototypeV2=virtual void setSourceModel( QAbstractItemModel * sourceModel )

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototypeV2=virtual QSize span( const QModelIndex & index ) const

$prototypeV2=virtual Qt::DropActions supportedDropActions() const

$prototypeV2=void invalidate()

$prototypeV2=void setFilterFixedString( const QString & pattern )

$prototype=void setFilterRegExp ( const QRegExp & regExp )
$internalMethod=|void|setFilterRegExp,setFilterRegExp1|const QRegExp &

$prototype=void setFilterRegExp ( const QString & pattern )
$internalMethod=|void|setFilterRegExp,setFilterRegExp2|const QString &

/*
[1]void setFilterRegExp ( const QRegExp & regExp )
[2]void setFilterRegExp ( const QString & pattern )
*/

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QSortFilterProxyModel_setFilterRegExp1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSortFilterProxyModel_setFilterRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFilterRegExp

$prototypeV2=void setFilterWildcard( const QString & pattern )

#pragma ENDDUMP
