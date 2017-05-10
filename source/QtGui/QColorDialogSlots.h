/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOLORDIALOG_H
#define SLOTSQCOLORDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QColorDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QColorDialog_release_codeblocks ();

class SlotsQColorDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQColorDialog(QObject *parent = 0);
  ~SlotsQColorDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void colorSelected ( const QColor & color );
  void currentColorChanged ( const QColor & color );
};

#endif
