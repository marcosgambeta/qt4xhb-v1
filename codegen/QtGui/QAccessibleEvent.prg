%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QEvent

   METHOD new
   METHOD child
   METHOD setValue
   METHOD value

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleEvent ( Type type, int child )
$constructor=|new|QAccessibleEvent::Type,int

$prototype=int child () const
$method=|int|child|

$prototype=void setValue ( const QString & text )
$method=|void|setValue|const QString &

$prototype=QString value () const
$method=|QString|value|

#pragma ENDDUMP
