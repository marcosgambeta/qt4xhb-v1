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

$prototype=void add ( const QTextBlock & block )
$method=|void|add|const QTextBlock &

$prototype=int count () const
$method=|int|count|

$prototype=QTextListFormat format () const
$method=|QTextListFormat|format|

$prototype=QTextBlock item ( int i ) const
$method=|QTextBlock|item|int

$prototype=int itemNumber ( const QTextBlock & block ) const
$method=|int|itemNumber|const QTextBlock &

$prototype=QString itemText ( const QTextBlock & block ) const
$method=|QString|itemText|const QTextBlock &

$prototype=void remove ( const QTextBlock & block )
$method=|void|remove|const QTextBlock &

$prototype=void removeItem ( int i )
$method=|void|removeItem|int

$prototype=void setFormat ( const QTextListFormat & format )
$method=|void|setFormat|const QTextListFormat &

#pragma ENDDUMP
