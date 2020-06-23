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

$beginClassFrom=QAbstractItemDelegate

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyledItemDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=virtual QString displayText( const QVariant & value, const QLocale & locale ) const

$prototypeV2=QItemEditorFactory * itemEditorFactory() const

$prototypeV2=void setItemEditorFactory( QItemEditorFactory * factory )

$prototypeV2=virtual QWidget * createEditor( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const

$prototypeV2=virtual void setEditorData( QWidget * editor, const QModelIndex & index ) const

$prototypeV2=virtual void setModelData( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const

$prototypeV2=virtual QSize sizeHint( const QStyleOptionViewItem & option, const QModelIndex & index ) const

$prototypeV2=virtual void updateEditorGeometry( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const

#pragma ENDDUMP
