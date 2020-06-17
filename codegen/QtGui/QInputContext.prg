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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextFormat>

$deleteMethod

$prototype=virtual QList<QAction *> actions ()
$virtualMethod=|QList<QAction *>|actions|

$prototype=virtual bool filterEvent ( const QEvent * event )
$virtualMethod=|bool|filterEvent|const QEvent *

$prototypeV2=QWidget * focusWidget() const

$prototypeV2=virtual QFont font() const

$prototypeV2=virtual QString identifierName() = 0

$prototypeV2=virtual bool isComposing() const = 0

$prototypeV2=virtual QString language() = 0

$prototype=virtual void mouseHandler ( int x, QMouseEvent * event )
$virtualMethod=|void|mouseHandler|int,QMouseEvent *

$prototypeV2=virtual void reset() = 0

$prototype=void sendEvent ( const QInputMethodEvent & event )
$method=|void|sendEvent|const QInputMethodEvent &

$prototype=virtual void setFocusWidget ( QWidget * widget )
$virtualMethod=|void|setFocusWidget|QWidget *

$prototype=QTextFormat standardFormat ( StandardFormat s ) const
$method=|QTextFormat|standardFormat|QInputContext::StandardFormat

$prototypeV2=virtual void update()

$prototype=virtual void widgetDestroyed ( QWidget * widget )
$virtualMethod=|void|widgetDestroyed|QWidget *

#pragma ENDDUMP
