/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDIALOGSLOTS_H
#define QDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QDialog>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QDialogSlots: public QObject
{
  Q_OBJECT
  public:
  QDialogSlots(QObject * parent = 0);
  ~QDialogSlots();
  public slots:
  void accepted();
  void finished( int result );
  void rejected();
};

#endif /* QDIALOGSLOTS_H */
