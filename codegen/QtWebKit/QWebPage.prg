%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QMenu>
#include <QtWebKit/QWebFrame>
#include <QtWebKit/QWebPluginFactory>
#include <QtGui/QUndoStack>

$prototype=QWebPage ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QAction * action( QWebPage::WebAction action ) const

$prototypeV2=quint64 bytesReceived() const

$prototypeV2=QMenu * createStandardContextMenu()

$prototypeV2=QWebFrame * currentFrame() const

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
%% TODO: QWebPage::ExtensionOption é uma classe
%% TODO: QWebPage::ExtensionReturn é uma classe
%% $virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=0,QWebPage::ExtensionReturn *=0

$prototypeV2=bool findText( const QString & subString, QWebPage::FindFlags options = 0 )

$prototypeV2=bool focusNextPrevChild( bool next )

$prototypeV2=bool forwardUnsupportedContent() const

$prototypeV2=QWebFrame * frameAt( const QPoint & pos ) const

$prototypeV2=QWebHistory * history() const

$prototypeV2=QVariant inputMethodQuery( Qt::InputMethodQuery property ) const

$prototypeV2=bool isContentEditable() const

$prototypeV2=bool isModified() const

$prototypeV2=QWebPage::LinkDelegationPolicy linkDelegationPolicy() const

$prototypeV2=QWebFrame * mainFrame() const

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototypeV2=QPalette palette() const

$prototypeV2=QWebPluginFactory * pluginFactory() const

$prototypeV2=QSize preferredContentsSize() const

$prototypeV2=QString selectedText() const

$prototypeV2=void setContentEditable( bool editable )

$prototypeV2=void setForwardUnsupportedContent( bool forward )

$prototypeV2=void setLinkDelegationPolicy( QWebPage::LinkDelegationPolicy policy )

$prototypeV2=void setNetworkAccessManager( QNetworkAccessManager * manager )

$prototypeV2=void setPalette( const QPalette & palette )

$prototypeV2=void setPluginFactory( QWebPluginFactory * factory )

$prototypeV2=void setPreferredContentsSize( const QSize & size ) const

$prototypeV2=void setView( QWidget * view )

$prototypeV2=void setViewportSize( const QSize & size ) const

$prototypeV2=QWebSettings * settings() const

$prototypeV2=virtual bool supportsExtension( QWebPage::Extension extension ) const

$prototypeV2=bool swallowContextMenuEvent( QContextMenuEvent * event )

$prototypeV2=quint64 totalBytes() const

$prototypeV2=virtual void triggerAction( QWebPage::WebAction action, bool checked = false )

$prototypeV2=QUndoStack * undoStack() const

$prototypeV2=void updatePositionDependentActions( const QPoint & pos )

$prototypeV2=QWidget * view() const

$prototypeV2=QSize viewportSize() const

$prototypeV2=virtual bool event( QEvent * ev )

$prototypeV2=bool shouldInterruptJavaScript()

$beginSignals
$signal=|contentsChanged()
$signal=|databaseQuotaExceeded(QWebFrame*,QString)
$signal=|downloadRequested(QNetworkRequest)
$signal=|frameCreated(QWebFrame*)
$signal=|geometryChangeRequested(QRect)
$signal=|linkClicked(QUrl)
$signal=|linkHovered(QString,QString,QString)
$signal=|loadFinished(bool)
$signal=|loadProgress(int)
$signal=|loadStarted()
$signal=|menuBarVisibilityChangeRequested(bool)
$signal=|microFocusChanged()
$signal=|printRequested(QWebFrame*)
$signal=|repaintRequested(QRect)
$signal=|restoreFrameStateRequested(QWebFrame*)
$signal=|saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)
$signal=|scrollRequested(int,int,QRect)
$signal=|selectionChanged()
$signal=|statusBarMessage(QString)
$signal=|statusBarVisibilityChangeRequested(bool)
$signal=|toolBarVisibilityChangeRequested(bool)
$signal=|unsupportedContent(QNetworkReply*)
$signal=|windowCloseRequested()
$endSignals

#pragma ENDDUMP
