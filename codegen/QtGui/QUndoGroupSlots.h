%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQUNDOGROUP_H
#define SLOTSQUNDOGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QUndoGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
