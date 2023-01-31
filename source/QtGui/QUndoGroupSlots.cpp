/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QUndoGroupSlots.h"

QUndoGroupSlots::QUndoGroupSlots(QObject * parent) : QObject(parent)
{
}

QUndoGroupSlots::~QUndoGroupSlots()
{
}

void QUndoGroupSlots::activeStackChanged( QUndoStack * stack )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "activeStackChanged(QUndoStack*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pStack = Qt4xHb::Signals_return_qobject( stack, "QUNDOSTACK");

    hb_vmEvalBlockV( cb, 2, pSender, pStack );

    hb_itemRelease( pSender );
    hb_itemRelease( pStack );
  }
}

void QUndoGroupSlots::canRedoChanged( bool canRedo )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "canRedoChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pCanRedo = hb_itemPutL( NULL, canRedo );

    hb_vmEvalBlockV( cb, 2, pSender, pCanRedo );

    hb_itemRelease( pSender );
    hb_itemRelease( pCanRedo );
  }
}

void QUndoGroupSlots::canUndoChanged( bool canUndo )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "canUndoChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pCanUndo = hb_itemPutL( NULL, canUndo );

    hb_vmEvalBlockV( cb, 2, pSender, pCanUndo );

    hb_itemRelease( pSender );
    hb_itemRelease( pCanUndo );
  }
}

void QUndoGroupSlots::cleanChanged( bool clean )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cleanChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pClean = hb_itemPutL( NULL, clean );

    hb_vmEvalBlockV( cb, 2, pSender, pClean );

    hb_itemRelease( pSender );
    hb_itemRelease( pClean );
  }
}

void QUndoGroupSlots::indexChanged( int idx )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "indexChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pIdx = hb_itemPutNI( NULL, idx );

    hb_vmEvalBlockV( cb, 2, pSender, pIdx );

    hb_itemRelease( pSender );
    hb_itemRelease( pIdx );
  }
}

void QUndoGroupSlots::redoTextChanged( const QString & redoText )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "redoTextChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pRedoText = hb_itemPutC( NULL, QSTRINGTOSTRING( redoText ) );

    hb_vmEvalBlockV( cb, 2, pSender, pRedoText );

    hb_itemRelease( pSender );
    hb_itemRelease( pRedoText );
  }
}

void QUndoGroupSlots::undoTextChanged( const QString & undoText )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "undoTextChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QUNDOGROUP");
    PHB_ITEM pUndoText = hb_itemPutC( NULL, QSTRINGTOSTRING( undoText ) );

    hb_vmEvalBlockV( cb, 2, pSender, pUndoText );

    hb_itemRelease( pSender );
    hb_itemRelease( pUndoText );
  }
}

void QUndoGroupSlots_connect_signal( const QString & signal, const QString & slot )
{
  QUndoGroup * obj = qobject_cast<QUndoGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QUndoGroupSlots * s = QCoreApplication::instance()->findChild<QUndoGroupSlots*>();

    if( s == NULL )
    {
      s = new QUndoGroupSlots();
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
