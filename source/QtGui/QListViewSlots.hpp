//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QLISTVIEWSLOTS_H
#define QLISTVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QListView>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QListViewSlots : public QObject
{
  Q_OBJECT
public:
  QListViewSlots(QObject *parent = 0);
  ~QListViewSlots();
public slots:
  void indexesMoved(const QModelIndexList &indexes);
};

#endif /* QLISTVIEWSLOTS_H */
