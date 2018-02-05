%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAccessibleEvent INHERIT QEvent

   METHOD new
   METHOD child
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QAccessibleEvent ( Type type, int child )
$constructor=|new|QAccessibleEvent::Type,int

$prototype=int child () const
$method=|int|child|

$prototype=void setValue ( const QString & text )
$method=|void|setValue|const QString &

$prototype=QString value () const
$method=|QString|value|

#pragma ENDDUMP
