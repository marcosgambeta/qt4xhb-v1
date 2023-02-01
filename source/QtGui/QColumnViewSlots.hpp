/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCOLUMNVIEWSLOTS_H
#define QCOLUMNVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QColumnView>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QColumnViewSlots: public QObject
{
  Q_OBJECT
  public:
  QColumnViewSlots(QObject * parent = 0);
  ~QColumnViewSlots();
  public slots:
  void updatePreviewWidget( const QModelIndex & index );
};

#endif /* QCOLUMNVIEWSLOTS_H */
