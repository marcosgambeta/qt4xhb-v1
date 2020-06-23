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

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
$internalConstructor=|new1|QEvent::Type,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

$prototype=QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)
$internalConstructor=|new2|QEvent::Type,const QPoint &,const QPoint &,Qt::MouseButton,Qt::MouseButtons,Qt::KeyboardModifiers

/*
[1]QMouseEvent(Type type, const QPoint &pos, Qt::MouseButton button,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
[2]QMouseEvent(Type type, const QPoint &pos, const QPoint &globalPos,Qt::MouseButton button, Qt::MouseButtons buttons,Qt::KeyboardModifiers modifiers)
*/

HB_FUNC_STATIC( QMOUSEEVENT_NEW )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QMouseEvent_new1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMouseEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=const QPoint & pos() const

$prototypeV2=const QPoint & globalPos() const

$prototypeV2=int x() const

$prototypeV2=int y() const

$prototypeV2=int globalX() const

$prototypeV2=int globalY() const

$prototypeV2=Qt::MouseButton button() const

$prototypeV2=Qt::MouseButtons buttons() const

$prototypeV2=bool hasExtendedInfo() const

$prototypeV2=QPointF posF() const

$prototypeV2=static QMouseEvent * createExtendedMouseEvent( QEvent::Type type, const QPointF & pos, const QPoint & globalPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )

#pragma ENDDUMP
