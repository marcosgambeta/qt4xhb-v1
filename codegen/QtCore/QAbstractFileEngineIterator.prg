%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QFileInfo currentFileInfo () const
$virtualMethod=|QFileInfo|currentFileInfo|

$prototype=virtual QString currentFileName () const = 0
$virtualMethod=|QString|currentFileName|

$prototype=QString currentFilePath () const
$method=|QString|currentFilePath|

$prototype=QDir::Filters filters () const
$method=|QDir::Filters|filters|

$prototype=virtual bool hasNext () const = 0
$virtualMethod=|bool|hasNext|

$prototype=QStringList nameFilters () const
$method=|QStringList|nameFilters|

$prototype=virtual QString next () = 0
$virtualMethod=|QString|next|

$prototype=QString path () const
$method=|QString|path|

$extraMethods

#pragma ENDDUMP
