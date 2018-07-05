%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextFormat>

$deleteMethod

$prototype=virtual QList<QAction *> actions ()
$virtualMethod=|QList<QAction *>|actions|

$prototype=virtual bool filterEvent ( const QEvent * event )
$virtualMethod=|bool|filterEvent|const QEvent *

$prototype=QWidget * focusWidget () const
$method=|QWidget *|focusWidget|

$prototype=virtual QFont font () const
$virtualMethod=|QFont|font|

$prototype=virtual QString identifierName () = 0
$virtualMethod=|QString|identifierName|

$prototype=virtual bool isComposing () const = 0
$virtualMethod=|bool|isComposing|

$prototype=virtual QString language () = 0
$virtualMethod=|QString|language|

$prototype=virtual void mouseHandler ( int x, QMouseEvent * event )
$virtualMethod=|void|mouseHandler|int,QMouseEvent *

$prototype=virtual void reset () = 0
$virtualMethod=|void|reset|

$prototype=void sendEvent ( const QInputMethodEvent & event )
$method=|void|sendEvent|const QInputMethodEvent &

$prototype=virtual void setFocusWidget ( QWidget * widget )
$virtualMethod=|void|setFocusWidget|QWidget *

$prototype=QTextFormat standardFormat ( StandardFormat s ) const
$method=|QTextFormat|standardFormat|QInputContext::StandardFormat

$prototype=virtual void update ()
$virtualMethod=|void|update|

$prototype=virtual void widgetDestroyed ( QWidget * widget )
$virtualMethod=|void|widgetDestroyed|QWidget *

#pragma ENDDUMP
