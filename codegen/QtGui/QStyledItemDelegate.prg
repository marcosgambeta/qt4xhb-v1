$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QStyledItemDelegate INHERIT QAbstractItemDelegate

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStyledItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyledItemDelegate ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_NEW )
{
  QStyledItemDelegate * o = new QStyledItemDelegate ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual QString displayText ( const QVariant & value, const QLocale & locale ) const
*/
$virtualMethod=|QString|displayText|const QVariant &,const QLocale &

/*
QItemEditorFactory * itemEditorFactory () const
*/
$method=|QItemEditorFactory *|itemEditorFactory|

/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
$method=|void|setItemEditorFactory|QItemEditorFactory *

/*
virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
$virtualMethod=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

/*
virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionViewItem &,const QModelIndex &

/*
virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
*/
$virtualMethod=|void|setEditorData|QWidget *,const QModelIndex &

/*
virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
*/
$virtualMethod=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

/*
virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
$virtualMethod=|QSize|sizeHint|const QStyleOptionViewItem &,const QModelIndex &

/*
virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
$virtualMethod=|void|updateEditorGeometry|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

#pragma ENDDUMP
