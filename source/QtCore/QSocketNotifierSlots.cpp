/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSocketNotifierSlots.h"

QSocketNotifierSlots::QSocketNotifierSlots(QObject *parent) : QObject(parent)
{
}

QSocketNotifierSlots::~QSocketNotifierSlots()
{
}
void QSocketNotifierSlots::activated( int socket )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSOCKETNOTIFIER" );
    PHB_ITEM psocket = hb_itemPutNI( NULL, socket );
    hb_vmEvalBlockV( cb, 2, psender, psocket );
    hb_itemRelease( psender );
    hb_itemRelease( psocket );
  }
}

void QSocketNotifierSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSocketNotifier * obj = (QSocketNotifier *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSocketNotifierSlots * s = QCoreApplication::instance()->findChild<QSocketNotifierSlots *>();

    if( s == NULL )
    {
      s = new QSocketNotifierSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
