/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLISTWIDGET_H
#define SLOTSQLISTWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QListWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QListWidget_release_codeblocks ();

class SlotsQListWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQListWidget(QObject *parent = 0);
  ~SlotsQListWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentItemChanged ( QListWidgetItem * current, QListWidgetItem * previous );
  void currentRowChanged ( int currentRow );
  void currentTextChanged ( const QString & currentText );
  void itemActivated ( QListWidgetItem * item );
  void itemChanged ( QListWidgetItem * item );
  void itemClicked ( QListWidgetItem * item );
  void itemDoubleClicked ( QListWidgetItem * item );
  void itemEntered ( QListWidgetItem * item );
  void itemPressed ( QListWidgetItem * item );
  void itemSelectionChanged ();
};

#endif
