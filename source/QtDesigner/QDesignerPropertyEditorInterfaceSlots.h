/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDESIGNERPROPERTYEDITORINTERFACE_H
#define SLOTSQDESIGNERPROPERTYEDITORINTERFACE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDesignerPropertyEditorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDesignerPropertyEditorInterface_release_codeblocks ();

class SlotsQDesignerPropertyEditorInterface: public QObject
{
  Q_OBJECT

  public:
  SlotsQDesignerPropertyEditorInterface(QObject *parent = 0);
  ~SlotsQDesignerPropertyEditorInterface();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void propertyChanged ( const QString & name, const QVariant & value );
};

#endif
