/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDIALOG_H
#define SLOTSQDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDialog_release_codeblocks ();

class SlotsQDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQDialog(QObject *parent = 0);
  ~SlotsQDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void accepted ();
  void finished ( int result );
  void rejected ();
};

#endif
