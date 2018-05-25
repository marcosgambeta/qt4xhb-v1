%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD displayText
   METHOD itemEditorFactory
   METHOD setItemEditorFactory
   METHOD createEditor
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyledItemDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual QString displayText ( const QVariant & value, const QLocale & locale ) const
$virtualMethod=|QString|displayText|const QVariant &,const QLocale &

$prototype=QItemEditorFactory * itemEditorFactory () const
$method=|QItemEditorFactory *|itemEditorFactory|

$prototype=void setItemEditorFactory ( QItemEditorFactory * factory )
$method=|void|setItemEditorFactory|QItemEditorFactory *

$prototype=virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|void|paint|QPainter *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
$virtualMethod=|void|setEditorData|QWidget *,const QModelIndex &

$prototype=virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
$virtualMethod=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

$prototype=virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|QSize|sizeHint|const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|void|updateEditorGeometry|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

#pragma ENDDUMP
