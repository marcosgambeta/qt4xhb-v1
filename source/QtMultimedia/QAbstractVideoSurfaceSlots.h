/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTVIDEOSURFACE_H
#define SLOTSQABSTRACTVIDEOSURFACE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractVideoSurface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractVideoSurface_release_codeblocks ();

class SlotsQAbstractVideoSurface: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractVideoSurface(QObject *parent = 0);
  ~SlotsQAbstractVideoSurface();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activeChanged(bool active);
  void surfaceFormatChanged(const QVideoSurfaceFormat &format);
  void supportedFormatsChanged();
};

#endif
