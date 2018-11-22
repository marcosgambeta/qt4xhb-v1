%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QItemSelection>
#include <QStringList>
#include <QSize>
#include <QMimeData>

$prototype=QSortFilterProxyModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool dynamicSortFilter () const
$method=|bool|dynamicSortFilter|

$prototype=Qt::CaseSensitivity filterCaseSensitivity () const
$method=|Qt::CaseSensitivity|filterCaseSensitivity|

$prototype=int filterKeyColumn () const
$method=|int|filterKeyColumn|

$prototype=QRegExp filterRegExp () const
$method=|QRegExp|filterRegExp|

$prototype=int filterRole () const
$method=|int|filterRole|

$prototype=bool isSortLocaleAware () const
$method=|bool|isSortLocaleAware|

$prototype=void setDynamicSortFilter ( bool enable )
$method=|void|setDynamicSortFilter|bool

$prototype=void setFilterCaseSensitivity ( Qt::CaseSensitivity cs )
$method=|void|setFilterCaseSensitivity|Qt::CaseSensitivity

$prototype=void setFilterKeyColumn ( int column )
$method=|void|setFilterKeyColumn|int

$prototype=void setFilterRole ( int role )
$method=|void|setFilterRole|int

$prototype=void setSortCaseSensitivity ( Qt::CaseSensitivity cs )
$method=|void|setSortCaseSensitivity|Qt::CaseSensitivity

$prototype=void setSortLocaleAware ( bool on )
$method=|void|setSortLocaleAware|bool

$prototype=void setSortRole ( int role )
$method=|void|setSortRole|int

$prototype=Qt::CaseSensitivity sortCaseSensitivity () const
$method=|Qt::CaseSensitivity|sortCaseSensitivity|

$prototype=int sortColumn () const
$method=|int|sortColumn|

$prototype=Qt::SortOrder sortOrder () const
$method=|Qt::SortOrder|sortOrder|

$prototype=int sortRole () const
$method=|int|sortRole|

$prototype=virtual QModelIndex buddy ( const QModelIndex & index ) const
$virtualMethod=|QModelIndex|buddy|const QModelIndex &

$prototype=virtual bool canFetchMore ( const QModelIndex & parent ) const
$virtualMethod=|bool|canFetchMore|const QModelIndex &

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual void fetchMore ( const QModelIndex & parent )
$virtualMethod=|void|fetchMore|const QModelIndex &

$prototype=virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

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

$prototype=virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const
$virtualMethod=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=virtual QItemSelection mapSelectionFromSource ( const QItemSelection & sourceSelection ) const
$virtualMethod=|QItemSelection|mapSelectionFromSource|const QItemSelection &

$prototype=virtual QItemSelection mapSelectionToSource ( const QItemSelection & proxySelection ) const
$virtualMethod=|QItemSelection|mapSelectionToSource|const QItemSelection &

$prototype=virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const
$virtualMethod=|QModelIndex|mapToSource|const QModelIndex &

$prototype=virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
$virtualMethod=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags( Qt::MatchStartsWith OR Qt::MatchWrap )

$prototype=virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
$virtualMethod=|QMimeData *|mimeData|const QModelIndexList &

$prototype=virtual QStringList mimeTypes () const
$virtualMethod=|QStringList|mimeTypes|

$prototype=virtual QModelIndex parent ( const QModelIndex & child ) const
$virtualMethod=|QModelIndex|parent|const QModelIndex &

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

$prototype=virtual void setSourceModel ( QAbstractItemModel * sourceModel )
$virtualMethod=|void|setSourceModel|QAbstractItemModel *

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=virtual QSize span ( const QModelIndex & index ) const
$virtualMethod=|QSize|span|const QModelIndex &

$prototype=virtual Qt::DropActions supportedDropActions () const
$virtualMethod=|Qt::DropActions|supportedDropActions|

$prototype=void invalidate ()
$method=|void|invalidate|

$prototype=void setFilterFixedString ( const QString & pattern )
$method=|void|setFilterFixedString|const QString &

$prototype=void setFilterRegExp ( const QRegExp & regExp )
$internalMethod=|void|setFilterRegExp,setFilterRegExp1|const QRegExp &

$prototype=void setFilterRegExp ( const QString & pattern )
$internalMethod=|void|setFilterRegExp,setFilterRegExp2|const QString &

//[1]void setFilterRegExp ( const QRegExp & regExp )
//[2]void setFilterRegExp ( const QString & pattern )

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

$prototype=void setFilterWildcard ( const QString & pattern )
$method=|void|setFilterWildcard|const QString &

#pragma ENDDUMP
