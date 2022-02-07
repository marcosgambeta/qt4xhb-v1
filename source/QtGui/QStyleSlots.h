/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTYLESLOTS_H
#define QSTYLESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QStyleSlots: public QObject
{
  Q_OBJECT
  public:
  QStyleSlots( QObject * parent = 0 );
  ~QStyleSlots();
  public slots:
  void currentChanged( int index );
  void tabCloseRequested( int index );
  void tabMoved( int from, int to );
};

#endif /* QSTYLESLOTS_H */
