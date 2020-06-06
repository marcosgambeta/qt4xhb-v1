%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString fileName () const = 0
$virtualMethod=|QString|fileName|

$prototypeV2=virtual bool load() = 0

$prototypeV2=virtual bool save() = 0

$prototype=virtual void setFileName ( const QString & fileName ) = 0
$virtualMethod=|void|setFileName|const QString &

#pragma ENDDUMP
