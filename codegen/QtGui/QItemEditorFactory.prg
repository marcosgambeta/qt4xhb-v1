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

$prototype=virtual QWidget * createEditor ( QVariant::Type type, QWidget * parent ) const
$virtualMethod=|QWidget *|createEditor|QVariant::Type,QWidget *

$prototype=void registerEditor ( QVariant::Type type, QItemEditorCreatorBase * creator )
$method=|void|registerEditor|QVariant::Type,QItemEditorCreatorBase *

$prototype=virtual QByteArray valuePropertyName ( QVariant::Type type ) const
$virtualMethod=|QByteArray|valuePropertyName|QVariant::Type

$prototype=static const QItemEditorFactory * defaultFactory ()
$staticMethod=|const QItemEditorFactory *|defaultFactory|

$prototype=static void setDefaultFactory ( QItemEditorFactory * factory )
$staticMethod=|void|setDefaultFactory|QItemEditorFactory *

$extraMethods

#pragma ENDDUMP
