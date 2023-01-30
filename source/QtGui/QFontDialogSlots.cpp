/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFontDialogSlots.h"

QFontDialogSlots::QFontDialogSlots( QObject * parent ) : QObject( parent )
{
}

QFontDialogSlots::~QFontDialogSlots()
{
}

void QFontDialogSlots::currentFontChanged( const QFont & font )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentFontChanged(QFont)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QFONTDIALOG" );
    PHB_ITEM pFont = Qt4xHb::Signals_return_object( ( void * ) &font, "QFONT" );

    hb_vmEvalBlockV( cb, 2, pSender, pFont );

    hb_itemRelease( pSender );
    hb_itemRelease( pFont );
  }
}

void QFontDialogSlots::fontSelected( const QFont & font )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "fontSelected(QFont)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QFONTDIALOG" );
    PHB_ITEM pFont = Qt4xHb::Signals_return_object( ( void * ) &font, "QFONT" );

    hb_vmEvalBlockV( cb, 2, pSender, pFont );

    hb_itemRelease( pSender );
    hb_itemRelease( pFont );
  }
}

void QFontDialogSlots_connect_signal( const QString & signal, const QString & slot )
{
  QFontDialog * obj = qobject_cast< QFontDialog * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QFontDialogSlots * s = QCoreApplication::instance()->findChild<QFontDialogSlots *>();

    if( s == NULL )
    {
      s = new QFontDialogSlots();
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
