/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAXSCRIPTMANAGERSLOTS_H
#define QAXSCRIPTMANAGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <ActiveQt/QAxScriptManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QAxScriptManagerSlots: public QObject
{
  Q_OBJECT
  public:
  QAxScriptManagerSlots( QObject * parent = 0 );
  ~QAxScriptManagerSlots();
  public slots:
  void error( QAxScript * script, int code, const QString & description, int sourcePosition, const QString & sourceText );
};

#endif /* QAXSCRIPTMANAGERSLOTS_H */
