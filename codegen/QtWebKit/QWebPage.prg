%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=quint64 bytesReceived () const
$method=|quint64|bytesReceived|

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=QWebFrame * currentFrame () const
$method=|QWebFrame *|currentFrame|

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = 0, ExtensionReturn * output = 0 )
%% TODO: QWebPage::ExtensionOption é uma classe
%% TODO: QWebPage::ExtensionReturn é uma classe
%% $virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=0,QWebPage::ExtensionReturn *=0

$prototype=bool findText ( const QString & subString, FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=bool focusNextPrevChild ( bool next )
$method=|bool|focusNextPrevChild|bool

$prototype=bool forwardUnsupportedContent () const
$method=|bool|forwardUnsupportedContent|

$prototype=QWebFrame * frameAt ( const QPoint & pos ) const
$method=|QWebFrame *|frameAt|const QPoint &

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=bool isContentEditable () const
$method=|bool|isContentEditable|

$prototype=bool isModified () const
$method=|bool|isModified|

$prototype=LinkDelegationPolicy linkDelegationPolicy () const
$method=|QWebPage::LinkDelegationPolicy|linkDelegationPolicy|

$prototype=QWebFrame * mainFrame () const
$method=|QWebFrame *|mainFrame|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QPalette palette () const
$method=|QPalette|palette|

$prototype=QWebPluginFactory * pluginFactory () const
$method=|QWebPluginFactory *|pluginFactory|

$prototype=QSize preferredContentsSize () const
$method=|QSize|preferredContentsSize|

$prototype=QString selectedText () const
$method=|QString|selectedText|

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

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=virtual bool supportsExtension ( Extension extension ) const
$virtualMethod=|bool|supportsExtension|QWebPage::Extension

$prototype=bool swallowContextMenuEvent ( QContextMenuEvent * event )
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *

$prototype=quint64 totalBytes () const
$method=|quint64|totalBytes|

$prototype=virtual void triggerAction ( WebAction action, bool checked = false )
$virtualMethod=|void|triggerAction|QWebPage::WebAction,bool=false

$prototype=QUndoStack * undoStack () const
$method=|QUndoStack *|undoStack|

$prototype=void updatePositionDependentActions ( const QPoint & pos )
$method=|void|updatePositionDependentActions|const QPoint &

$prototype=QWidget * view () const
$method=|QWidget *|view|

$prototype=QSize viewportSize () const
$method=|QSize|viewportSize|

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

$prototype=bool shouldInterruptJavaScript ()
$method=|bool|shouldInterruptJavaScript|

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
