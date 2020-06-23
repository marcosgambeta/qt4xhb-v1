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

$beginClassFrom=QAccessibleInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=virtual QString actionText( int action, QAccessibleObject::Text t, int child ) const

$prototypeV2=virtual bool doAction( int action, int child, const QVariantList & params )

$prototypeV2=virtual bool isValid() const

$prototypeV2=virtual QObject * object() const

$prototypeV2=virtual QRect rect( int child ) const

$prototypeV2=virtual void setText( QAccessibleObject::Text t, int child, const QString & text )

$prototypeV2=virtual int userActionCount( int child ) const

#pragma ENDDUMP
