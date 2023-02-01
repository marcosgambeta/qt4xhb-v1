/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLOCALSERVERSLOTS_H
#define QLOCALSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QLocalServer>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QLocalServerSlots: public QObject
{
  Q_OBJECT
  public:
  QLocalServerSlots(QObject * parent = 0);
  ~QLocalServerSlots();
  public slots:
  void newConnection();
};

#endif /* QLOCALSERVERSLOTS_H */
