$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QSqlRelationalDelegate INHERIT QItemDelegate

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlRelationalDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSqlRelationalDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
$virtualMethod=|QWidget *|createEditor|QWidget *,const QStyleOptionViewItem &,const QModelIndex &

$prototype=virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
$virtualMethod=|void|setEditorData|QWidget *,const QModelIndex &

$prototype=virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
$virtualMethod=|void|setModelData|QWidget *,QAbstractItemModel *,const QModelIndex &

#pragma ENDDUMP
