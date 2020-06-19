%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QGesture>

$prototype=QGestureEvent ( const QList<QGesture *> & gestures )
$constructor=|new|const QList<QGesture *> &

$deleteMethod

$prototype=void accept ()
$internalMethod=|void|accept,accept1|

$prototype=void accept ( QGesture * gesture )
$internalMethod=|void|accept,accept2|QGesture *

$prototype=void accept ( Qt::GestureType gestureType )
$internalMethod=|void|accept,accept3|Qt::GestureType

/*
[1]void accept ()
[2]void accept ( QGesture * gesture )
[3]void accept ( Qt::GestureType gestureType )
*/

HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_accept1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_accept2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_accept3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=accept

$prototypeV2=QList<QGesture *> activeGestures() const

$prototypeV2=QList<QGesture *> canceledGestures() const

$prototype=QGesture * gesture ( Qt::GestureType type ) const
$method=|QGesture *|gesture|Qt::GestureType

$prototypeV2=QList<QGesture *> gestures() const

$prototype=void ignore ()
$internalMethod=|void|ignore,ignore1|

$prototype=void ignore ( QGesture * gesture )
$internalMethod=|void|ignore,ignore2|QGesture *

$prototype=void ignore ( Qt::GestureType gestureType )
$internalMethod=|void|ignore,ignore3|Qt::GestureType

/*
[1]void ignore ()
[2]void ignore ( QGesture * gesture )
[3]void ignore ( Qt::GestureType gestureType )
*/

HB_FUNC_STATIC( QGESTUREEVENT_IGNORE )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_ignore1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_ignore2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_ignore3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ignore

$prototype=bool isAccepted () const
$internalMethod=|bool|isAccepted,isAccepted1|

$prototype=bool isAccepted ( QGesture * gesture ) const
$internalMethod=|bool|isAccepted,isAccepted2|QGesture *

$prototype=bool isAccepted ( Qt::GestureType gestureType ) const
$internalMethod=|bool|isAccepted,isAccepted3|Qt::GestureType

/*
[1]bool isAccepted () const
[2]bool isAccepted ( QGesture * gesture ) const
[3]bool isAccepted ( Qt::GestureType gestureType ) const
*/

HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_isAccepted1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_isAccepted2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_isAccepted3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isAccepted

$prototype=QPointF mapToGraphicsScene ( const QPointF & gesturePoint ) const
$method=|QPointF|mapToGraphicsScene|const QPointF &

$prototype=void setAccepted ( bool accepted )
$internalMethod=|void|setAccepted,setAccepted1|bool

$prototype=void setAccepted ( QGesture * gesture, bool value )
$internalMethod=|void|setAccepted,setAccepted2|QGesture *,bool

$prototype=void setAccepted ( Qt::GestureType gestureType, bool value )
$internalMethod=|void|setAccepted,setAccepted3|Qt::GestureType,bool

/*
[1]void setAccepted ( bool accepted )
[2]void setAccepted ( QGesture * gesture, bool value )
[3]void setAccepted ( Qt::GestureType gestureType, bool value )
*/

HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED )
{
  if( ISNUMPAR(1) && ISLOG(1) )
  {
    QGestureEvent_setAccepted1();
  }
  else if( ISNUMPAR(2) && ISQGESTURE(1) && ISLOG(2) )
  {
    QGestureEvent_setAccepted2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QGestureEvent_setAccepted3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAccepted

$prototype=void setWidget(QWidget *widget)
$method=|void|setWidget|QWidget *

$prototypeV2=QWidget * widget() const

#pragma ENDDUMP
