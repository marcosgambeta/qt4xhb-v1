%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H
#define SLOTSQABSTRACTTEXTDOCUMENTLAYOUT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractTextDocumentLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
