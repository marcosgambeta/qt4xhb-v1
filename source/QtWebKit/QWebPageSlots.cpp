/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebPageSlots.hpp"

QWebPageSlots::QWebPageSlots(QObject * parent) : QObject(parent)
{
}

QWebPageSlots::~QWebPageSlots()
{
}

void QWebPageSlots::contentsChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "contentsChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QWebPageSlots::databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "databaseQuotaExceeded(QWebFrame*,QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pFrame = Qt4xHb::Signals_return_qobject( frame, "QWEBFRAME");
    PHB_ITEM pDatabaseName = hb_itemPutC( NULL, ( const char * ) databaseName.toLatin1().data() );

    hb_vmEvalBlockV( cb, 3, pSender, pFrame, pDatabaseName );

    hb_itemRelease( pSender );
    hb_itemRelease( pFrame );
    hb_itemRelease( pDatabaseName );
  }
}

void QWebPageSlots::downloadRequested( const QNetworkRequest & request )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "downloadRequested(QNetworkRequest)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pRequest = Qt4xHb::Signals_return_object( ( void * ) &request, "QNETWORKREQUEST");

    hb_vmEvalBlockV( cb, 2, pSender, pRequest );

    hb_itemRelease( pSender );
    hb_itemRelease( pRequest );
  }
}

void QWebPageSlots::frameCreated( QWebFrame * frame )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "frameCreated(QWebFrame*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pFrame = Qt4xHb::Signals_return_qobject( frame, "QWEBFRAME");

    hb_vmEvalBlockV( cb, 2, pSender, pFrame );

    hb_itemRelease( pSender );
    hb_itemRelease( pFrame );
  }
}

void QWebPageSlots::geometryChangeRequested( const QRect & geom )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "geometryChangeRequested(QRect)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pGeom = Qt4xHb::Signals_return_object( ( void * ) &geom, "QRECT");

    hb_vmEvalBlockV( cb, 2, pSender, pGeom );

    hb_itemRelease( pSender );
    hb_itemRelease( pGeom );
  }
}

void QWebPageSlots::linkClicked( const QUrl & url )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "linkClicked(QUrl)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pUrl = Qt4xHb::Signals_return_object( ( void * ) &url, "QURL");

    hb_vmEvalBlockV( cb, 2, pSender, pUrl );

    hb_itemRelease( pSender );
    hb_itemRelease( pUrl );
  }
}

void QWebPageSlots::linkHovered( const QString & link, const QString & title, const QString & textContent )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "linkHovered(QString,QString,QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pLink = hb_itemPutC( NULL, QSTRINGTOSTRING( link ) );
    PHB_ITEM pTitle = hb_itemPutC( NULL, QSTRINGTOSTRING( title ) );
    PHB_ITEM pTextContent = hb_itemPutC( NULL, QSTRINGTOSTRING( textContent ) );

    hb_vmEvalBlockV( cb, 4, pSender, pLink, pTitle, pTextContent );

    hb_itemRelease( pSender );
    hb_itemRelease( pLink );
    hb_itemRelease( pTitle );
    hb_itemRelease( pTextContent );
  }
}

void QWebPageSlots::loadFinished( bool ok )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "loadFinished(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pOk = hb_itemPutL( NULL, ok );

    hb_vmEvalBlockV( cb, 2, pSender, pOk );

    hb_itemRelease( pSender );
    hb_itemRelease( pOk );
  }
}

void QWebPageSlots::loadProgress( int progress )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "loadProgress(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pProgress = hb_itemPutNI( NULL, progress );

    hb_vmEvalBlockV( cb, 2, pSender, pProgress );

    hb_itemRelease( pSender );
    hb_itemRelease( pProgress );
  }
}

void QWebPageSlots::loadStarted()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "loadStarted()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QWebPageSlots::menuBarVisibilityChangeRequested( bool visible )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "menuBarVisibilityChangeRequested(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pVisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, pSender, pVisible );

    hb_itemRelease( pSender );
    hb_itemRelease( pVisible );
  }
}

void QWebPageSlots::microFocusChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "microFocusChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QWebPageSlots::printRequested( QWebFrame * frame )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "printRequested(QWebFrame*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pFrame = Qt4xHb::Signals_return_qobject( frame, "QWEBFRAME");

    hb_vmEvalBlockV( cb, 2, pSender, pFrame );

    hb_itemRelease( pSender );
    hb_itemRelease( pFrame );
  }
}

void QWebPageSlots::repaintRequested( const QRect & dirtyRect )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "repaintRequested(QRect)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pDirtyRect = Qt4xHb::Signals_return_object( ( void * ) &dirtyRect, "QRECT");

    hb_vmEvalBlockV( cb, 2, pSender, pDirtyRect );

    hb_itemRelease( pSender );
    hb_itemRelease( pDirtyRect );
  }
}

void QWebPageSlots::restoreFrameStateRequested( QWebFrame * frame )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "restoreFrameStateRequested(QWebFrame*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pFrame = Qt4xHb::Signals_return_qobject( frame, "QWEBFRAME");

    hb_vmEvalBlockV( cb, 2, pSender, pFrame );

    hb_itemRelease( pSender );
    hb_itemRelease( pFrame );
  }
}

void QWebPageSlots::saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pFrame = Qt4xHb::Signals_return_qobject( frame, "QWEBFRAME");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QWEBHISTORYITEM");

    hb_vmEvalBlockV( cb, 3, pSender, pFrame, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pFrame );
    hb_itemRelease(pItem);
  }
}

void QWebPageSlots::scrollRequested( int dx, int dy, const QRect & rectToScroll )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "scrollRequested(int,int,QRect)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pDx = hb_itemPutNI( NULL, dx );
    PHB_ITEM pDy = hb_itemPutNI( NULL, dy );
    PHB_ITEM pRectToScroll = Qt4xHb::Signals_return_object( ( void * ) &rectToScroll, "QRECT");

    hb_vmEvalBlockV( cb, 4, pSender, pDx, pDy, pRectToScroll );

    hb_itemRelease( pSender );
    hb_itemRelease( pDx );
    hb_itemRelease( pDy );
    hb_itemRelease( pRectToScroll );
  }
}

void QWebPageSlots::selectionChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "selectionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QWebPageSlots::statusBarMessage( const QString & text )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "statusBarMessage(QString)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pText = hb_itemPutC( NULL, QSTRINGTOSTRING( text ) );

    hb_vmEvalBlockV( cb, 2, pSender, pText );

    hb_itemRelease( pSender );
    hb_itemRelease( pText );
  }
}

void QWebPageSlots::statusBarVisibilityChangeRequested( bool visible )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "statusBarVisibilityChangeRequested(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pVisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, pSender, pVisible );

    hb_itemRelease( pSender );
    hb_itemRelease( pVisible );
  }
}

void QWebPageSlots::toolBarVisibilityChangeRequested( bool visible )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "toolBarVisibilityChangeRequested(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pVisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, pSender, pVisible );

    hb_itemRelease( pSender );
    hb_itemRelease( pVisible );
  }
}

void QWebPageSlots::unsupportedContent( QNetworkReply * reply )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "unsupportedContent(QNetworkReply*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");
    PHB_ITEM pReply = Qt4xHb::Signals_return_qobject( reply, "QNETWORKREPLY");

    hb_vmEvalBlockV( cb, 2, pSender, pReply );

    hb_itemRelease( pSender );
    hb_itemRelease( pReply );
  }
}

void QWebPageSlots::windowCloseRequested()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "windowCloseRequested()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWEBPAGE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QWebPageSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QWebPageSlots * s = QCoreApplication::instance()->findChild<QWebPageSlots*>();

    if( s == NULL )
    {
      s = new QWebPageSlots();
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
