/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSPINBOX_H
#define SLOTSQSPINBOX_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSpinBox>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QSpinBox_release_codeblocks ();
class SlotsQSpinBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQSpinBox(QObject *parent = 0);
  ~SlotsQSpinBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void valueChanged ( int i );
  void valueChanged ( const QString & text );
};
#endif
