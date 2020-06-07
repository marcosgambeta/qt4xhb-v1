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

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextListFormat ()
$constructor=|new|

$deleteMethod

$prototypeV2=int indent() const

$prototypeV2=bool isValid() const

$prototypeV2=QString numberPrefix() const

$prototypeV2=QString numberSuffix() const

$prototype=void setIndent ( int indentation )
$method=|void|setIndent|int

$prototype=void setNumberPrefix ( const QString & numberPrefix )
$method=|void|setNumberPrefix|const QString &

$prototype=void setNumberSuffix ( const QString & numberSuffix )
$method=|void|setNumberSuffix|const QString &

$prototype=void setStyle ( Style style )
$method=|void|setStyle|QTextListFormat::Style

$prototype=Style style () const
$method=|QTextListFormat::Style|style|

#pragma ENDDUMP
