//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QTABLEWIDGETSLOTS_H
#define QTABLEWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTableWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QTableWidgetSlots : public QObject
{
  Q_OBJECT
public:
  QTableWidgetSlots(QObject *parent = 0);
  ~QTableWidgetSlots();
public slots:
  void cellActivated(int row, int column);
  void cellChanged(int row, int column);
  void cellClicked(int row, int column);
  void cellDoubleClicked(int row, int column);
  void cellEntered(int row, int column);
  void cellPressed(int row, int column);
  void currentCellChanged(int currentRow, int currentColumn, int previousRow, int previousColumn);
  void currentItemChanged(QTableWidgetItem *current, QTableWidgetItem *previous);
  void itemActivated(QTableWidgetItem *item);
  void itemChanged(QTableWidgetItem *item);
  void itemClicked(QTableWidgetItem *item);
  void itemDoubleClicked(QTableWidgetItem *item);
  void itemEntered(QTableWidgetItem *item);
  void itemPressed(QTableWidgetItem *item);
  void itemSelectionChanged();
};

#endif // QTABLEWIDGETSLOTS_H
