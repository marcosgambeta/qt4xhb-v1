%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QTextImageFormat INHERIT QTextCharFormat

   METHOD new
   METHOD delete
   METHOD height
   METHOD isValid
   METHOD name
   METHOD setHeight
   METHOD setName
   METHOD setWidth
   METHOD width

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextImageFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextImageFormat ()
$constructor=|new|

$deleteMethod

$prototype=qreal height () const
$method=|qreal|height|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=void setHeight ( qreal height )
$method=|void|setHeight|qreal

$prototype=void setName ( const QString & name )
$method=|void|setName|const QString &

$prototype=void setWidth ( qreal width )
$method=|void|setWidth|qreal

$prototype=qreal width () const
$method=|qreal|width|

#pragma ENDDUMP
