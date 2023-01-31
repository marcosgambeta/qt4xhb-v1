/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDockWidgetSlots.h"

QDockWidgetSlots::QDockWidgetSlots(QObject * parent) : QObject(parent)
{
}

QDockWidgetSlots::~QDockWidgetSlots()
{
}

void QDockWidgetSlots::allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "allowedAreasChanged(Qt::DockWidgetAreas)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDOCKWIDGET");
    PHB_ITEM pAllowedAreas = hb_itemPutNI( NULL, static_cast<int >( allowedAreas ) );

    hb_vmEvalBlockV( cb, 2, pSender, pAllowedAreas );

    hb_itemRelease( pSender );
    hb_itemRelease( pAllowedAreas );
  }
}

void QDockWidgetSlots::dockLocationChanged( Qt::DockWidgetArea area )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "dockLocationChanged(Qt::DockWidgetArea)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDOCKWIDGET");
    PHB_ITEM pArea = hb_itemPutNI( NULL, static_cast<int >( area ) );

    hb_vmEvalBlockV( cb, 2, pSender, pArea );

    hb_itemRelease( pSender );
    hb_itemRelease( pArea );
  }
}

void QDockWidgetSlots::featuresChanged( QDockWidget::DockWidgetFeatures features )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "featuresChanged(QDockWidget::DockWidgetFeatures)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDOCKWIDGET");
    PHB_ITEM pFeatures = hb_itemPutNI( NULL, static_cast<int >( features ) );

    hb_vmEvalBlockV( cb, 2, pSender, pFeatures );

    hb_itemRelease( pSender );
    hb_itemRelease( pFeatures );
  }
}

void QDockWidgetSlots::topLevelChanged( bool topLevel )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "topLevelChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDOCKWIDGET");
    PHB_ITEM pTopLevel = hb_itemPutL( NULL, topLevel );

    hb_vmEvalBlockV( cb, 2, pSender, pTopLevel );

    hb_itemRelease( pSender );
    hb_itemRelease( pTopLevel );
  }
}

void QDockWidgetSlots::visibilityChanged( bool visible )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "visibilityChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDOCKWIDGET");
    PHB_ITEM pVisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, pSender, pVisible );

    hb_itemRelease( pSender );
    hb_itemRelease( pVisible );
  }
}

void QDockWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDockWidget * obj = qobject_cast<QDockWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QDockWidgetSlots * s = QCoreApplication::instance()->findChild<QDockWidgetSlots*>();

    if( s == NULL )
    {
      s = new QDockWidgetSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
