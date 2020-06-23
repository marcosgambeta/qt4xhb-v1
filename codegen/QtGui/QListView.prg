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

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QListView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=int batchSize() const

$prototypeV2=void clearPropertyFlags()

$prototypeV2=QListView::Flow flow() const

$prototypeV2=QSize gridSize() const

$prototypeV2=bool isRowHidden( int row ) const

$prototypeV2=bool isSelectionRectVisible() const

$prototypeV2=bool isWrapping() const

$prototypeV2=QListView::LayoutMode layoutMode() const

$prototypeV2=int modelColumn() const

$prototypeV2=QListView::Movement movement() const

$prototypeV2=QListView::ResizeMode resizeMode() const

$prototypeV2=void setBatchSize( int batchSize )

$prototypeV2=void setFlow( QListView::Flow flow )

$prototypeV2=void setGridSize( const QSize & size )

$prototypeV2=void setLayoutMode( QListView::LayoutMode mode )

$prototypeV2=void setModelColumn( int column )

$prototypeV2=void setMovement( QListView::Movement movement )

$prototypeV2=void setResizeMode( QListView::ResizeMode mode )

$prototypeV2=void setRowHidden( int row, bool hide )

$prototypeV2=void setSelectionRectVisible( bool show )

$prototypeV2=void setSpacing( int space )

$prototypeV2=void setUniformItemSizes( bool enable )

$prototypeV2=void setViewMode( QListView::ViewMode mode )

$prototypeV2=void setWordWrap( bool on )

$prototypeV2=void setWrapping( bool enable )

$prototypeV2=int spacing() const

$prototypeV2=bool uniformItemSizes() const

$prototypeV2=QListView::ViewMode viewMode() const

$prototypeV2=bool wordWrap() const

$prototypeV2=virtual QModelIndex indexAt( const QPoint & p ) const

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QListView::ScrollHint=QListView::EnsureVisible

$prototypeV2=virtual QRect visualRect( const QModelIndex & index ) const

$beginSignals
$signal=|indexesMoved(QModelIndexList)
$endSignals

#pragma ENDDUMP
