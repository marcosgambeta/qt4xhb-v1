/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpEngineCoreSlots.hpp"

QHelpEngineCoreSlots::QHelpEngineCoreSlots(QObject * parent) : QObject(parent)
{
}

QHelpEngineCoreSlots::~QHelpEngineCoreSlots()
{
}

void QHelpEngineCoreSlots::currentFilterChanged( const QString & newFilter )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentFilterChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPENGINECORE");
    PHB_ITEM pNewFilter = hb_itemPutC( NULL, QSTRINGTOSTRING( newFilter ) );

    hb_vmEvalBlockV( cb, 2, pSender, pNewFilter );

    hb_itemRelease( pSender );
    hb_itemRelease( pNewFilter );
  }
}

void QHelpEngineCoreSlots::setupFinished()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "setupFinished()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPENGINECORE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QHelpEngineCoreSlots::setupStarted()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "setupStarted()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPENGINECORE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QHelpEngineCoreSlots::warning( const QString & msg )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "warning(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPENGINECORE");
    PHB_ITEM pMsg = hb_itemPutC( NULL, QSTRINGTOSTRING( msg ) );

    hb_vmEvalBlockV( cb, 2, pSender, pMsg );

    hb_itemRelease( pSender );
    hb_itemRelease( pMsg );
  }
}

void QHelpEngineCoreSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpEngineCore * obj = qobject_cast<QHelpEngineCore*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QHelpEngineCoreSlots * s = QCoreApplication::instance()->findChild<QHelpEngineCoreSlots*>();

    if( s == NULL )
    {
      s = new QHelpEngineCoreSlots();
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
