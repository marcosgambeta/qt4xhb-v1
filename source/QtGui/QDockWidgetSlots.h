/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDOCKWIDGET_H
#define SLOTSQDOCKWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDockWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QDockWidget_release_codeblocks ();

class SlotsQDockWidget: public QObject
{
  Q_OBJECT

  public:
  SlotsQDockWidget(QObject *parent = 0);
  ~SlotsQDockWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void allowedAreasChanged ( Qt::DockWidgetAreas allowedAreas );
  void dockLocationChanged ( Qt::DockWidgetArea area );
  void featuresChanged ( QDockWidget::DockWidgetFeatures features );
  void topLevelChanged ( bool topLevel );
  void visibilityChanged ( bool visible );
};

#endif
