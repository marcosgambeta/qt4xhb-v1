/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTIMELINESLOTS_H
#define QTIMELINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QTimeLine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QTimeLineSlots: public QObject
{
  Q_OBJECT
  public:
  QTimeLineSlots(QObject *parent = 0);
  ~QTimeLineSlots();
  public slots:
  void finished();
  void frameChanged( int frame );
  void stateChanged( QTimeLine::State newState );
  void valueChanged( qreal value );
};

#endif /* QTIMELINESLOTS_H */
