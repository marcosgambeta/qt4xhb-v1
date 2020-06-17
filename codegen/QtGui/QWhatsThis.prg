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

$prototype=static QAction * createAction ( QObject * parent = 0 )
$staticMethod=|QAction *|createAction|QObject *=0

$prototypeV2=static void enterWhatsThisMode()

$prototypeV2=static void hideText()

$prototypeV2=static bool inWhatsThisMode()

$prototypeV2=static void leaveWhatsThisMode()

$prototype=static void showText ( const QPoint & pos, const QString & text, QWidget * w = 0 )
$staticMethod=|void|showText|const QPoint &,const QString &,QWidget *=0

$extraMethods

#pragma ENDDUMP
