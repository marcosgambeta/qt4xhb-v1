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

$beginClassFrom=QTextBlockGroup

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void add( const QTextBlock & block )

$prototypeV2=int count() const

$prototypeV2=QTextListFormat format() const

$prototypeV2=QTextBlock item( int i ) const

$prototypeV2=int itemNumber( const QTextBlock & block ) const

$prototypeV2=QString itemText( const QTextBlock & block ) const

$prototypeV2=void remove( const QTextBlock & block )

$prototypeV2=void removeItem( int i )

$prototypeV2=void setFormat( const QTextListFormat & format )

#pragma ENDDUMP
