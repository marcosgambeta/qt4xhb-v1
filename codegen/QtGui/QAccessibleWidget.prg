%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

$beginClassFrom=QAccessibleObject

   METHOD new
   METHOD actionText
   METHOD childAt
   METHOD childCount
   METHOD doAction
   METHOD indexOfChild
   METHOD rect
   METHOD relationTo
   METHOD role
   METHOD state
   METHOD text
   METHOD userActionCount

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleWidget ( QWidget * w, Role role = Client, const QString & name = QString() )
$constructor=|new|QWidget *,QAccessible::Role=QAccessible::Client,const QString &=QString()

$prototype=virtual QString actionText ( int action, Text t, int child ) const
$virtualMethod=|QString|actionText|int,QAccessible::Text,int

$prototype=virtual int childAt ( int x, int y ) const
$virtualMethod=|int|childAt|int,int

$prototype=virtual int childCount () const
$virtualMethod=|int|childCount|

$prototype=virtual bool doAction ( int action, int child, const QVariantList & params )
$virtualMethod=|bool|doAction|int,int,const QVariantList &

$prototype=virtual int indexOfChild ( const QAccessibleInterface * child ) const
$virtualMethod=|int|indexOfChild|const QAccessibleInterface *

$prototype=virtual QRect rect ( int child ) const
$virtualMethod=|QRect|rect|int

$prototype=virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const
$virtualMethod=|QAccessible::Relation|relationTo|int,const QAccessibleInterface *,int

$prototype=virtual Role role ( int child ) const
$virtualMethod=|QAccessible::Role|role|int

$prototype=virtual State state ( int child ) const
$virtualMethod=|QAccessible::State|state|int

$prototype=virtual QString text ( Text t, int child ) const
$virtualMethod=|QString|text|QAccessible::Text,int

$prototype=virtual int userActionCount ( int child ) const
$virtualMethod=|int|userActionCount|int

#pragma ENDDUMP
