/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAXSCRIPTSLOTS_H
#define QAXSCRIPTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <ActiveQt/QAxScript>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAxScriptSlots: public QObject
{
  Q_OBJECT
  public:
  QAxScriptSlots(QObject * parent = 0);
  ~QAxScriptSlots();
  public slots:
  void entered();
  void error( int code, const QString & description, int sourcePosition, const QString & sourceText );
  void finished();
  void finished( const QVariant & result );
  void finished( int code, const QString & source, const QString & description, const QString & help );
  void stateChanged( int state );
};

#endif /* QAXSCRIPTSLOTS_H */