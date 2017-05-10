/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHEADERVIEW_H
#define SLOTSQHEADERVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHeaderView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHeaderView_release_codeblocks ();

class SlotsQHeaderView: public QObject
{
  Q_OBJECT

  public:
  SlotsQHeaderView(QObject *parent = 0);
  ~SlotsQHeaderView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void geometriesChanged ();
  void sectionAutoResize ( int logicalIndex, QHeaderView::ResizeMode mode );
  void sectionClicked ( int logicalIndex );
  void sectionCountChanged ( int oldCount, int newCount );
  void sectionDoubleClicked ( int logicalIndex );
  void sectionEntered ( int logicalIndex );
  void sectionHandleDoubleClicked ( int logicalIndex );
  void sectionMoved ( int logicalIndex, int oldVisualIndex, int newVisualIndex );
  void sectionPressed ( int logicalIndex );
  void sectionResized ( int logicalIndex, int oldSize, int newSize );
  void sortIndicatorChanged ( int logicalIndex, Qt::SortOrder order );
};

#endif
