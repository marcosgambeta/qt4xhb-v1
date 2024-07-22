//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QCOMBOBOXSLOTS_H
#define QCOMBOBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QComboBox>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QComboBoxSlots : public QObject
{
  Q_OBJECT
public:
  QComboBoxSlots(QObject *parent = 0);
  ~QComboBoxSlots();
public slots:
  void activated(int index);
  void activated(const QString &text);
  void currentIndexChanged(int index);
  void currentIndexChanged(const QString &text);
  void editTextChanged(const QString &text);
  void highlighted(int index);
  void highlighted(const QString &text);
};

#endif // QCOMBOBOXSLOTS_H
