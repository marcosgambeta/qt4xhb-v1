%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD autoDelete
   METHOD run
   METHOD setAutoDelete

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool autoDelete () const
$method=|bool|autoDelete|

$prototype=virtual void run () = 0
$virtualMethod=|void|run|

$prototype=void setAutoDelete ( bool autoDelete )
$method=|void|setAutoDelete|bool

$extraMethods

#pragma ENDDUMP
