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

$prototypeV2=virtual QList<QAction *> actions()

$prototypeV2=virtual bool filterEvent( const QEvent * event )

$prototypeV2=QWidget * focusWidget() const

$prototypeV2=virtual QFont font() const

$prototypeV2=virtual QString identifierName() = 0

$prototypeV2=virtual bool isComposing() const = 0

$prototypeV2=virtual QString language() = 0

$prototypeV2=virtual void mouseHandler( int x, QMouseEvent * event )

$prototypeV2=virtual void reset() = 0

$prototypeV2=void sendEvent( const QInputMethodEvent & event )

$prototypeV2=virtual void setFocusWidget( QWidget * widget )

$prototypeV2=QTextFormat standardFormat( QInputContext::StandardFormat s ) const

$prototypeV2=virtual void update()

$prototypeV2=virtual void widgetDestroyed( QWidget * widget )

#pragma ENDDUMP
