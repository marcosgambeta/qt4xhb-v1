//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSCRIPTENGINESLOTS_H
#define QSCRIPTENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtScript/QScriptEngine>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QScriptEngineSlots : public QObject
{
  Q_OBJECT
public:
  QScriptEngineSlots(QObject *parent = 0);
  ~QScriptEngineSlots();
public slots:
  void signalHandlerException(const QScriptValue &exception);
};

#endif // QSCRIPTENGINESLOTS_H
