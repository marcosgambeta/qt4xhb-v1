/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSPLASHSCREEN_H
#define SLOTSQSPLASHSCREEN_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSplashScreen>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSplashScreen_release_codeblocks ();

class SlotsQSplashScreen: public QObject
{
  Q_OBJECT

  public:
  SlotsQSplashScreen(QObject *parent = 0);
  ~SlotsQSplashScreen();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void messageChanged ( const QString & message );
};

#endif
