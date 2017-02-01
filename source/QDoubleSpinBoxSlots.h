/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDOUBLESPINBOX_H
#define SLOTSQDOUBLESPINBOX_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDoubleSpinBox>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QDoubleSpinBox_release_codeblocks ();
class SlotsQDoubleSpinBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQDoubleSpinBox(QObject *parent = 0);
  ~SlotsQDoubleSpinBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void valueChanged ( double d );
  void valueChanged ( const QString & text );
};
#endif
