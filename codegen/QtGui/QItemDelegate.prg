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

$beginClassFrom=QAbstractItemDelegate

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=bool hasClipping() const

$prototypeV2=QItemEditorFactory * itemEditorFactory() const

$prototypeV2=void setClipping( bool clip )

$prototypeV2=void setItemEditorFactory( QItemEditorFactory * factory )

#pragma ENDDUMP
