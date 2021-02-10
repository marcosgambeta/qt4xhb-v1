/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpIndexWidgetSlots.h"

QHelpIndexWidgetSlots::QHelpIndexWidgetSlots( QObject * parent ) : QObject( parent )
{
}

QHelpIndexWidgetSlots::~QHelpIndexWidgetSlots()
{
}

void QHelpIndexWidgetSlots::linkActivated( const QUrl & link, const QString & keyword )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "linkActivated(QUrl,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QHELPINDEXWIDGET" );
    PHB_ITEM plink = Qt4xHb::Signals_return_object( ( void * ) &link, "QURL" );
    PHB_ITEM pkeyword = hb_itemPutC( NULL, QSTRINGTOSTRING( keyword ) );

    hb_vmEvalBlockV( cb, 3, psender, plink, pkeyword );

    hb_itemRelease( psender );
    hb_itemRelease( plink );
    hb_itemRelease( pkeyword );
  }
}

void QHelpIndexWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpIndexWidget * obj = static_cast< QHelpIndexWidget * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QHelpIndexWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpIndexWidgetSlots *>();

    if( s == NULL )
    {
      s = new QHelpIndexWidgetSlots();
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
