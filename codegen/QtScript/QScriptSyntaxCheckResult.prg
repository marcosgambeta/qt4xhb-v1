%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScriptSyntaxCheckResult ( const QScriptSyntaxCheckResult & other )
$constructor=|new|const QScriptSyntaxCheckResult &

$deleteMethod

$prototypeV2=int errorColumnNumber() const

$prototypeV2=int errorLineNumber() const

$prototypeV2=QString errorMessage() const

$prototype=State state () const
$method=|QScriptSyntaxCheckResult::State|state|

$extraMethods

#pragma ENDDUMP
