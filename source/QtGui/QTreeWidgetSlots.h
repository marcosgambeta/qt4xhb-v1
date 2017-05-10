/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTREEWIDGET_H
#define SLOTSQTREEWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTreeWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTreeWidget_release_codeblocks ();

class SlotsQTreeWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQTreeWidget(QObject *parent = 0);
  ~SlotsQTreeWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentItemChanged ( QTreeWidgetItem * current, QTreeWidgetItem * previous );
  void itemActivated ( QTreeWidgetItem * item, int column );
  void itemChanged ( QTreeWidgetItem * item, int column );
  void itemClicked ( QTreeWidgetItem * item, int column );
  void itemCollapsed ( QTreeWidgetItem * item );
  void itemDoubleClicked ( QTreeWidgetItem * item, int column );
  void itemEntered ( QTreeWidgetItem * item, int column );
  void itemExpanded ( QTreeWidgetItem * item );
  void itemPressed ( QTreeWidgetItem * item, int column );
  void itemSelectionChanged ();
};

#endif
