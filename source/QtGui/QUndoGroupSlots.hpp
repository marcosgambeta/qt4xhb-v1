//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QUNDOGROUPSLOTS_H
#define QUNDOGROUPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QUndoGroup>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

#include <QUndoStack>

class QUndoGroupSlots : public QObject
{
  Q_OBJECT
public:
  QUndoGroupSlots(QObject *parent = 0);
  ~QUndoGroupSlots();
public slots:
  void activeStackChanged(QUndoStack *stack);
  void canRedoChanged(bool canRedo);
  void canUndoChanged(bool canUndo);
  void cleanChanged(bool clean);
  void indexChanged(int idx);
  void redoTextChanged(const QString &redoText);
  void undoTextChanged(const QString &undoText);
};

#endif /* QUNDOGROUPSLOTS_H */
