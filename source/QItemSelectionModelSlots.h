/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQITEMSELECTIONMODEL_H
#define SLOTSQITEMSELECTIONMODEL_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QItemSelectionModel>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QItemSelectionModel_release_codeblocks ();
class SlotsQItemSelectionModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQItemSelectionModel(QObject *parent = 0);
  ~SlotsQItemSelectionModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void currentChanged ( const QModelIndex & current, const QModelIndex & previous );
  void currentColumnChanged ( const QModelIndex & current, const QModelIndex & previous );
  void currentRowChanged ( const QModelIndex & current, const QModelIndex & previous );
  void selectionChanged ( const QItemSelection & selected, const QItemSelection & deselected );
};
#endif
