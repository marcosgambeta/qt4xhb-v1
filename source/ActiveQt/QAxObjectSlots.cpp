/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAxObjectSlots.h"

QAxObjectSlots::QAxObjectSlots( QObject * parent ) : QObject( parent )
{
}

QAxObjectSlots::~QAxObjectSlots()
{
}

void QAxObjectSlots::exception( int code, const QString & source, const QString & desc, const QString & help )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "exception(int,QString,QString,QString)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QAXOBJECT" );
    PHB_ITEM pCode = hb_itemPutNI( NULL, code );
    PHB_ITEM pSource = hb_itemPutC( NULL, QSTRINGTOSTRING( source ) );
    PHB_ITEM pDesc = hb_itemPutC( NULL, QSTRINGTOSTRING( desc ) );
    PHB_ITEM pHelp = hb_itemPutC( NULL, QSTRINGTOSTRING( help ) );

    hb_vmEvalBlockV( cb, 5, pSender, pCode, pSource, pDesc, pHelp );

    hb_itemRelease( pSender );
    hb_itemRelease( pCode );
    hb_itemRelease( pSource );
    hb_itemRelease( pDesc );
    hb_itemRelease( pHelp );
  }
}

void QAxObjectSlots::propertyChanged( const QString & name )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "propertyChanged(QString)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QAXOBJECT" );
    PHB_ITEM pName = hb_itemPutC( NULL, QSTRINGTOSTRING( name ) );

    hb_vmEvalBlockV( cb, 2, pSender, pName );

    hb_itemRelease( pSender );
    hb_itemRelease( pName );
  }
}

void QAxObjectSlots::signal( const QString & name, int argc, void * argv )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "signal(QString,int,void*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QAXOBJECT" );
    PHB_ITEM pName = hb_itemPutC( NULL, QSTRINGTOSTRING( name ) );
    PHB_ITEM pArgc = hb_itemPutNI( NULL, argc );
    PHB_ITEM pArgv = hb_itemPutPtr( NULL, static_cast< void * >( argv ) );

    hb_vmEvalBlockV( cb, 4, pSender, pName, pArgc, pArgv );

    hb_itemRelease( pSender );
    hb_itemRelease( pName );
    hb_itemRelease( pArgc );
    hb_itemRelease( pArgv );
  }
}

void QAxObjectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAxObject * obj = qobject_cast< QAxObject * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QAxObjectSlots * s = QCoreApplication::instance()->findChild<QAxObjectSlots *>();

    if( s == NULL )
    {
      s = new QAxObjectSlots();
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
