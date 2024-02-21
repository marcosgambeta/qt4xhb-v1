/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPCONTENTWIDGETSLOTS_H
#define QHELPCONTENTWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpContentWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QHelpContentWidgetSlots : public QObject
{
  Q_OBJECT
public:
  QHelpContentWidgetSlots(QObject *parent = 0);
  ~QHelpContentWidgetSlots();
public slots:
  void linkActivated(const QUrl &link);
};

#endif /* QHELPCONTENTWIDGETSLOTS_H */
