//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QCLIPBOARDSLOTS_H
#define QCLIPBOARDSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QClipboard>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QClipboardSlots : public QObject
{
  Q_OBJECT
public:
  QClipboardSlots(QObject *parent = 0);
  ~QClipboardSlots();
public slots:
  void changed(QClipboard::Mode mode);
  void dataChanged();
  void findBufferChanged();
  void selectionChanged();
};

#endif /* QCLIPBOARDSLOTS_H */
