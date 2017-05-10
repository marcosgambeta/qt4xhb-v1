/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDECLARATIVECOMPONENT_H
#define SLOTSQDECLARATIVECOMPONENT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativeComponent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDeclarativeComponent_release_codeblocks ();

class SlotsQDeclarativeComponent: public QObject
{
  Q_OBJECT

  public:
  SlotsQDeclarativeComponent(QObject *parent = 0);
  ~SlotsQDeclarativeComponent();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void progressChanged ( qreal progress );
  void statusChanged ( QDeclarativeComponent::Status status );
};

#endif
