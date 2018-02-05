%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QItemDelegate ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool hasClipping () const
$method=|bool|hasClipping|

$prototype=QItemEditorFactory * itemEditorFactory () const
$method=|QItemEditorFactory *|itemEditorFactory|

$prototype=void setClipping ( bool clip )
$method=|void|setClipping|bool

$prototype=void setItemEditorFactory ( QItemEditorFactory * factory )
$method=|void|setItemEditorFactory|QItemEditorFactory *

#pragma ENDDUMP
