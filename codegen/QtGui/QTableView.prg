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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QHeaderView>

$prototype=QTableView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=void clearSpans()

$prototypeV2=int columnAt( int x ) const

$prototypeV2=int columnSpan( int row, int column ) const

$prototypeV2=int columnViewportPosition( int column ) const

$prototypeV2=int columnWidth( int column ) const

$prototypeV2=Qt::PenStyle gridStyle() const

$prototypeV2=QHeaderView * horizontalHeader() const

$prototypeV2=bool isColumnHidden( int column ) const

$prototypeV2=bool isCornerButtonEnabled() const

$prototypeV2=bool isRowHidden( int row ) const

$prototypeV2=bool isSortingEnabled() const

$prototypeV2=int rowAt( int y ) const

$prototypeV2=int rowHeight( int row ) const

$prototypeV2=int rowSpan( int row, int column ) const

$prototypeV2=int rowViewportPosition( int row ) const

$prototypeV2=void setColumnHidden( int column, bool hide )

$prototypeV2=void setColumnWidth( int column, int width )

$prototypeV2=void setCornerButtonEnabled( bool enable )

$prototypeV2=void setGridStyle( Qt::PenStyle style )

$prototypeV2=void setHorizontalHeader( QHeaderView * header )

$prototypeV2=void setRowHeight( int row, int height )

$prototypeV2=void setRowHidden( int row, bool hide )

$prototypeV2=void setSortingEnabled( bool enable )

$prototypeV2=void setSpan( int row, int column, int rowSpanCount, int columnSpanCount )

$prototypeV2=void setVerticalHeader( QHeaderView * header )

$prototypeV2=void setWordWrap( bool on )

$prototypeV2=bool showGrid() const

$prototypeV2=void sortByColumn( int column, Qt::SortOrder order )

$prototypeV2=QHeaderView * verticalHeader() const

$prototypeV2=bool wordWrap() const

$prototypeV2=virtual QModelIndex indexAt( const QPoint & pos ) const

$prototypeV2=virtual void setModel( QAbstractItemModel * model )

$prototypeV2=virtual void setRootIndex( const QModelIndex & index )

$prototypeV2=virtual void setSelectionModel( QItemSelectionModel * selectionModel )

$prototypeV2=void hideColumn( int column )

$prototypeV2=void hideRow( int row )

$prototypeV2=void resizeColumnToContents( int column )

$prototypeV2=void resizeColumnsToContents()

$prototypeV2=void resizeRowToContents( int row )

$prototypeV2=void resizeRowsToContents()

$prototypeV2=void selectColumn( int column )

$prototypeV2=void selectRow( int row )

$prototypeV2=void setShowGrid( bool show )

$prototypeV2=void showColumn( int column )

$prototypeV2=void showRow( int row )

#pragma ENDDUMP
