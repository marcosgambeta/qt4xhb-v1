/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQUNDOGROUP_H
#define SLOTSQUNDOGROUP_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QUndoGroup>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QUndoGroup_release_codeblocks ();
class SlotsQUndoGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQUndoGroup(QObject *parent = 0);
  ~SlotsQUndoGroup();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void activeStackChanged ( QUndoStack * stack );
  void canRedoChanged ( bool canRedo );
  void canUndoChanged ( bool canUndo );
  void cleanChanged ( bool clean );
  void indexChanged ( int idx );
  void redoTextChanged ( const QString & redoText );
  void undoTextChanged ( const QString & undoText );
};
#endif
