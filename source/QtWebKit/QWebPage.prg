/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QNETWORKACCESSMANAGER
REQUEST QPALETTE
REQUEST QSIZE
REQUEST QUNDOSTACK
REQUEST QVARIANT
REQUEST QWEBFRAME
REQUEST QWEBHISTORY
REQUEST QWEBPLUGINFACTORY
REQUEST QWEBSETTINGS
REQUEST QWIDGET
#endif

CLASS QWebPage INHERIT QObject

   METHOD new
   METHOD delete
   METHOD action
   METHOD bytesReceived
   METHOD createStandardContextMenu
   METHOD currentFrame
   METHOD findText
   METHOD focusNextPrevChild
   METHOD forwardUnsupportedContent
   METHOD frameAt
   METHOD history
   METHOD inputMethodQuery
   METHOD isContentEditable
   METHOD isModified
   METHOD linkDelegationPolicy
   METHOD mainFrame
   METHOD networkAccessManager
   METHOD palette
   METHOD pluginFactory
   METHOD preferredContentsSize
   METHOD selectedText
   METHOD setContentEditable
   METHOD setForwardUnsupportedContent
   METHOD setLinkDelegationPolicy
   METHOD setNetworkAccessManager
   METHOD setPalette
   METHOD setPluginFactory
   METHOD setPreferredContentsSize
   METHOD setView
   METHOD setViewportSize
   METHOD settings
   METHOD supportsExtension
   METHOD swallowContextMenuEvent
   METHOD totalBytes
   METHOD triggerAction
   METHOD undoStack
   METHOD updatePositionDependentActions
   METHOD view
   METHOD viewportSize
   METHOD event
   METHOD shouldInterruptJavaScript

   METHOD onContentsChanged
   METHOD onDatabaseQuotaExceeded
   METHOD onDownloadRequested
   METHOD onFrameCreated
   METHOD onGeometryChangeRequested
   METHOD onLinkClicked
   METHOD onLinkHovered
   METHOD onLoadFinished
   METHOD onLoadProgress
   METHOD onLoadStarted
   METHOD onMenuBarVisibilityChangeRequested
   METHOD onMicroFocusChanged
   METHOD onPrintRequested
   METHOD onRepaintRequested
   METHOD onRestoreFrameStateRequested
   METHOD onSaveFrameStateRequested
   METHOD onScrollRequested
   METHOD onSelectionChanged
   METHOD onStatusBarMessage
   METHOD onStatusBarVisibilityChangeRequested
   METHOD onToolBarVisibilityChangeRequested
   METHOD onUnsupportedContent
   METHOD onWindowCloseRequested

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebPage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtWebKit/QWebPage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QMenu>
#include <QtWebKit/QWebFrame>
#include <QtWebKit/QWebPluginFactory>
#include <QtGui/QUndoStack>

/*
QWebPage( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    QWebPage * obj = new QWebPage( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QWEBPAGE_DELETE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAction * action( QWebPage::WebAction action ) const
*/
HB_FUNC_STATIC( QWEBPAGE_ACTION )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QAction * ptr = obj->action( ( QWebPage::WebAction ) hb_parni(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
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
quint64 bytesReceived() const
*/
HB_FUNC_STATIC( QWEBPAGE_BYTESRECEIVED )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT64( obj->bytesReceived() );
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
QMenu * createStandardContextMenu()
*/
HB_FUNC_STATIC( QWEBPAGE_CREATESTANDARDCONTEXTMENU )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenu * ptr = obj->createStandardContextMenu();
      Qt4xHb::createReturnQObjectClass( ptr, "QMENU" );
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
QWebFrame * currentFrame() const
*/
HB_FUNC_STATIC( QWEBPAGE_CURRENTFRAME )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebFrame * ptr = obj->currentFrame();
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBFRAME" );
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
bool findText( const QString & subString, QWebPage::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_FINDTEXT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      RBOOL( obj->findText( PQSTRING(1), HB_ISNIL(2) ? ( QWebPage::FindFlags ) 0 : ( QWebPage::FindFlags ) hb_parni(2) ) );
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
bool focusNextPrevChild( bool next )
*/
HB_FUNC_STATIC( QWEBPAGE_FOCUSNEXTPREVCHILD )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      RBOOL( obj->focusNextPrevChild( PBOOL(1) ) );
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
bool forwardUnsupportedContent() const
*/
HB_FUNC_STATIC( QWEBPAGE_FORWARDUNSUPPORTEDCONTENT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->forwardUnsupportedContent() );
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
QWebFrame * frameAt( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWEBPAGE_FRAMEAT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QWebFrame * ptr = obj->frameAt( *PQPOINT(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBFRAME" );
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
HB_FUNC_STATIC( QWEBPAGE_HISTORY )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebHistory * ptr = obj->history();
      Qt4xHb::createReturnClass( ptr, "QWEBHISTORY", false );
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
QVariant inputMethodQuery( Qt::InputMethodQuery property ) const
*/
HB_FUNC_STATIC( QWEBPAGE_INPUTMETHODQUERY )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->inputMethodQuery( ( Qt::InputMethodQuery ) hb_parni(1) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
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
bool isContentEditable() const
*/
HB_FUNC_STATIC( QWEBPAGE_ISCONTENTEDITABLE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isContentEditable() );
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
HB_FUNC_STATIC( QWEBPAGE_ISMODIFIED )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isModified() );
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
QWebPage::LinkDelegationPolicy linkDelegationPolicy() const
*/
HB_FUNC_STATIC( QWEBPAGE_LINKDELEGATIONPOLICY )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->linkDelegationPolicy() );
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
QWebFrame * mainFrame() const
*/
HB_FUNC_STATIC( QWEBPAGE_MAINFRAME )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebFrame * ptr = obj->mainFrame();
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBFRAME" );
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
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC( QWEBPAGE_NETWORKACCESSMANAGER )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->networkAccessManager();
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKACCESSMANAGER" );
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
QPalette palette() const
*/
HB_FUNC_STATIC( QWEBPAGE_PALETTE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPalette * ptr = new QPalette( obj->palette() );
      Qt4xHb::createReturnClass( ptr, "QPALETTE", true );
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
QWebPluginFactory * pluginFactory() const
*/
HB_FUNC_STATIC( QWEBPAGE_PLUGINFACTORY )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebPluginFactory * ptr = obj->pluginFactory();
      Qt4xHb::createReturnQObjectClass( ptr, "QWEBPLUGINFACTORY" );
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
QSize preferredContentsSize() const
*/
HB_FUNC_STATIC( QWEBPAGE_PREFERREDCONTENTSSIZE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->preferredContentsSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
QString selectedText() const
*/
HB_FUNC_STATIC( QWEBPAGE_SELECTEDTEXT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->selectedText() );
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
void setContentEditable( bool editable )
*/
HB_FUNC_STATIC( QWEBPAGE_SETCONTENTEDITABLE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setContentEditable( PBOOL(1) );
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
void setForwardUnsupportedContent( bool forward )
*/
HB_FUNC_STATIC( QWEBPAGE_SETFORWARDUNSUPPORTEDCONTENT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setForwardUnsupportedContent( PBOOL(1) );
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
void setLinkDelegationPolicy( QWebPage::LinkDelegationPolicy policy )
*/
HB_FUNC_STATIC( QWEBPAGE_SETLINKDELEGATIONPOLICY )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLinkDelegationPolicy( ( QWebPage::LinkDelegationPolicy ) hb_parni(1) );
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
void setNetworkAccessManager( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QWEBPAGE_SETNETWORKACCESSMANAGER )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1) )
    {
#endif
      obj->setNetworkAccessManager( PQNETWORKACCESSMANAGER(1) );
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
void setPalette( const QPalette & palette )
*/
HB_FUNC_STATIC( QWEBPAGE_SETPALETTE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPALETTE(1) )
    {
#endif
      obj->setPalette( *PQPALETTE(1) );
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
void setPluginFactory( QWebPluginFactory * factory )
*/
HB_FUNC_STATIC( QWEBPAGE_SETPLUGINFACTORY )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBPLUGINFACTORY(1) )
    {
#endif
      obj->setPluginFactory( PQWEBPLUGINFACTORY(1) );
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
void setPreferredContentsSize( const QSize & size ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SETPREFERREDCONTENTSSIZE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setPreferredContentsSize( *PQSIZE(1) );
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
void setView( QWidget * view )
*/
HB_FUNC_STATIC( QWEBPAGE_SETVIEW )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setView( PQWIDGET(1) );
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
void setViewportSize( const QSize & size ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SETVIEWPORTSIZE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setViewportSize( *PQSIZE(1) );
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
HB_FUNC_STATIC( QWEBPAGE_SETTINGS )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebSettings * ptr = obj->settings();
      Qt4xHb::createReturnClass( ptr, "QWEBSETTINGS", false );
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
virtual bool supportsExtension( QWebPage::Extension extension ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SUPPORTSEXTENSION )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->supportsExtension( ( QWebPage::Extension ) hb_parni(1) ) );
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
bool swallowContextMenuEvent( QContextMenuEvent * event )
*/
HB_FUNC_STATIC( QWEBPAGE_SWALLOWCONTEXTMENUEVENT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCONTEXTMENUEVENT(1) )
    {
#endif
      RBOOL( obj->swallowContextMenuEvent( PQCONTEXTMENUEVENT(1) ) );
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
quint64 totalBytes() const
*/
HB_FUNC_STATIC( QWEBPAGE_TOTALBYTES )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT64( obj->totalBytes() );
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
virtual void triggerAction( QWebPage::WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QWEBPAGE_TRIGGERACTION )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISLOG(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->triggerAction( ( QWebPage::WebAction ) hb_parni(1), OPBOOL( 2, false ) );
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
QUndoStack * undoStack() const
*/
HB_FUNC_STATIC( QWEBPAGE_UNDOSTACK )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUndoStack * ptr = obj->undoStack();
      Qt4xHb::createReturnQObjectClass( ptr, "QUNDOSTACK" );
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
void updatePositionDependentActions( const QPoint & pos )
*/
HB_FUNC_STATIC( QWEBPAGE_UPDATEPOSITIONDEPENDENTACTIONS )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->updatePositionDependentActions( *PQPOINT(1) );
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
QWidget * view() const
*/
HB_FUNC_STATIC( QWEBPAGE_VIEW )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->view();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
QSize viewportSize() const
*/
HB_FUNC_STATIC( QWEBPAGE_VIEWPORTSIZE )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->viewportSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
virtual bool event( QEvent * ev )
*/
HB_FUNC_STATIC( QWEBPAGE_EVENT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event( PQEVENT(1) ) );
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
bool shouldInterruptJavaScript()
*/
HB_FUNC_STATIC( QWEBPAGE_SHOULDINTERRUPTJAVASCRIPT )
{
  QWebPage * obj = qobject_cast<QWebPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->shouldInterruptJavaScript() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QWebPageSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWEBPAGE_ONCONTENTSCHANGED )
{
  QWebPageSlots_connect_signal( "contentsChanged()", "contentsChanged()" );
}

HB_FUNC_STATIC( QWEBPAGE_ONDATABASEQUOTAEXCEEDED )
{
  QWebPageSlots_connect_signal( "databaseQuotaExceeded(QWebFrame*,QString)", "databaseQuotaExceeded(QWebFrame*,QString)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONDOWNLOADREQUESTED )
{
  QWebPageSlots_connect_signal( "downloadRequested(QNetworkRequest)", "downloadRequested(QNetworkRequest)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONFRAMECREATED )
{
  QWebPageSlots_connect_signal( "frameCreated(QWebFrame*)", "frameCreated(QWebFrame*)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONGEOMETRYCHANGEREQUESTED )
{
  QWebPageSlots_connect_signal( "geometryChangeRequested(QRect)", "geometryChangeRequested(QRect)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONLINKCLICKED )
{
  QWebPageSlots_connect_signal( "linkClicked(QUrl)", "linkClicked(QUrl)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONLINKHOVERED )
{
  QWebPageSlots_connect_signal( "linkHovered(QString,QString,QString)", "linkHovered(QString,QString,QString)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONLOADFINISHED )
{
  QWebPageSlots_connect_signal( "loadFinished(bool)", "loadFinished(bool)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONLOADPROGRESS )
{
  QWebPageSlots_connect_signal( "loadProgress(int)", "loadProgress(int)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONLOADSTARTED )
{
  QWebPageSlots_connect_signal( "loadStarted()", "loadStarted()" );
}

HB_FUNC_STATIC( QWEBPAGE_ONMENUBARVISIBILITYCHANGEREQUESTED )
{
  QWebPageSlots_connect_signal( "menuBarVisibilityChangeRequested(bool)", "menuBarVisibilityChangeRequested(bool)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONMICROFOCUSCHANGED )
{
  QWebPageSlots_connect_signal( "microFocusChanged()", "microFocusChanged()" );
}

HB_FUNC_STATIC( QWEBPAGE_ONPRINTREQUESTED )
{
  QWebPageSlots_connect_signal( "printRequested(QWebFrame*)", "printRequested(QWebFrame*)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONREPAINTREQUESTED )
{
  QWebPageSlots_connect_signal( "repaintRequested(QRect)", "repaintRequested(QRect)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONRESTOREFRAMESTATEREQUESTED )
{
  QWebPageSlots_connect_signal( "restoreFrameStateRequested(QWebFrame*)", "restoreFrameStateRequested(QWebFrame*)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONSAVEFRAMESTATEREQUESTED )
{
  QWebPageSlots_connect_signal( "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)", "saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONSCROLLREQUESTED )
{
  QWebPageSlots_connect_signal( "scrollRequested(int,int,QRect)", "scrollRequested(int,int,QRect)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONSELECTIONCHANGED )
{
  QWebPageSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
}

HB_FUNC_STATIC( QWEBPAGE_ONSTATUSBARMESSAGE )
{
  QWebPageSlots_connect_signal( "statusBarMessage(QString)", "statusBarMessage(QString)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONSTATUSBARVISIBILITYCHANGEREQUESTED )
{
  QWebPageSlots_connect_signal( "statusBarVisibilityChangeRequested(bool)", "statusBarVisibilityChangeRequested(bool)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONTOOLBARVISIBILITYCHANGEREQUESTED )
{
  QWebPageSlots_connect_signal( "toolBarVisibilityChangeRequested(bool)", "toolBarVisibilityChangeRequested(bool)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONUNSUPPORTEDCONTENT )
{
  QWebPageSlots_connect_signal( "unsupportedContent(QNetworkReply*)", "unsupportedContent(QNetworkReply*)" );
}

HB_FUNC_STATIC( QWEBPAGE_ONWINDOWCLOSEREQUESTED )
{
  QWebPageSlots_connect_signal( "windowCloseRequested()", "windowCloseRequested()" );
}

#pragma ENDDUMP
