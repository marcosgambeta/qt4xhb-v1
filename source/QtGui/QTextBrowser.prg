/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QTextBrowser INHERIT QTextEdit

   METHOD new
   METHOD backwardHistoryCount
   METHOD clearHistory
   METHOD forwardHistoryCount
   METHOD historyTitle
   METHOD historyUrl
   METHOD isBackwardAvailable
   METHOD isForwardAvailable
   METHOD openExternalLinks
   METHOD openLinks
   METHOD searchPaths
   METHOD setOpenExternalLinks
   METHOD setOpenLinks
   METHOD setSearchPaths
   METHOD source
   METHOD loadResource
   METHOD backward
   METHOD forward
   METHOD home
   METHOD reload
   METHOD setSource

   METHOD onAnchorClicked
   METHOD onBackwardAvailable
   METHOD onForwardAvailable
   METHOD onHighlighted1
   METHOD onHighlighted2
   METHOD onHistoryChanged
   METHOD onSourceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextBrowser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextBrowser>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QTextBrowser( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTEXTBROWSER_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    QTextBrowser * obj = new QTextBrowser( OPQWIDGET( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int backwardHistoryCount() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARDHISTORYCOUNT )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->backwardHistoryCount() );
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
void clearHistory()
*/
HB_FUNC_STATIC( QTEXTBROWSER_CLEARHISTORY )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearHistory();
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
int forwardHistoryCount() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_FORWARDHISTORYCOUNT )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->forwardHistoryCount() );
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
QString historyTitle( int i ) const
*/
HB_FUNC_STATIC( QTEXTBROWSER_HISTORYTITLE )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->historyTitle( PINT(1) ) );
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
QUrl historyUrl( int i ) const
*/
HB_FUNC_STATIC( QTEXTBROWSER_HISTORYURL )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QUrl * ptr = new QUrl( obj->historyUrl( PINT(1) ) );
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
bool isBackwardAvailable() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_ISBACKWARDAVAILABLE )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBackwardAvailable() );
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
bool isForwardAvailable() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_ISFORWARDAVAILABLE )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isForwardAvailable() );
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
bool openExternalLinks() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_OPENEXTERNALLINKS )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->openExternalLinks() );
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
bool openLinks() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_OPENLINKS )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->openLinks() );
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
QStringList searchPaths() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_SEARCHPATHS )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->searchPaths() );
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
void setOpenExternalLinks( bool open )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETOPENEXTERNALLINKS )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setOpenExternalLinks( PBOOL(1) );
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
void setOpenLinks( bool open )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETOPENLINKS )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setOpenLinks( PBOOL(1) );
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
void setSearchPaths( const QStringList & paths )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETSEARCHPATHS )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setSearchPaths( PQSTRINGLIST(1) );
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
QUrl source() const
*/
HB_FUNC_STATIC( QTEXTBROWSER_SOURCE )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->source() );
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
virtual QVariant loadResource( int type, const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTBROWSER_LOADRESOURCE )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQURL(2) )
    {
#endif
      QVariant * ptr = new QVariant( obj->loadResource( PINT(1), *PQURL(2) ) );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual void backward()
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARD )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->backward();
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
virtual void forward()
*/
HB_FUNC_STATIC( QTEXTBROWSER_FORWARD )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
virtual void home()
*/
HB_FUNC_STATIC( QTEXTBROWSER_HOME )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->home();
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
virtual void reload()
*/
HB_FUNC_STATIC( QTEXTBROWSER_RELOAD )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
virtual void setSource( const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETSOURCE )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setSource( *PQURL(1) );
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

void QTextBrowserSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QTEXTBROWSER_ONANCHORCLICKED )
{
  QTextBrowserSlots_connect_signal("anchorClicked(QUrl)", "anchorClicked(QUrl)");
}

HB_FUNC_STATIC( QTEXTBROWSER_ONBACKWARDAVAILABLE )
{
  QTextBrowserSlots_connect_signal("backwardAvailable(bool)", "backwardAvailable(bool)");
}

HB_FUNC_STATIC( QTEXTBROWSER_ONFORWARDAVAILABLE )
{
  QTextBrowserSlots_connect_signal("forwardAvailable(bool)", "forwardAvailable(bool)");
}

HB_FUNC_STATIC( QTEXTBROWSER_ONHIGHLIGHTED1 )
{
  QTextBrowserSlots_connect_signal("highlighted(QUrl)", "highlighted(QUrl)");
}

HB_FUNC_STATIC( QTEXTBROWSER_ONHIGHLIGHTED2 )
{
  QTextBrowserSlots_connect_signal("highlighted(QString)", "highlighted(QString)");
}

HB_FUNC_STATIC( QTEXTBROWSER_ONHISTORYCHANGED )
{
  QTextBrowserSlots_connect_signal("historyChanged()", "historyChanged()");
}

HB_FUNC_STATIC( QTEXTBROWSER_ONSOURCECHANGED )
{
  QTextBrowserSlots_connect_signal("sourceChanged(QUrl)", "sourceChanged(QUrl)");
}

#pragma ENDDUMP
