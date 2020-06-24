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

#include <QtGui/QHeaderView>

$prototype=QTreeView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=bool allColumnsShowFocus() const

$prototypeV2=int autoExpandDelay() const

$prototypeV2=int columnAt( int x ) const

$prototypeV2=int columnViewportPosition( int column ) const

$prototypeV2=int columnWidth( int column ) const

$prototypeV2=bool expandsOnDoubleClick() const

$prototypeV2=QHeaderView * header() const

$prototypeV2=int indentation() const

$prototypeV2=QModelIndex indexAbove( const QModelIndex & index ) const

$prototypeV2=QModelIndex indexBelow( const QModelIndex & index ) const

$prototypeV2=bool isAnimated() const

$prototypeV2=bool isColumnHidden( int column ) const

$prototypeV2=bool isExpanded( const QModelIndex & index ) const

$prototypeV2=bool isFirstColumnSpanned( int row, const QModelIndex & parent ) const

$prototypeV2=bool isHeaderHidden() const

$prototypeV2=bool isRowHidden( int row, const QModelIndex & parent ) const

$prototypeV2=bool isSortingEnabled() const

$prototypeV2=bool itemsExpandable() const

$prototypeV2=bool rootIsDecorated() const

$prototypeV2=void setAllColumnsShowFocus( bool enable )

$prototypeV2=void setAnimated( bool enable )

$prototypeV2=void setAutoExpandDelay( int delay )

$prototypeV2=void setColumnHidden( int column, bool hide )

$prototypeV2=void setColumnWidth( int column, int width )

$prototypeV2=void setExpanded( const QModelIndex & index, bool expanded )

$prototypeV2=void setExpandsOnDoubleClick( bool enable )

$prototypeV2=void setFirstColumnSpanned( int row, const QModelIndex & parent, bool span )

$prototypeV2=void setHeader( QHeaderView * header )

$prototypeV2=void setHeaderHidden( bool hide )

$prototypeV2=void setIndentation( int i )

$prototypeV2=void setItemsExpandable( bool enable )

$prototypeV2=void setRootIsDecorated( bool show )

$prototypeV2=void setRowHidden( int row, const QModelIndex & parent, bool hide )

$prototypeV2=void setSortingEnabled( bool enable )

$prototypeV2=void setUniformRowHeights( bool uniform )

$prototypeV2=void setWordWrap( bool on )

$prototypeV2=void sortByColumn( int column, Qt::SortOrder order )

$prototypeV2=bool uniformRowHeights() const

$prototypeV2=bool wordWrap() const

$prototypeV2=virtual void dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )

$prototypeV2=virtual QModelIndex indexAt( const QPoint & point ) const

$prototypeV2=virtual void keyboardSearch( const QString & search )

$prototypeV2=virtual void reset()

$prototypeV2=virtual void scrollTo( const QModelIndex & index, QTreeView::ScrollHint hint = QTreeView::EnsureVisible )

$prototypeV2=virtual void selectAll()

$prototypeV2=virtual void setModel( QAbstractItemModel * model )

$prototypeV2=virtual void setRootIndex( const QModelIndex & index )

$prototypeV2=virtual void setSelectionModel( QItemSelectionModel * selectionModel )

$prototypeV2=virtual QRect visualRect( const QModelIndex & index ) const

$prototypeV2=void collapse( const QModelIndex & index )

$prototypeV2=void collapseAll()

$prototypeV2=void expand( const QModelIndex & index )

$prototypeV2=void expandAll()

$prototypeV2=void expandToDepth( int depth )

$prototypeV2=void hideColumn( int column )

$prototypeV2=void resizeColumnToContents( int column )

$prototypeV2=void showColumn( int column )

$beginSignals
$signal=|collapsed(QModelIndex)
$signal=|expanded(QModelIndex)
$endSignals

#pragma ENDDUMP
