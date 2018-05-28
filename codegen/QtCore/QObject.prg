%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD blockSignals
   METHOD children
   METHOD dumpObjectInfo
   METHOD dumpObjectTree
   METHOD dynamicPropertyNames
   METHOD event
   METHOD eventFilter
   METHOD findChild
   METHOD findChildren
   METHOD inherits
   METHOD installEventFilter
   METHOD isWidgetType
   METHOD killTimer
   METHOD metaObject
   METHOD moveToThread
   METHOD objectName
   METHOD parent
   METHOD property
   METHOD removeEventFilter
   METHOD setObjectName
   METHOD setParent
   METHOD setProperty
   METHOD signalsBlocked
   METHOD startTimer
   METHOD thread
   METHOD deleteLater

   METHOD onCloseEvent
   METHOD onEnterEvent
   METHOD onFocusInEvent
   METHOD onFocusOutEvent
   METHOD onHideEvent
   METHOD onKeyPressEvent
   METHOD onKeyReleaseEvent
   METHOD onLeaveEvent
   METHOD onShowEvent
   METHOD onMouseButtonDblClickEvent
   METHOD onMouseButtonPressEvent
   METHOD onMouseButtonReleaseEvent
   METHOD onMouseMoveEvent
   METHOD onMoveEvent
   METHOD onPaintEvent
   METHOD onResizeEvent
   METHOD onDragEnterEvent
   METHOD onDragLeaveEvent
   METHOD onDragMoveEvent
   METHOD onDropEvent
   METHOD onAccessibilityDescriptionEvent
   METHOD onAccessibilityHelpEvent
   METHOD onAccessibilityPrepareEvent
   METHOD onActionAddedEvent
   METHOD onActionChangedEvent
   METHOD onActionRemovedEvent
   METHOD onActivationChangeEvent
   METHOD onApplicationActivateEvent
   METHOD onApplicationActivatedEvent
   METHOD onApplicationDeactivateEvent
   METHOD onApplicationFontChangeEvent
   METHOD onApplicationLayoutDirectionChangeEvent
   METHOD onApplicationPaletteChangeEvent
   METHOD onApplicationWindowIconChangeEvent
   METHOD onChildAddedEvent
%%   METHOD onChildInsertedEvent
   METHOD onChildPolishedEvent
   METHOD onChildRemovedEvent
   METHOD onClipboardEvent
   METHOD onCloseSoftwareInputPanelEvent
   METHOD onContentsRectChangeEvent
   METHOD onContextMenuEvent
   METHOD onCursorChangeEvent
   METHOD onDeferredDeleteEvent
   METHOD onEnabledChangeEvent
%%   METHOD onEnterEditFocusEvent
   METHOD onEnterWhatsThisModeEvent
   METHOD onFileOpenEvent
   METHOD onFontChangeEvent
   METHOD onGrabKeyboardEvent
   METHOD onGrabMouseEvent
   METHOD onGraphicsSceneContextMenuEvent
   METHOD onGraphicsSceneDragEnterEvent
   METHOD onGraphicsSceneDragLeaveEvent
   METHOD onGraphicsSceneDragMoveEvent
   METHOD onGraphicsSceneDropEvent
   METHOD onGraphicsSceneHelpEvent
   METHOD onGraphicsSceneHoverEnterEvent
   METHOD onGraphicsSceneHoverLeaveEvent
   METHOD onGraphicsSceneHoverMoveEvent
   METHOD onGraphicsSceneMouseDoubleClickEvent
   METHOD onGraphicsSceneMouseMoveEvent
   METHOD onGraphicsSceneMousePressEvent
   METHOD onGraphicsSceneMouseReleaseEvent
   METHOD onGraphicsSceneMoveEvent
   METHOD onGraphicsSceneResizeEvent
   METHOD onGraphicsSceneWheelEvent
   METHOD onHideToParentEvent
   METHOD onHoverEnterEvent
   METHOD onHoverLeaveEvent
   METHOD onHoverMoveEvent
   METHOD onIconDragEvent
   METHOD onIconTextChangeEvent
   METHOD onInputMethodEvent
   METHOD onLanguageChangeEvent
   METHOD onLayoutDirectionChangeEvent
   METHOD onLayoutRequestEvent
%%   METHOD onLeaveEditFocusEvent
   METHOD onLeaveWhatsThisModeEvent
   METHOD onLocaleChangeEvent
   METHOD onNonClientAreaMouseButtonDblClickEvent
   METHOD onNonClientAreaMouseButtonPressEvent
   METHOD onNonClientAreaMouseButtonReleaseEvent
   METHOD onNonClientAreaMouseMoveEvent
   METHOD onMacSizeChangeEvent
   METHOD onMenubarUpdatedEvent
   METHOD onMetaCallEvent
   METHOD onModifiedChangeEvent
   METHOD onMouseTrackingChangeEvent
   METHOD onPaletteChangeEvent
   METHOD onParentAboutToChangeEvent
   METHOD onParentChangeEvent
   METHOD onPolishEvent
   METHOD onPolishRequestEvent
   METHOD onQueryWhatsThisEvent
   METHOD onRequestSoftwareInputPanelEvent
   METHOD onShortcutEvent
   METHOD onShortcutOverrideEvent
   METHOD onShowToParentEvent
   METHOD onSockActEvent
   METHOD onStateMachineSignalEvent
   METHOD onStateMachineWrappedEvent
   METHOD onStatusTipEvent
   METHOD onStyleChangeEvent
   METHOD onTabletMoveEvent
   METHOD onTabletPressEvent
   METHOD onTabletReleaseEvent
   METHOD onOkRequestEvent
   METHOD onTabletEnterProximityEvent
   METHOD onTabletLeaveProximityEvent
   METHOD onTimerEvent
   METHOD onToolBarChangeEvent
   METHOD onToolTipEvent
   METHOD onToolTipChangeEvent
   METHOD onUngrabKeyboardEvent
   METHOD onUngrabMouseEvent
   METHOD onUpdateLaterEvent
   METHOD onUpdateRequestEvent
   METHOD onWhatsThisEvent
   METHOD onWhatsThisClickedEvent
   METHOD onWheelEvent
   METHOD onWinEventActEvent
   METHOD onWindowActivateEvent
   METHOD onWindowBlockedEvent
   METHOD onWindowDeactivateEvent
   METHOD onWindowIconChangeEvent
   METHOD onWindowStateChangeEvent
   METHOD onWindowTitleChangeEvent
   METHOD onWindowUnblockedEvent
   METHOD onZOrderChangeEvent
   METHOD onKeyboardLayoutChangeEvent
   METHOD onDynamicPropertyChangeEvent
   METHOD onTouchBeginEvent
   METHOD onTouchUpdateEvent
   METHOD onTouchEndEvent
   METHOD onWinIdChangeEvent
   METHOD onGestureEvent
   METHOD onGestureOverrideEvent

$addSignals

   METHOD connect
   METHOD disconnect
   METHOD disconnectAll
   METHOD disconnectAllEvents
   METHOD disconnectAllSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QWidget>
#include <QVariant>
#include <QEvent>
#include <QThread>

bool Events_connect_event ( QObject * object, int type, PHB_ITEM codeblock );
bool Events_disconnect_event ( QObject * object, int type );
void Events_disconnect_all_events ( QObject * object, bool children );
void Signals_disconnect_all_signals ( QObject * object, bool children );
void _qtxhb_processOnEventMethod (QEvent::Type event);
void _qtxhb_processOnEventMethod2 (QEvent::Type event);

$prototype=QObject ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool blockSignals ( bool block )
$method=|bool|blockSignals|bool

$prototype=const QObjectList & children () const
%% TODO: implementar 'const QObjectList &'
$method=|QObjectList|children|

$prototype=void dumpObjectInfo ()
$method=|void|dumpObjectInfo|

$prototype=void dumpObjectTree ()
$method=|void|dumpObjectTree|

$prototype=QList<QByteArray> dynamicPropertyNames () const
$method=|QList<QByteArray>|dynamicPropertyNames|

$prototype=virtual bool event ( QEvent * e )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual bool eventFilter ( QObject * watched, QEvent * event )
$virtualMethod=|bool|eventFilter|QObject *,QEvent *

$prototype=T findChild ( const QString & name = QString() ) const
$method=|QObject *|findChild<QObject *>,findChild|const QString &=QString()

$prototype=QList<T> findChildren ( const QString & name = QString() ) const
$internalMethod=|QList<QObject *>|findChildren<QObject *>,findChildren1|const QString &=QString()

$prototype=QList<T> findChildren ( const QRegExp & regExp ) const
$internalMethod=|QList<QObject *>|findChildren<QObject *>,findChildren2|const QRegExp &

//[1]QList<T> findChildren ( const QString & name = QString() ) const
//[2]QList<T> findChildren ( const QRegExp & regExp ) const

HB_FUNC_STATIC( QOBJECT_FINDCHILDREN )
{
  if( ISBETWEEN(0,1) && (ISCHAR(1)||ISNIL(1)) )
  {
    QObject_findChildren1();
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QObject_findChildren2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool inherits ( const char * className ) const
$method=|bool|inherits|const char *

$prototype=void installEventFilter ( QObject * filterObj )
$method=|void|installEventFilter|QObject *

$prototype=bool isWidgetType () const
$method=|bool|isWidgetType|

$prototype=void killTimer ( int id )
$method=|void|killTimer|int

$prototype=virtual const QMetaObject * metaObject () const
$virtualMethod=|const QMetaObject *|metaObject|

$prototype=void moveToThread ( QThread * targetThread )
$method=|void|moveToThread|QThread *

$prototype=QString objectName () const
$method=|QString|objectName|

$prototype=QObject * parent () const
$method=|QObject *|parent|

$prototype=QVariant property ( const char * name ) const
$method=|QVariant|property|const char *

$prototype=void removeEventFilter ( QObject * obj )
$method=|void|removeEventFilter|QObject *

$prototype=void setObjectName ( const QString & name )
$method=|void|setObjectName|const QString &

$prototype=void setParent ( QObject * parent )
$method=|void|setParent|QObject *

$prototype=bool setProperty ( const char * name, const QVariant & value )
$method=|bool|setProperty|const char *,const QVariant &

$prototype=bool signalsBlocked () const
$method=|bool|signalsBlocked|

$prototype=int startTimer ( int interval )
$method=|int|startTimer|int

$prototype=QThread * thread () const
$method=|QThread *|thread|

$prototype=void deleteLater ()
$method=|void|deleteLater|

HB_FUNC_STATIC( QOBJECT_DISCONNECTALL )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( hb_pcount() == 0 )
    {
      Events_disconnect_all_events (obj, false);
      Signals_disconnect_all_signals (obj, false);
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Events_disconnect_all_events (obj, PBOOL(1) );
      Signals_disconnect_all_signals (obj, PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALLEVENTS )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( hb_pcount() == 0 )
    {
      Events_disconnect_all_events (obj, false);
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Events_disconnect_all_events (obj, PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QOBJECT_DISCONNECTALLSIGNALS )
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( hb_pcount() == 0 )
    {
      Signals_disconnect_all_signals (obj, false);
    }
    else if( hb_pcount() == 1 && ISLOG(1) )
    {
      Signals_disconnect_all_signals (obj, PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

%%
%% events
%%

void _qtxhb_processOnEventMethod (QEvent::Type event)
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 1 )
  {
    PHB_ITEM item = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    if( item )
    {
      //hb_retl( Events_connect_event( obj, QEvent::Close, item ) );
      hb_retl( Events_connect_event( obj, event, item ) );
    }
    else
    {
      hb_retl(0);
    }
  }
  else if( hb_pcount() == 0 )
  {
    //hb_retl( Events_disconnect_event( obj, QEvent::Close ) );
    hb_retl( Events_disconnect_event( obj, event ) );
  }
  else
  {
    hb_retl(0);
  }
}

void _qtxhb_processOnEventMethod2 (QEvent::Type event)
{
  QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( hb_pcount() == 2 )
  {
    PHB_ITEM item = hb_itemNew( hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    if( item )
    {
      //hb_retl( Events_connect_event( obj, QEvent::Close, item ) );
      hb_retl( Events_connect_event( obj, event, item ) );
    }
    else
    {
      hb_retl(0);
    }
  }
  else if( hb_pcount() == 1 )
  {
    //hb_retl( Events_disconnect_event( obj, QEvent::Close ) );
    hb_retl( Events_disconnect_event( obj, event ) );
  }
  else
  {
    hb_retl(0);
  }
}

$eventMethod=Close
$eventMethod=Enter
$eventMethod=FocusIn
$eventMethod=FocusOut
$eventMethod=Hide
$eventMethod=KeyPress
$eventMethod=KeyRelease
$eventMethod=Leave
$eventMethod=Show
$eventMethod=MouseButtonDblClick
$eventMethod=MouseButtonPress
$eventMethod=MouseButtonRelease
$eventMethod=MouseMove
$eventMethod=Move
$eventMethod=Paint
$eventMethod=Resize
$eventMethod=DragEnter
$eventMethod=DragLeave
$eventMethod=DragMove
$eventMethod=Drop
$eventMethod=AccessibilityDescription
$eventMethod=AccessibilityHelp
$eventMethod=AccessibilityPrepare
$eventMethod=ActionAdded
$eventMethod=ActionChanged
$eventMethod=ActionRemoved
$eventMethod=ActivationChange
$eventMethod=ApplicationActivate
$eventMethod=ApplicationActivated
$eventMethod=ApplicationDeactivate
$eventMethod=ApplicationFontChange
$eventMethod=ApplicationLayoutDirectionChange
$eventMethod=ApplicationPaletteChange
$eventMethod=ApplicationWindowIconChange
$eventMethod=ChildAdded
%% $eventMethod=ChildInserted
$eventMethod=ChildPolished
$eventMethod=ChildRemoved
$eventMethod=Clipboard
$eventMethod=CloseSoftwareInputPanel
$eventMethod=ContentsRectChange
$eventMethod=ContextMenu
$eventMethod=CursorChange
$eventMethod=DeferredDelete
$eventMethod=EnabledChange
%%$eventMethod=EnterEditFocus
$eventMethod=EnterWhatsThisMode
$eventMethod=FileOpen
$eventMethod=FontChange
$eventMethod=GrabKeyboard
$eventMethod=GrabMouse
$eventMethod=GraphicsSceneContextMenu
$eventMethod=GraphicsSceneDragEnter
$eventMethod=GraphicsSceneDragLeave
$eventMethod=GraphicsSceneDragMove
$eventMethod=GraphicsSceneDrop
$eventMethod=GraphicsSceneHelp
$eventMethod=GraphicsSceneHoverEnter
$eventMethod=GraphicsSceneHoverLeave
$eventMethod=GraphicsSceneHoverMove
$eventMethod=GraphicsSceneMouseDoubleClick
$eventMethod=GraphicsSceneMouseMove
$eventMethod=GraphicsSceneMousePress
$eventMethod=GraphicsSceneMouseRelease
$eventMethod=GraphicsSceneMove
$eventMethod=GraphicsSceneResize
$eventMethod=GraphicsSceneWheel
$eventMethod=HideToParent
$eventMethod=HoverEnter
$eventMethod=HoverLeave
$eventMethod=HoverMove
$eventMethod=IconDrag
$eventMethod=IconTextChange
$eventMethod=InputMethod
$eventMethod=LanguageChange
$eventMethod=LayoutDirectionChange
$eventMethod=LayoutRequest
%% $eventMethod=LeaveEditFocus
$eventMethod=LeaveWhatsThisMode
$eventMethod=LocaleChange
$eventMethod=NonClientAreaMouseButtonDblClick
$eventMethod=NonClientAreaMouseButtonPress
$eventMethod=NonClientAreaMouseButtonRelease
$eventMethod=NonClientAreaMouseMove
$eventMethod=MacSizeChange
$eventMethod=MenubarUpdated
$eventMethod=MetaCall
$eventMethod=ModifiedChange
$eventMethod=MouseTrackingChange
$eventMethod=PaletteChange
$eventMethod=ParentAboutToChange
$eventMethod=ParentChange
$eventMethod=Polish
$eventMethod=PolishRequest
$eventMethod=QueryWhatsThis
$eventMethod=RequestSoftwareInputPanel
$eventMethod=Shortcut
$eventMethod=ShortcutOverride
$eventMethod=ShowToParent
$eventMethod=SockAct
$eventMethod=StateMachineSignal
$eventMethod=StateMachineWrapped
$eventMethod=StatusTip
$eventMethod=StyleChange
$eventMethod=TabletMove
$eventMethod=TabletPress
$eventMethod=TabletRelease
$eventMethod=OkRequest
$eventMethod=TabletEnterProximity
$eventMethod=TabletLeaveProximity
$eventMethod=Timer
$eventMethod=ToolBarChange
$eventMethod=ToolTip
$eventMethod=ToolTipChange
$eventMethod=UngrabKeyboard
$eventMethod=UngrabMouse
$eventMethod=UpdateLater
$eventMethod=UpdateRequest
$eventMethod=WhatsThis
$eventMethod=WhatsThisClicked
$eventMethod=Wheel
$eventMethod=WinEventAct
$eventMethod=WindowActivate
$eventMethod=WindowBlocked
$eventMethod=WindowDeactivate
$eventMethod=WindowIconChange
$eventMethod=WindowStateChange
$eventMethod=WindowTitleChange
$eventMethod=WindowUnblocked
$eventMethod=ZOrderChange
$eventMethod=KeyboardLayoutChange
$eventMethod=DynamicPropertyChange
$eventMethod=TouchBegin
$eventMethod=TouchUpdate
$eventMethod=TouchEnd
$eventMethod=WinIdChange
$eventMethod=Gesture
$eventMethod=GestureOverride

%%
%% connect/disconnect
%%

HB_FUNC_STATIC( QOBJECT_CONNECT )
{
  QObject * obj = (QObject *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) )
    {
      QString signal = hb_parc(1);
      int pos = signal.indexOf("(");
      QString method = signal.left(pos).toUpper();
      method.prepend("ON");

      PHB_DYNS pDynSym = hb_dynsymFindName( method.toLatin1().data() );

      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPush( hb_stackSelfItem() );
        PHB_ITEM codeblock = hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL );
        hb_vmPush( codeblock );
        hb_vmSend( 1 );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, method.toLatin1().data(), HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QString signal = hb_parc(1);
      int pos = signal.indexOf("(");
      QString method = signal.left(pos).toUpper();
      method.prepend("ON");

      PHB_DYNS pDynSym = hb_dynsymFindName( method.toLatin1().data() );

      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPush( hb_stackSelfItem() );
        hb_vmSend( 0 );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, method.toLatin1().data(), HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else if( ISNUMPAR(2) && ISNUM(1) )
    {
      int event = hb_parni(1);
      _qtxhb_processOnEventMethod2( (QEvent::Type) event );
    }
    else if( ISNUMPAR(1) && ISNUM(1) )
    {
      int event = hb_parni(1);
      _qtxhb_processOnEventMethod2( (QEvent::Type) event );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QOBJECT_DISCONNECT )
{
  QObject * obj = (QObject *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QString signal = hb_parc(1);
      int pos = signal.indexOf("(");
      QString method = signal.left(pos).toUpper();
      method.prepend("ON");

      PHB_DYNS pDynSym = hb_dynsymFindName( method.toLatin1().data() );

      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPush( hb_stackSelfItem() );
        hb_vmSend( 0 );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, method.toLatin1().data(), HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else if( ISNUMPAR(1) && ISNUM(1) )
    {
      int event = hb_parni(1);
      _qtxhb_processOnEventMethod2( (QEvent::Type) event );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

%%
%% Signals
%%

$beginSignals
$signal=|destroyed(QObject*)
$endSignals

#pragma ENDDUMP
