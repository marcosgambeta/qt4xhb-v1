/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSQLTABLEMODEL_H
#define SLOTSQSQLTABLEMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSqlTableModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSqlTableModel_release_codeblocks ();

class SlotsQSqlTableModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQSqlTableModel(QObject *parent = 0);
  ~SlotsQSqlTableModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void beforeDelete ( int row );
  void beforeInsert ( QSqlRecord & record );
  void beforeUpdate ( int row, QSqlRecord & record );
  void primeInsert ( int row, QSqlRecord & record );
};

#endif
