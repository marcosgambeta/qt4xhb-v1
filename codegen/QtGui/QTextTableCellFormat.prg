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

$prototype=QTextTableCellFormat ()
$constructor=|new|

$deleteMethod

$prototypeV2=qreal bottomPadding() const

$prototypeV2=bool isValid() const

$prototypeV2=qreal leftPadding() const

$prototypeV2=qreal rightPadding() const

$prototype=void setBottomPadding ( qreal padding )
$method=|void|setBottomPadding|qreal

$prototype=void setLeftPadding ( qreal padding )
$method=|void|setLeftPadding|qreal

$prototype=void setPadding ( qreal padding )
$method=|void|setPadding|qreal

$prototype=void setRightPadding ( qreal padding )
$method=|void|setRightPadding|qreal

$prototype=void setTopPadding ( qreal padding )
$method=|void|setTopPadding|qreal

$prototypeV2=qreal topPadding() const

#pragma ENDDUMP
