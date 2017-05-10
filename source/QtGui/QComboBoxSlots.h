/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOMBOBOX_H
#define SLOTSQCOMBOBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QComboBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QComboBox_release_codeblocks ();

class SlotsQComboBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQComboBox(QObject *parent = 0);
  ~SlotsQComboBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activated ( int index );
  void activated ( const QString & text );
  void currentIndexChanged ( int index );
  void currentIndexChanged ( const QString & text );
  void editTextChanged ( const QString & text );
  void highlighted ( int index );
  void highlighted ( const QString & text );
};

#endif
