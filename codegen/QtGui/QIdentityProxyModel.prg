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

$beginClassFrom=QAbstractProxyModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QItemSelection>

$prototype=QIdentityProxyModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const
$virtualMethod=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=virtual QItemSelection mapSelectionFromSource ( const QItemSelection & selection ) const
$virtualMethod=|QItemSelection|mapSelectionFromSource|const QItemSelection &

$prototype=virtual QItemSelection mapSelectionToSource ( const QItemSelection & selection ) const
$virtualMethod=|QItemSelection|mapSelectionToSource|const QItemSelection &

$prototype=virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const
$virtualMethod=|QModelIndex|mapToSource|const QModelIndex &

$prototype=virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
$virtualMethod=|QModelIndexList|match|const QModelIndex &,int,const QVariant &,int=1,Qt::MatchFlags=Qt::MatchFlags( Qt::MatchStartsWith OR Qt::MatchWrap )

$prototype=virtual QModelIndex parent ( const QModelIndex & child ) const
$virtualMethod=|QModelIndex|parent|const QModelIndex &

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual void setSourceModel ( QAbstractItemModel * newSourceModel )
$virtualMethod=|void|setSourceModel|QAbstractItemModel *

#pragma ENDDUMP
