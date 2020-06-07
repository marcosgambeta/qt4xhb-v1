%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototype=QHelpContentItem * child ( int row ) const
$method=|QHelpContentItem *|child|int

$prototypeV2=int childCount() const

$prototype=int childPosition ( QHelpContentItem * child ) const
$method=|int|childPosition|QHelpContentItem *

$prototype=QHelpContentItem * parent () const
$method=|QHelpContentItem *|parent|

$prototypeV2=int row() const

$prototypeV2=QString title() const

$prototype=QUrl url () const
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
