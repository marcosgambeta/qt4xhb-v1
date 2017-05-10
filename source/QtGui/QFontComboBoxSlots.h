/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFONTCOMBOBOX_H
#define SLOTSQFONTCOMBOBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFontComboBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QFontComboBox_release_codeblocks ();

class SlotsQFontComboBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQFontComboBox(QObject *parent = 0);
  ~SlotsQFontComboBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentFontChanged ( const QFont & font );
};

#endif
