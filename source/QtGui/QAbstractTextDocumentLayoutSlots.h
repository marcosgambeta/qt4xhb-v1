/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H
#define SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractTextDocumentLayout>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractTextDocumentLayout_release_codeblocks ();
class SlotsQAbstractTextDocumentLayout: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractTextDocumentLayout(QObject *parent = 0);
  ~SlotsQAbstractTextDocumentLayout();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void documentSizeChanged ( const QSizeF & newSize );
  void pageCountChanged ( int newPages );
  void update ( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) );
  void updateBlock ( const QTextBlock & block );
};
#endif
