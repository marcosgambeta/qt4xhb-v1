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

$prototype=QColumnView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QList<int> columnWidths() const

$prototypeV2=QWidget * previewWidget() const

$prototypeV2=bool resizeGripsVisible() const

$prototypeV2=void setColumnWidths( const QList<int> & list )

$prototypeV2=void setPreviewWidget( QWidget * widget )

$prototypeV2=void setResizeGripsVisible( bool visible )

$prototypeV2=virtual QModelIndex indexAt( const QPoint & point ) const

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

$prototypeV2=virtual void selectAll()

$prototypeV2=virtual void setModel( QAbstractItemModel * model )

$prototypeV2=virtual void setRootIndex( const QModelIndex & index )

$prototypeV2=virtual void setSelectionModel( QItemSelectionModel * newSelectionModel )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual QRect visualRect( const QModelIndex & index ) const

$beginSignals
$signal=|updatePreviewWidget(QModelIndex)
$endSignals

#pragma ENDDUMP
