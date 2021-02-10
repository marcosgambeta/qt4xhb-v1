/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSqlDriverSlots.h"

QSqlDriverSlots::QSqlDriverSlots( QObject * parent ) : QObject( parent )
{
}

QSqlDriverSlots::~QSqlDriverSlots()
{
}

void QSqlDriverSlots::notification( const QString & name )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "notification(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QSQLDRIVER" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING( name ) );

    hb_vmEvalBlockV( cb, 2, psender, pname );

    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void QSqlDriverSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSqlDriver * obj = static_cast< QSqlDriver * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QSqlDriverSlots * s = QCoreApplication::instance()->findChild<QSqlDriverSlots *>();

    if( s == NULL )
    {
      s = new QSqlDriverSlots();
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
