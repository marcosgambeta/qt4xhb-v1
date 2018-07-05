%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual QString actionText ( int action, Text t, int child ) const
$virtualMethod=|QString|actionText|int,QAccessibleObject::Text,int

$prototype=virtual bool doAction ( int action, int child, const QVariantList & params )
$virtualMethod=|bool|doAction|int,int,const QVariantList &

$prototype=virtual bool isValid () const
$virtualMethod=|bool|isValid|

$prototype=virtual QObject * object () const
$virtualMethod=|QObject *|object|

$prototype=virtual QRect rect ( int child ) const
$virtualMethod=|QRect|rect|int

$prototype=virtual void setText ( Text t, int child, const QString & text )
$virtualMethod=|void|setText|QAccessibleObject::Text,int,const QString &

$prototype=virtual int userActionCount ( int child ) const
$virtualMethod=|int|userActionCount|int

#pragma ENDDUMP
