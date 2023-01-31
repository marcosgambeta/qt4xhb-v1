/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTreeWidgetSlots.h"

QTreeWidgetSlots::QTreeWidgetSlots(QObject * parent) : QObject(parent)
{
}

QTreeWidgetSlots::~QTreeWidgetSlots()
{
}

void QTreeWidgetSlots::currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pCurrent = Qt4xHb::Signals_return_object( ( void * ) current, "QTREEWIDGETITEM");
    PHB_ITEM pPrevious = Qt4xHb::Signals_return_object( ( void * ) previous, "QTREEWIDGETITEM");

    hb_vmEvalBlockV( cb, 3, pSender, pCurrent, pPrevious );

    hb_itemRelease( pSender );
    hb_itemRelease( pCurrent );
    hb_itemRelease( pPrevious );
  }
}

void QTreeWidgetSlots::itemActivated( QTreeWidgetItem * item, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemActivated(QTreeWidgetItem*,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pItem, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
    hb_itemRelease( pColumn );
  }
}

void QTreeWidgetSlots::itemChanged( QTreeWidgetItem * item, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemChanged(QTreeWidgetItem*,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pItem, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
    hb_itemRelease( pColumn );
  }
}

void QTreeWidgetSlots::itemClicked( QTreeWidgetItem * item, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemClicked(QTreeWidgetItem*,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pItem, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
    hb_itemRelease( pColumn );
  }
}

void QTreeWidgetSlots::itemCollapsed( QTreeWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemCollapsed(QTreeWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTreeWidgetSlots::itemDoubleClicked( QTreeWidgetItem * item, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemDoubleClicked(QTreeWidgetItem*,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pItem, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
    hb_itemRelease( pColumn );
  }
}

void QTreeWidgetSlots::itemEntered( QTreeWidgetItem * item, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemEntered(QTreeWidgetItem*,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pItem, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
    hb_itemRelease( pColumn );
  }
}

void QTreeWidgetSlots::itemExpanded( QTreeWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemExpanded(QTreeWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTreeWidgetSlots::itemPressed( QTreeWidgetItem * item, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemPressed(QTreeWidgetItem*,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTREEWIDGETITEM");
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pItem, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
    hb_itemRelease( pColumn );
  }
}

void QTreeWidgetSlots::itemSelectionChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemSelectionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEWIDGET");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QTreeWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTreeWidget * obj = qobject_cast<QTreeWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QTreeWidgetSlots * s = QCoreApplication::instance()->findChild<QTreeWidgetSlots*>();

    if( s == NULL )
    {
      s = new QTreeWidgetSlots();
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
