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

$beginClassFrom=QAccessible

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QString actionText( int action, QAccessible::Text t, int child ) const = 0

$prototypeV2=virtual int childAt( int x, int y ) const = 0

$prototypeV2=virtual int childCount() const = 0

$prototypeV2=virtual bool doAction( int action, int child, const QVariantList & params = QVariantList() ) = 0

$prototypeV2=virtual int indexOfChild( const QAccessibleInterface * child ) const = 0

$prototypeV2=QVariant invokeMethod( QAccessible::Method method, int child = 0, const QVariantList & params = QVariantList() )

$prototypeV2=virtual bool isValid() const = 0

$prototypeV2=virtual QObject * object() const = 0

$prototypeV2=virtual QRect rect( int child ) const = 0

$prototypeV2=virtual QAccessible::Relation relationTo( int child, const QAccessibleInterface * other, int otherChild ) const = 0

$prototypeV2=virtual QAccessible::Role role( int child ) const = 0

$prototypeV2=virtual void setText( QAccessible::Text t, int child, const QString & text ) = 0

$prototypeV2=virtual QAccessible::State state( int child ) const = 0

$prototypeV2=virtual QString text( QAccessible::Text t, int child ) const = 0

$prototypeV2=virtual int userActionCount( int child ) const = 0

#pragma ENDDUMP
