/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPLAINTEXTEDIT_H
#define SLOTSQPLAINTEXTEDIT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QPlainTextEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QPlainTextEdit_release_codeblocks ();

class SlotsQPlainTextEdit: public QObject
{
  Q_OBJECT

  public:
  SlotsQPlainTextEdit(QObject *parent = 0);
  ~SlotsQPlainTextEdit();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void blockCountChanged ( int newBlockCount );
  void copyAvailable ( bool yes );
  void cursorPositionChanged ();
  void modificationChanged ( bool changed );
  void redoAvailable ( bool available );
  void selectionChanged ();
  void textChanged ();
  void undoAvailable ( bool available );
  void updateRequest ( const QRect & rect, int dy );
};

#endif
