/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSQLDRIVERSLOTS_H
#define QSQLDRIVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtSql/QSqlDriver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QSqlDriverSlots: public QObject
{
  Q_OBJECT
  public:
  QSqlDriverSlots(QObject * parent = 0);
  ~QSqlDriverSlots();
  public slots:
  void notification( const QString & name );
};

#endif /* QSQLDRIVERSLOTS_H */