/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDateTimeEditSlots.hpp"

QDateTimeEditSlots::QDateTimeEditSlots(QObject * parent) : QObject(parent)
{
}

QDateTimeEditSlots::~QDateTimeEditSlots()
{
}

void QDateTimeEditSlots::dateChanged( const QDate & date )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "dateChanged(QDate)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDATETIMEEDIT");
    PHB_ITEM pDate = Qt4xHb::Signals_return_object( ( void * ) &date, "QDATE");

    hb_vmEvalBlockV( cb, 2, pSender, pDate );

    hb_itemRelease( pSender );
    hb_itemRelease( pDate );
  }
}

void QDateTimeEditSlots::dateTimeChanged( const QDateTime & datetime )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "dateTimeChanged(QDateTime)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDATETIMEEDIT");
    PHB_ITEM pDatetime = Qt4xHb::Signals_return_object( ( void * ) &datetime, "QDATETIME");

    hb_vmEvalBlockV( cb, 2, pSender, pDatetime );

    hb_itemRelease( pSender );
    hb_itemRelease( pDatetime );
  }
}

void QDateTimeEditSlots::timeChanged( const QTime & time )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "timeChanged(QTime)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDATETIMEEDIT");
    PHB_ITEM pTime = Qt4xHb::Signals_return_object( ( void * ) &time, "QTIME");

    hb_vmEvalBlockV( cb, 2, pSender, pTime );

    hb_itemRelease( pSender );
    hb_itemRelease( pTime );
  }
}

void QDateTimeEditSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDateTimeEdit * obj = qobject_cast<QDateTimeEdit*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QDateTimeEditSlots * s = QCoreApplication::instance()->findChild<QDateTimeEditSlots*>();

    if( s == NULL )
    {
      s = new QDateTimeEditSlots();
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
