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

$prototype=QItemEditorFactory ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual QWidget * createEditor( QVariant::Type type, QWidget * parent ) const

$prototypeV2=void registerEditor( QVariant::Type type, QItemEditorCreatorBase * creator )

$prototypeV2=virtual QByteArray valuePropertyName( QVariant::Type type ) const

$prototypeV2=static const QItemEditorFactory * defaultFactory ()

$prototypeV2=static void setDefaultFactory( QItemEditorFactory * factory )

$extraMethods

#pragma ENDDUMP
