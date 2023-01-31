/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAXWIDGETSLOTS_H
#define QAXWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <ActiveQt/QAxWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QAxWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QAxWidgetSlots(QObject * parent = 0);
  ~QAxWidgetSlots();
  public slots:
  void exception( int code, const QString & source, const QString & desc, const QString & help );
  void propertyChanged( const QString & name );
  void signal( const QString & name, int argc, void * argv );
};

#endif /* QAXWIDGETSLOTS_H */
