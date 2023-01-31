/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSHORTCUTSLOTS_H
#define QSHORTCUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QShortcut>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QShortcutSlots: public QObject
{
  Q_OBJECT
  public:
  QShortcutSlots(QObject * parent = 0);
  ~QShortcutSlots();
  public slots:
  void activated();
  void activatedAmbiguously();
};

#endif /* QSHORTCUTSLOTS_H */
