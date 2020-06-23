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

$beginClassFrom=QAccessibleObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleWidget ( QWidget * w, Role role = Client, const QString & name = QString() )
$constructor=|new|QWidget *,QAccessible::Role=QAccessible::Client,const QString &=QString()

$prototypeV2=virtual QString actionText( int action, QAccessible::Text t, int child ) const

$prototypeV2=virtual int childAt( int x, int y ) const

$prototypeV2=virtual int childCount() const

$prototypeV2=virtual bool doAction( int action, int child, const QVariantList & params )

$prototypeV2=virtual int indexOfChild( const QAccessibleInterface * child ) const

$prototypeV2=virtual QRect rect( int child ) const

$prototypeV2=virtual QAccessible::Relation relationTo( int child, const QAccessibleInterface * other, int otherChild ) const

$prototypeV2=virtual QAccessible::Role role( int child ) const

$prototypeV2=virtual QAccessible::State state( int child ) const

$prototypeV2=virtual QString text( QAccessible::Text t, int child ) const

$prototypeV2=virtual int userActionCount( int child ) const

#pragma ENDDUMP
