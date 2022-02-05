/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVARIANTANIMATIONSLOTS_H
#define QVARIANTANIMATIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QVariantAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QVariantAnimationSlots: public QObject
{
  Q_OBJECT
  public:
  QVariantAnimationSlots( QObject * parent = 0 );
  ~QVariantAnimationSlots();
  public slots:
  void valueChanged( const QVariant & value );
};

#endif /* QVARIANTANIMATIONSLOTS_H */
