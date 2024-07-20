//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QICON
REQUEST QURL
REQUEST QWEBHISTORY
REQUEST QWEBPAGE
REQUEST QWEBSETTINGS
#endif

CLASS QGraphicsWebView INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD findText
   METHOD history
   METHOD icon
   METHOD isModified
   METHOD isTiledBackingStoreFrozen
   METHOD load
   METHOD page
   METHOD pageAction
   METHOD resizesToContents
   METHOD setContent
   METHOD setHtml
   METHOD setPage
   METHOD setResizesToContents
   METHOD setTiledBackingStoreFrozen
   METHOD setUrl
   METHOD setZoomFactor
   METHOD settings
   METHOD title
   METHOD triggerPageAction
   METHOD url
   METHOD zoomFactor
   METHOD back
   METHOD forward
   METHOD reload
   METHOD stop

   METHOD onIconChanged
   METHOD onLinkClicked
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onStatusBarMessage
   METHOD onTitleChanged
   METHOD onUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsWebView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtWebKit/QGraphicsWebView>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QAction>

    /*
    QGraphicsWebView( QGraphicsItem * parent = 0 )
    */
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQGRAPHICSITEM(1) || HB_ISNIL(1)))
  {
    QGraphicsWebView *obj = new QGraphicsWebView(HB_ISNIL(1) ? 0 : static_cast<QGraphicsItem *>(Qt4xHb::itemGetPtr(1)));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_DELETE)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool findText( const QString &subString, QWebPage::FindFlags options = 0 )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_FINDTEXT)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->findText(PQSTRING(1), HB_ISNIL(2) ? (QWebPage::FindFlags)0 : (QWebPage::FindFlags)hb_parni(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QWebHistory * history() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_HISTORY)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWebHistory *ptr = obj->history();
      Qt4xHb::createReturnClass(ptr, "QWEBHISTORY", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QIcon icon() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ICON)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QIcon *ptr = new QIcon(obj->icon());
      Qt4xHb::createReturnClass(ptr, "QICON", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isModified() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ISMODIFIED)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isModified());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isTiledBackingStoreFrozen() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ISTILEDBACKINGSTOREFROZEN)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isTiledBackingStoreFrozen());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_LOAD)
{
  if (ISNUMPAR(1) && ISQURL(1))
  {
    /*
    void load( const QUrl &url )
    */
    QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->load(*PQURL(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(1, 3) && ISQNETWORKREQUEST(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQBYTEARRAY(3) || HB_ISNIL(3)))
  {
    /*
    void load( const QNetworkRequest &request, QNetworkAccessManager::Operation operation =
    QNetworkAccessManager::GetOperation, const QByteArray &body = QByteArray() )
    */
    QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->load(*PQNETWORKREQUEST(1),
                HB_ISNIL(2) ? (QNetworkAccessManager::Operation)QNetworkAccessManager::GetOperation
                            : (QNetworkAccessManager::Operation)hb_parni(2),
                HB_ISNIL(3) ? QByteArray() : *static_cast<QByteArray *>(Qt4xHb::itemGetPtr(3)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QWebPage * page() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_PAGE)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWebPage *ptr = obj->page();
      Qt4xHb::createReturnQObjectClass(ptr, "QWEBPAGE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAction * pageAction( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_PAGEACTION)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QAction *ptr = obj->pageAction((QWebPage::WebAction)hb_parni(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool resizesToContents() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_RESIZESTOCONTENTS)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->resizesToContents());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setContent( const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl() )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETCONTENT)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && ISQBYTEARRAY(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (ISQURL(3) || HB_ISNIL(3)))
    {
#endif
      obj->setContent(*PQBYTEARRAY(1), OPQSTRING(2, QString()),
                      HB_ISNIL(3) ? QUrl() : *static_cast<QUrl *>(Qt4xHb::itemGetPtr(3)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHtml( const QString &html, const QUrl &baseUrl = QUrl() )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETHTML)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQURL(2) || HB_ISNIL(2)))
    {
#endif
      obj->setHtml(PQSTRING(1), HB_ISNIL(2) ? QUrl() : *static_cast<QUrl *>(Qt4xHb::itemGetPtr(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPage( QWebPage * page )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETPAGE)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWEBPAGE(1))
    {
#endif
      obj->setPage(PQWEBPAGE(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setResizesToContents( bool enabled )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETRESIZESTOCONTENTS)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setResizesToContents(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setTiledBackingStoreFrozen( bool frozen )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETTILEDBACKINGSTOREFROZEN)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setTiledBackingStoreFrozen(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setUrl( const QUrl &)
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETURL)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setUrl(*PQURL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setZoomFactor( qreal )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETZOOMFACTOR)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setZoomFactor(PQREAL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QWebSettings * settings() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_SETTINGS)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWebSettings *ptr = obj->settings();
      Qt4xHb::createReturnClass(ptr, "QWEBSETTINGS", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString title() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_TITLE)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->title());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void triggerPageAction( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_TRIGGERPAGEACTION)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->triggerPageAction((QWebPage::WebAction)hb_parni(1), OPBOOL(2, false));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QUrl url() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_URL)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->url());
      Qt4xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal zoomFactor() const
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ZOOMFACTOR)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->zoomFactor());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void back()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_BACK)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->back();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void forward()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_FORWARD)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->forward();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void reload()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_RELOAD)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reload();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void stop()
*/
HB_FUNC_STATIC(QGRAPHICSWEBVIEW_STOP)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stop();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QGraphicsWebViewSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONICONCHANGED)
{
  QGraphicsWebViewSlots_connect_signal("iconChanged()", "iconChanged()");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLINKCLICKED)
{
  QGraphicsWebViewSlots_connect_signal("linkClicked(QUrl)", "linkClicked(QUrl)");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLOADFINISHED)
{
  QGraphicsWebViewSlots_connect_signal("loadFinished(bool)", "loadFinished(bool)");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLOADPROGRESS)
{
  QGraphicsWebViewSlots_connect_signal("loadProgress(int)", "loadProgress(int)");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONLOADSTARTED)
{
  QGraphicsWebViewSlots_connect_signal("loadStarted()", "loadStarted()");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONSTATUSBARMESSAGE)
{
  QGraphicsWebViewSlots_connect_signal("statusBarMessage(QString)", "statusBarMessage(QString)");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONTITLECHANGED)
{
  QGraphicsWebViewSlots_connect_signal("titleChanged(QString)", "titleChanged(QString)");
}

HB_FUNC_STATIC(QGRAPHICSWEBVIEW_ONURLCHANGED)
{
  QGraphicsWebViewSlots_connect_signal("urlChanged(QUrl)", "urlChanged(QUrl)");
}

#pragma ENDDUMP
