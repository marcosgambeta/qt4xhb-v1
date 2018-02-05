%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD tip

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStatusTipEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QStatusTipEvent(const QString &tip)
$constructor=|new|const QString &

$deleteMethod

$prototype=QString tip() const
$method=|QString|tip|

#pragma ENDDUMP
