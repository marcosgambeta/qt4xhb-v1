/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDOUBLESPINBOXSLOTS_H
#define QDOUBLESPINBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QDoubleSpinBox>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QDoubleSpinBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QDoubleSpinBoxSlots(QObject * parent = 0);
  ~QDoubleSpinBoxSlots();
  public slots:
  void valueChanged( double d );
  void valueChanged( const QString & text );
};

#endif /* QDOUBLESPINBOXSLOTS_H */
