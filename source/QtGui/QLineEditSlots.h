/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLINEEDIT_H
#define SLOTSQLINEEDIT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLineEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QLineEdit_release_codeblocks ();

class SlotsQLineEdit: public QObject
{
  Q_OBJECT

  public:
  SlotsQLineEdit(QObject *parent = 0);
  ~SlotsQLineEdit();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void cursorPositionChanged ( int iold, int inew );
  void editingFinished ();
  void returnPressed ();
  void selectionChanged ();
  void textChanged ( const QString & text );
  void textEdited ( const QString & text );
};

#endif
