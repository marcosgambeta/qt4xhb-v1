/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTSLIDER_H
#define SLOTSQABSTRACTSLIDER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractSlider>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractSlider_release_codeblocks ();
class SlotsQAbstractSlider: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractSlider(QObject *parent = 0);
  ~SlotsQAbstractSlider();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void actionTriggered ( int action );
  void rangeChanged ( int min, int max );
  void sliderMoved ( int value );
  void sliderPressed ();
  void sliderReleased ();
  void valueChanged ( int value );
};
#endif
