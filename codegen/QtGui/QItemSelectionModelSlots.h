/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQITEMSELECTIONMODEL_H
#define SLOTSQITEMSELECTIONMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QItemSelectionModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QItemSelectionModel_release_codeblocks ();

class SlotsQItemSelectionModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQItemSelectionModel(QObject *parent = 0);
  ~SlotsQItemSelectionModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentChanged ( const QModelIndex & current, const QModelIndex & previous );
  void currentColumnChanged ( const QModelIndex & current, const QModelIndex & previous );
  void currentRowChanged ( const QModelIndex & current, const QModelIndex & previous );
  void selectionChanged ( const QItemSelection & selected, const QItemSelection & deselected );
};

#endif
