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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QWidget * createEditor( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const

$prototypeV2=virtual bool editorEvent( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0

$prototypeV2=virtual void setEditorData( QWidget * editor, const QModelIndex & index ) const

$prototypeV2=virtual void setModelData( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const

$prototypeV2=virtual QSize sizeHint( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0

$prototypeV2=virtual void updateEditorGeometry( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const

$prototypeV2=bool helpEvent( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )

$beginSignals
$signal=|closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)
$signal=|commitData(QWidget*)
$signal=|sizeHintChanged(QModelIndex)
$endSignals

#pragma ENDDUMP
