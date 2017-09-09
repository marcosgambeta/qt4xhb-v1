$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QWEBFRAME
REQUEST QWEBHISTORY
REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QPALETTE
REQUEST QWEBPLUGINFACTORY
REQUEST QSIZE
REQUEST QWEBSETTINGS
REQUEST QUNDOSTACK
REQUEST QWIDGET
#endif

CLASS QWebPage INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD action
   METHOD bytesReceived
   METHOD createStandardContextMenu
   METHOD currentFrame
   METHOD extension
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
   METHOD omMenuBarVisibilityChangeRequested
   METHOD omMicroFocusChanged
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

$destructor

#pragma BEGINDUMP

#include <QWebPage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QWebPage ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_NEW )
{
  QWebPage * o = new QWebPage ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QAction * action ( WebAction action ) const
*/
HB_FUNC_STATIC( QWEBPAGE_ACTION )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAction * ptr = obj->action ( (QWebPage::WebAction) par1 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}


/*
quint64 bytesReceived () const
*/
HB_FUNC_STATIC( QWEBPAGE_BYTESRECEIVED )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT64( obj->bytesReceived () );
  }
}


/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QWEBPAGE_CREATESTANDARDCONTEXTMENU )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu ();
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
QWebFrame * currentFrame () const
*/
HB_FUNC_STATIC( QWEBPAGE_CURRENTFRAME )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->currentFrame ();
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_EXTENSION )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QWebPage::ExtensionOption * par2 = ISNIL(2)? 0 : (const QWebPage::ExtensionOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWebPage::ExtensionReturn * par3 = ISNIL(3)? 0 : (QWebPage::ExtensionReturn *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->extension ( (QWebPage::Extension) par1, par2, par3 ) );
  }
}


/*
bool findText ( const QString & subString, FindFlags options = 0 )
*/
HB_FUNC_STATIC( QWEBPAGE_FINDTEXT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    RBOOL( obj->findText ( PQSTRING(1), (QWebPage::FindFlags) par2 ) );
  }
}


/*
bool focusNextPrevChild ( bool next )
*/
HB_FUNC_STATIC( QWEBPAGE_FOCUSNEXTPREVCHILD )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->focusNextPrevChild ( PBOOL(1) ) );
  }
}


/*
bool forwardUnsupportedContent () const
*/
HB_FUNC_STATIC( QWEBPAGE_FORWARDUNSUPPORTEDCONTENT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->forwardUnsupportedContent () );
  }
}


/*
QWebFrame * frameAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWEBPAGE_FRAMEAT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->frameAt ( *PQPOINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QWebHistory * history () const
*/
HB_FUNC_STATIC( QWEBPAGE_HISTORY )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebHistory * ptr = obj->history ();
    _qt4xhb_createReturnClass ( ptr, "QWEBHISTORY" );
  }
}


/*
QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
HB_FUNC_STATIC( QWEBPAGE_INPUTMETHODQUERY )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool isContentEditable () const
*/
HB_FUNC_STATIC( QWEBPAGE_ISCONTENTEDITABLE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isContentEditable () );
  }
}


/*
bool isModified () const
*/
HB_FUNC_STATIC( QWEBPAGE_ISMODIFIED )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isModified () );
  }
}


/*
LinkDelegationPolicy linkDelegationPolicy () const
*/
HB_FUNC_STATIC( QWEBPAGE_LINKDELEGATIONPOLICY )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->linkDelegationPolicy () );
  }
}


/*
QWebFrame * mainFrame () const
*/
HB_FUNC_STATIC( QWEBPAGE_MAINFRAME )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebFrame * ptr = obj->mainFrame ();
    _qt4xhb_createReturnClass ( ptr, "QWEBFRAME" );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QWEBPAGE_NETWORKACCESSMANAGER )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager ();
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QPalette palette () const
*/
HB_FUNC_STATIC( QWEBPAGE_PALETTE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette () );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
QWebPluginFactory * pluginFactory () const
*/
HB_FUNC_STATIC( QWEBPAGE_PLUGINFACTORY )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebPluginFactory * ptr = obj->pluginFactory ();
    _qt4xhb_createReturnClass ( ptr, "QWEBPLUGINFACTORY" );
  }
}


/*
QSize preferredContentsSize () const
*/
HB_FUNC_STATIC( QWEBPAGE_PREFERREDCONTENTSSIZE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->preferredContentsSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
void setContentEditable ( bool editable )
*/
HB_FUNC_STATIC( QWEBPAGE_SETCONTENTEDITABLE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setContentEditable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setForwardUnsupportedContent ( bool forward )
*/
HB_FUNC_STATIC( QWEBPAGE_SETFORWARDUNSUPPORTEDCONTENT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForwardUnsupportedContent ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
*/
HB_FUNC_STATIC( QWEBPAGE_SETLINKDELEGATIONPOLICY )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLinkDelegationPolicy ( (QWebPage::LinkDelegationPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QWEBPAGE_SETNETWORKACCESSMANAGER )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPalette ( const QPalette & palette )
*/
HB_FUNC_STATIC( QWEBPAGE_SETPALETTE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPalette ( *PQPALETTE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPluginFactory ( QWebPluginFactory * factory )
*/
HB_FUNC_STATIC( QWEBPAGE_SETPLUGINFACTORY )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebPluginFactory * par1 = (QWebPluginFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPluginFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreferredContentsSize ( const QSize & size ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SETPREFERREDCONTENTSSIZE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPreferredContentsSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setView ( QWidget * view )
*/
HB_FUNC_STATIC( QWEBPAGE_SETVIEW )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setView ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewportSize ( const QSize & size ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SETVIEWPORTSIZE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setViewportSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebSettings * settings () const
*/
HB_FUNC_STATIC( QWEBPAGE_SETTINGS )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebSettings * ptr = obj->settings ();
    _qt4xhb_createReturnClass ( ptr, "QWEBSETTINGS" );
  }
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QWEBPAGE_SUPPORTSEXTENSION )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->supportsExtension ( (QWebPage::Extension) par1 ) );
  }
}


/*
bool swallowContextMenuEvent ( QContextMenuEvent * event )
*/
HB_FUNC_STATIC( QWEBPAGE_SWALLOWCONTEXTMENUEVENT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QContextMenuEvent * par1 = (QContextMenuEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->swallowContextMenuEvent ( par1 ) );
  }
}


/*
quint64 totalBytes () const
*/
HB_FUNC_STATIC( QWEBPAGE_TOTALBYTES )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQUINT64( obj->totalBytes () );
  }
}


/*
virtual void triggerAction ( WebAction action, bool checked = false )
*/
HB_FUNC_STATIC( QWEBPAGE_TRIGGERACTION )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->triggerAction ( (QWebPage::WebAction) par1, OPBOOL(2,false) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUndoStack * undoStack () const
*/
HB_FUNC_STATIC( QWEBPAGE_UNDOSTACK )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoStack * ptr = obj->undoStack ();
    _qt4xhb_createReturnClass ( ptr, "QUNDOSTACK" );
  }
}


/*
void updatePositionDependentActions ( const QPoint & pos )
*/
HB_FUNC_STATIC( QWEBPAGE_UPDATEPOSITIONDEPENDENTACTIONS )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updatePositionDependentActions ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * view () const
*/
HB_FUNC_STATIC( QWEBPAGE_VIEW )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->view ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
QSize viewportSize () const
*/
HB_FUNC_STATIC( QWEBPAGE_VIEWPORTSIZE )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->viewportSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual bool event ( QEvent * ev )
*/
HB_FUNC_STATIC( QWEBPAGE_EVENT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}


/*
bool shouldInterruptJavaScript ()
*/
HB_FUNC_STATIC( QWEBPAGE_SHOULDINTERRUPTJAVASCRIPT )
{
  QWebPage * obj = (QWebPage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->shouldInterruptJavaScript () );
  }
}





#pragma ENDDUMP
