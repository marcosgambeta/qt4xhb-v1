/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQINPUTDIALOG_H
#define SLOTSQINPUTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QInputDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QInputDialog_release_codeblocks ();

class SlotsQInputDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQInputDialog(QObject *parent = 0);
  ~SlotsQInputDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void doubleValueChanged ( double value );
  void doubleValueSelected ( double value );
  void intValueChanged ( int value );
  void intValueSelected ( int value );
  void textValueChanged ( const QString & text );
  void textValueSelected ( const QString & text );
};

#endif
