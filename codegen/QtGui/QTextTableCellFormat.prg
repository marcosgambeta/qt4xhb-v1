%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=qreal bottomPadding () const
$method=|qreal|bottomPadding|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal leftPadding () const
$method=|qreal|leftPadding|

$prototype=qreal rightPadding () const
$method=|qreal|rightPadding|

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

$prototype=qreal topPadding () const
$method=|qreal|topPadding|

#pragma ENDDUMP
