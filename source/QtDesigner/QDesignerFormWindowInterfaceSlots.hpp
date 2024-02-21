/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDESIGNERFORMWINDOWINTERFACESLOTS_H
#define QDESIGNERFORMWINDOWINTERFACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDesigner/QDesignerFormWindowInterface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QDesignerFormWindowInterfaceSlots: public QObject
{
  Q_OBJECT
  public:
  QDesignerFormWindowInterfaceSlots(QObject * parent = 0);
  ~QDesignerFormWindowInterfaceSlots();
  public slots:
  void aboutToUnmanageWidget( QWidget * widget );
  void activated( QWidget * widget );
  void changed();
  void featureChanged( QDesignerFormWindowInterface::Feature feature );
  void fileNameChanged( const QString & fileName );
  void geometryChanged();
  void mainContainerChanged( QWidget * mainContainer );
  void objectRemoved( QObject * object2 );
  void resourceFilesChanged();
  void selectionChanged();
  void widgetManaged( QWidget * widget );
  void widgetRemoved( QWidget * widget );
  void widgetUnmanaged( QWidget * widget );
};

#endif /* QDESIGNERFORMWINDOWINTERFACESLOTS_H */
