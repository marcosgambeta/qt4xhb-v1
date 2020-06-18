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

$prototype=QAction * action ( WebAction action ) const
$method=|QAction *|action|QWebPage::WebAction

$prototypeV2=quint64 bytesReceived() const

$prototypeV2=QMenu * createStandardContextMenu()

$prototypeV2=QWebFrame * currentFrame() const

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
%% TODO: QWebPage::ExtensionOption é uma classe
%% TODO: QWebPage::ExtensionReturn é uma classe
%% $virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=0,QWebPage::ExtensionReturn *=0

$prototype=bool findText ( const QString & subString, FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=bool focusNextPrevChild ( bool next )
$method=|bool|focusNextPrevChild|bool

$prototypeV2=bool forwardUnsupportedContent() const

$prototype=QWebFrame * frameAt ( const QPoint & pos ) const
$method=|QWebFrame *|frameAt|const QPoint &

$prototypeV2=QWebHistory * history() const

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=bool isContentEditable() const

$prototypeV2=bool isModified() const

$prototypeV2=QWebPage::LinkDelegationPolicy linkDelegationPolicy() const

$prototypeV2=QWebFrame * mainFrame() const

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototypeV2=QPalette palette() const

$prototypeV2=QWebPluginFactory * pluginFactory() const

$prototypeV2=QSize preferredContentsSize() const

$prototypeV2=QString selectedText() const

$prototype=void setContentEditable ( bool editable )
$method=|void|setContentEditable|bool

$prototype=void setForwardUnsupportedContent ( bool forward )
$method=|void|setForwardUnsupportedContent|bool

$prototype=void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
$method=|void|setLinkDelegationPolicy|QWebPage::LinkDelegationPolicy

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

$prototype=void setPluginFactory ( QWebPluginFactory * factory )
$method=|void|setPluginFactory|QWebPluginFactory *

$prototype=void setPreferredContentsSize ( const QSize & size ) const
$method=|void|setPreferredContentsSize|const QSize &

$prototype=void setView ( QWidget * view )
$method=|void|setView|QWidget *

$prototype=void setViewportSize ( const QSize & size ) const
$method=|void|setViewportSize|const QSize &

$prototypeV2=QWebSettings * settings() const

$prototype=virtual bool supportsExtension ( Extension extension ) const
$virtualMethod=|bool|supportsExtension|QWebPage::Extension

$prototype=bool swallowContextMenuEvent ( QContextMenuEvent * event )
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *

$prototypeV2=quint64 totalBytes() const

$prototype=virtual void triggerAction ( WebAction action, bool checked = false )
$virtualMethod=|void|triggerAction|QWebPage::WebAction,bool=false

$prototypeV2=QUndoStack * undoStack() const

$prototype=void updatePositionDependentActions ( const QPoint & pos )
$method=|void|updatePositionDependentActions|const QPoint &

$prototypeV2=QWidget * view() const

$prototypeV2=QSize viewportSize() const

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

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
