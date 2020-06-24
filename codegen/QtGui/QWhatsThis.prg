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

#include <QtGui/QAction>

$deleteMethod

$prototypeV2=static QAction * createAction( QObject * parent = 0 )

$prototypeV2=static void enterWhatsThisMode()

$prototypeV2=static void hideText()

$prototypeV2=static bool inWhatsThisMode()

$prototypeV2=static void leaveWhatsThisMode()

$prototypeV2=static void showText( const QPoint & pos, const QString & text, QWidget * w = 0 )

$extraMethods

#pragma ENDDUMP
