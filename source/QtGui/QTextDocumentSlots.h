/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTEXTDOCUMENT_H
#define SLOTSQTEXTDOCUMENT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTextDocument>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
#endif
