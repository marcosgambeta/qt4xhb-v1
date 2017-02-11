/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQUNDOSTACK_H
#define SLOTSQUNDOSTACK_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QUndoStack>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QUndoStack_release_codeblocks ();
class SlotsQUndoStack: public QObject
{
  Q_OBJECT
  public:
  SlotsQUndoStack(QObject *parent = 0);
  ~SlotsQUndoStack();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void canRedoChanged ( bool canRedo );
  void canUndoChanged ( bool canUndo );
  void cleanChanged ( bool clean );
  void indexChanged ( int idx );
  void redoTextChanged ( const QString & redoText );
  void undoTextChanged ( const QString & undoText );
};
#endif
