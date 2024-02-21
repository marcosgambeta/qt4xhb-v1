/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QComboBoxSlots.hpp"

QComboBoxSlots::QComboBoxSlots(QObject * parent) : QObject(parent)
{
}

QComboBoxSlots::~QComboBoxSlots()
{
}

void QComboBoxSlots::activated( int index )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "activated(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QComboBoxSlots::activated( const QString & text )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "activated(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pText = hb_itemPutC( NULL, QSTRINGTOSTRING( text ) );

    hb_vmEvalBlockV( cb, 2, pSender, pText );

    hb_itemRelease( pSender );
    hb_itemRelease( pText );
  }
}

void QComboBoxSlots::currentIndexChanged( int index )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentIndexChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QComboBoxSlots::currentIndexChanged( const QString & text )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentIndexChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pText = hb_itemPutC( NULL, QSTRINGTOSTRING( text ) );

    hb_vmEvalBlockV( cb, 2, pSender, pText );

    hb_itemRelease( pSender );
    hb_itemRelease( pText );
  }
}

void QComboBoxSlots::editTextChanged( const QString & text )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "editTextChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pText = hb_itemPutC( NULL, QSTRINGTOSTRING( text ) );

    hb_vmEvalBlockV( cb, 2, pSender, pText );

    hb_itemRelease( pSender );
    hb_itemRelease( pText );
  }
}

void QComboBoxSlots::highlighted( int index )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "highlighted(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QComboBoxSlots::highlighted( const QString & text )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "highlighted(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOMBOBOX");
    PHB_ITEM pText = hb_itemPutC( NULL, QSTRINGTOSTRING( text ) );

    hb_vmEvalBlockV( cb, 2, pSender, pText );

    hb_itemRelease( pSender );
    hb_itemRelease( pText );
  }
}

void QComboBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QComboBox * obj = qobject_cast<QComboBox*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QComboBoxSlots * s = QCoreApplication::instance()->findChild<QComboBoxSlots*>();

    if( s == NULL )
    {
      s = new QComboBoxSlots();
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
