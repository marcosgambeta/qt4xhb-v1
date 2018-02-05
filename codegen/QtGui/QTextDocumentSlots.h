%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTextDocument>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTextDocument_release_codeblocks ();

class SlotsQTextDocument: public QObject
{
  Q_OBJECT

  public:
  SlotsQTextDocument(QObject *parent = 0);
  ~SlotsQTextDocument();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void blockCountChanged ( int newBlockCount );
  void contentsChange ( int position, int charsRemoved, int charsAdded );
  void contentsChanged ();
  void cursorPositionChanged ( const QTextCursor & cursor );
  void documentLayoutChanged ();
  void modificationChanged ( bool changed );
  void redoAvailable ( bool available );
  void undoAvailable ( bool available );
  void undoCommandAdded ();
};
