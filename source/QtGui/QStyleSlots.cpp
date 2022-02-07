/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStyleSlots.h"

QStyleSlots::QStyleSlots( QObject * parent ) : QObject( parent )
{
}

QStyleSlots::~QStyleSlots()
{
}

void QStyleSlots::currentChanged( int index )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentChanged(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSTYLE" );
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QStyleSlots::tabCloseRequested( int index )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "tabCloseRequested(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSTYLE" );
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QStyleSlots::tabMoved( int from, int to )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "tabMoved(int,int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSTYLE" );
    PHB_ITEM pFrom = hb_itemPutNI( NULL, from );
    PHB_ITEM pTo = hb_itemPutNI( NULL, to );

    hb_vmEvalBlockV( cb, 3, pSender, pFrom, pTo );

    hb_itemRelease( pSender );
    hb_itemRelease( pFrom );
    hb_itemRelease( pTo );
  }
}

void QStyleSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStyle * obj = qobject_cast< QStyle * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QStyleSlots * s = QCoreApplication::instance()->findChild<QStyleSlots *>();

    if( s == NULL )
    {
      s = new QStyleSlots();
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
