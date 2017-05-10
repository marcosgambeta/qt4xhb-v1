/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTITEMDELEGATE_H
#define SLOTSQABSTRACTITEMDELEGATE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractItemDelegate_release_codeblocks ();

class SlotsQAbstractItemDelegate: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractItemDelegate(QObject *parent = 0);
  ~SlotsQAbstractItemDelegate();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void closeEditor ( QWidget * editor, QAbstractItemDelegate::EndEditHint hint = QAbstractItemDelegate::NoHint );
  void commitData ( QWidget * editor );
  void sizeHintChanged ( const QModelIndex & index );
};

#endif
