%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessible

   METHOD delete
   METHOD actionText
   METHOD childAt
   METHOD childCount
   METHOD doAction
   METHOD indexOfChild
   METHOD invokeMethod
   METHOD isValid
   METHOD object
   METHOD rect
   METHOD relationTo
   METHOD role
   METHOD setText
   METHOD state
   METHOD text
   METHOD userActionCount

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString actionText ( int action, Text t, int child ) const = 0
$virtualMethod=|QString|actionText|int,QAccessible::Text,int

$prototype=virtual int childAt ( int x, int y ) const = 0
$virtualMethod=|int|childAt|int,int

$prototype=virtual int childCount () const = 0
$virtualMethod=|int|childCount|

$prototype=virtual bool doAction ( int action, int child, const QVariantList & params = QVariantList() ) = 0
$virtualMethod=|bool|doAction|int,int,const QVariantList &=QVariantList()

$prototype=virtual int indexOfChild ( const QAccessibleInterface * child ) const = 0
$virtualMethod=|int|indexOfChild|const QAccessibleInterface *

$prototype=QVariant invokeMethod ( Method method, int child = 0, const QVariantList & params = QVariantList() )
$method=|QVariant|invokeMethod|QAccessible::Method,int=0,const QVariantList &=QVariantList()

$prototype=virtual bool isValid () const = 0
$virtualMethod=|bool|isValid|

$prototype=virtual QObject * object () const = 0
$virtualMethod=|QObject *|object|

$prototype=virtual QRect rect ( int child ) const = 0
$virtualMethod=|QRect|rect|int

$prototype=virtual Relation relationTo ( int child, const QAccessibleInterface * other, int otherChild ) const = 0
$virtualMethod=|QAccessible::Relation|relationTo|int,const QAccessibleInterface *,int

$prototype=virtual Role role ( int child ) const = 0
$virtualMethod=|QAccessible::Role|role|int

$prototype=virtual void setText ( Text t, int child, const QString & text ) = 0
$virtualMethod=|void|setText|QAccessible::Text,int,const QString &

$prototype=virtual State state ( int child ) const = 0
$virtualMethod=|QAccessible::State|state|int

$prototype=virtual QString text ( Text t, int child ) const = 0
$virtualMethod=|QString|text|QAccessible::Text,int

$prototype=virtual int userActionCount ( int child ) const = 0
$virtualMethod=|int|userActionCount|int

#pragma ENDDUMP
