/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAxScriptManagerSlots.hpp"

QAxScriptManagerSlots::QAxScriptManagerSlots(QObject * parent) : QObject(parent)
{
}

QAxScriptManagerSlots::~QAxScriptManagerSlots()
{
}

void QAxScriptManagerSlots::error( QAxScript * script, int code, const QString & description, int sourcePosition, const QString & sourceText )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "error(QAxScript*,int,QString,int,QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAXSCRIPTMANAGER");
    PHB_ITEM pScript = Qt4xHb::Signals_return_qobject( script, "QAXSCRIPT");
    PHB_ITEM pCode = hb_itemPutNI( NULL, code );
    PHB_ITEM pDescription = hb_itemPutC( NULL, QSTRINGTOSTRING( description ) );
    PHB_ITEM pSourcePosition = hb_itemPutNI( NULL, sourcePosition );
    PHB_ITEM pSourceText = hb_itemPutC( NULL, QSTRINGTOSTRING( sourceText ) );

    hb_vmEvalBlockV( cb, 6, pSender, pScript, pCode, pDescription, pSourcePosition, pSourceText );

    hb_itemRelease( pSender );
    hb_itemRelease( pScript );
    hb_itemRelease( pCode );
    hb_itemRelease( pDescription );
    hb_itemRelease( pSourcePosition );
    hb_itemRelease( pSourceText );
  }
}

void QAxScriptManagerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QAxScriptManagerSlots * s = QCoreApplication::instance()->findChild<QAxScriptManagerSlots*>();

    if( s == NULL )
    {
      s = new QAxScriptManagerSlots();
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
