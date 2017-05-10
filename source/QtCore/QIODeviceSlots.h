/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQIODEVICE_H
#define SLOTSQIODEVICE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QIODevice>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QIODevice_release_codeblocks ();

class SlotsQIODevice: public QObject
{
  Q_OBJECT

  public:
  SlotsQIODevice(QObject *parent = 0);
  ~SlotsQIODevice();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void aboutToClose ();
  void bytesWritten ( qint64 bytes );
  void readChannelFinished ();
  void readyRead ();
};

#endif
