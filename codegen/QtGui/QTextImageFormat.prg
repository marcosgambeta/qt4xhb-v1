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

$beginClassFrom=QTextCharFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextImageFormat ()
$constructor=|new|

$deleteMethod

$prototypeV2=qreal height() const

$prototypeV2=bool isValid() const

$prototypeV2=QString name() const

$prototype=void setHeight ( qreal height )
$method=|void|setHeight|qreal

$prototype=void setName ( const QString & name )
$method=|void|setName|const QString &

$prototype=void setWidth ( qreal width )
$method=|void|setWidth|qreal

$prototypeV2=qreal width() const

#pragma ENDDUMP
