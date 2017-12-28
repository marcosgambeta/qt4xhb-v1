$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QAbstractItemDelegate INHERIT QObject

   METHOD delete
   METHOD createEditor
   METHOD editorEvent
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry
   METHOD helpEvent

   METHOD onCloseEditor
   METHOD onCommitData
   METHOD onSizeHintChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual bool editorEvent ( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )
$virtualMethod=|bool|editorEvent|QEvent *,QAbstractItemModel *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
$virtualMethod=|void|paint|QPainter *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
$virtualMethod=|void|setEditorData|QWidget *,const QModelIndex &

$prototype=virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
$virtualMethod=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

$prototype=virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
$virtualMethod=|QSize|sizeHint|const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|void|updateEditorGeometry|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=bool helpEvent ( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )
$method=|bool|helpEvent|QHelpEvent *,QAbstractItemView *,const QStyleOptionViewItem &,const QModelIndex &

#pragma ENDDUMP
