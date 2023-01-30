/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDesignerFormWindowInterfaceSlots.h"

QDesignerFormWindowInterfaceSlots::QDesignerFormWindowInterfaceSlots( QObject * parent ) : QObject( parent )
{
}

QDesignerFormWindowInterfaceSlots::~QDesignerFormWindowInterfaceSlots()
{
}

void QDesignerFormWindowInterfaceSlots::aboutToUnmanageWidget( QWidget * widget )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "aboutToUnmanageWidget(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pWidget = Qt4xHb::Signals_return_qobject( widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pWidget );

    hb_itemRelease( pSender );
    hb_itemRelease( pWidget );
  }
}

void QDesignerFormWindowInterfaceSlots::activated( QWidget * widget )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "activated(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pWidget = Qt4xHb::Signals_return_qobject( widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pWidget );

    hb_itemRelease( pSender );
    hb_itemRelease( pWidget );
  }
}

void QDesignerFormWindowInterfaceSlots::changed()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "changed()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QDesignerFormWindowInterfaceSlots::featureChanged( QDesignerFormWindowInterface::Feature feature )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "featureChanged(QDesignerFormWindowInterface::Feature)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pFeature = hb_itemPutNI( NULL, static_cast<int >( feature ) );

    hb_vmEvalBlockV( cb, 2, pSender, pFeature );

    hb_itemRelease( pSender );
    hb_itemRelease( pFeature );
  }
}

void QDesignerFormWindowInterfaceSlots::fileNameChanged( const QString & fileName )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "fileNameChanged(QString)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pFileName = hb_itemPutC( NULL, QSTRINGTOSTRING( fileName ) );

    hb_vmEvalBlockV( cb, 2, pSender, pFileName );

    hb_itemRelease( pSender );
    hb_itemRelease( pFileName );
  }
}

void QDesignerFormWindowInterfaceSlots::geometryChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "geometryChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QDesignerFormWindowInterfaceSlots::mainContainerChanged( QWidget * mainContainer )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "mainContainerChanged(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pMainContainer = Qt4xHb::Signals_return_qobject( mainContainer, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pMainContainer );

    hb_itemRelease( pSender );
    hb_itemRelease( pMainContainer );
  }
}

void QDesignerFormWindowInterfaceSlots::objectRemoved( QObject * object2 )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "objectRemoved(QObject*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pObject2 = Qt4xHb::Signals_return_qobject( object2, "QOBJECT" );

    hb_vmEvalBlockV( cb, 2, pSender, pObject2 );

    hb_itemRelease( pSender );
    hb_itemRelease( pObject2 );
  }
}

void QDesignerFormWindowInterfaceSlots::resourceFilesChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "resourceFilesChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QDesignerFormWindowInterfaceSlots::selectionChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QDesignerFormWindowInterfaceSlots::widgetManaged( QWidget * widget )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "widgetManaged(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pWidget = Qt4xHb::Signals_return_qobject( widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pWidget );

    hb_itemRelease( pSender );
    hb_itemRelease( pWidget );
  }
}

void QDesignerFormWindowInterfaceSlots::widgetRemoved( QWidget * widget )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "widgetRemoved(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pWidget = Qt4xHb::Signals_return_qobject( widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pWidget );

    hb_itemRelease( pSender );
    hb_itemRelease( pWidget );
  }
}

void QDesignerFormWindowInterfaceSlots::widgetUnmanaged( QWidget * widget )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "widgetUnmanaged(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pWidget = Qt4xHb::Signals_return_qobject( widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pWidget );

    hb_itemRelease( pSender );
    hb_itemRelease( pWidget );
  }
}

void QDesignerFormWindowInterfaceSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QDesignerFormWindowInterfaceSlots * s = QCoreApplication::instance()->findChild<QDesignerFormWindowInterfaceSlots *>();

    if( s == NULL )
    {
      s = new QDesignerFormWindowInterfaceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt4xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
