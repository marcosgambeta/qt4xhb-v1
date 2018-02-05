%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTextEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTextEdit_release_codeblocks ();

class SlotsQTextEdit: public QObject
{
  Q_OBJECT

  public:
  SlotsQTextEdit(QObject *parent = 0);
  ~SlotsQTextEdit();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void copyAvailable ( bool yes );
  void currentCharFormatChanged ( const QTextCharFormat & f );
  void cursorPositionChanged ();
  void redoAvailable ( bool available );
  void selectionChanged ();
  void textChanged ();
  void undoAvailable ( bool available );
};
