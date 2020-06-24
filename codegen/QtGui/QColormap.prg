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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QColor>

$prototype=QColormap ( const QColormap & colormap )
$constructor=|new|const QColormap &

$deleteMethod

$prototypeV2=const QColor colorAt( uint pixel ) const

$prototypeV2=const QVector<QColor> colormap() const

$prototypeV2=int depth() const

$prototypeV2=QColormap::Mode mode() const

$prototypeV2=uint pixel( const QColor & color ) const

$prototypeV2=int size() const

$prototypeV2=static QColormap instance( int screen = -1 )

$extraMethods

#pragma ENDDUMP
