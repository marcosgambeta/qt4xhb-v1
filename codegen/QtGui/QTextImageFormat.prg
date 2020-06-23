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

$prototypeV2=void setHeight( qreal height )

$prototypeV2=void setName( const QString & name )

$prototypeV2=void setWidth( qreal width )

$prototypeV2=qreal width() const

#pragma ENDDUMP
