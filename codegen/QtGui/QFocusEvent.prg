%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QFocusEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD gotFocus
   METHOD lostFocus
   METHOD reason

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFocusEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFocusEvent ( Type type, Qt::FocusReason reason = Qt::OtherFocusReason )
$constructor=|new|QEvent::Type,Qt::FocusReason=Qt::OtherFocusReason

$deleteMethod

$prototype=bool gotFocus () const
$method=|bool|gotFocus|

$prototype=bool lostFocus () const
$method=|bool|lostFocus|

$prototype=Qt::FocusReason reason () const
$method=|Qt::FocusReason|reason|

#pragma ENDDUMP
