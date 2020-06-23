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

#include <QtGui/QLayout>

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QSizePolicy::ControlTypes controlTypes() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const = 0

$prototypeV2=virtual QRect geometry() const = 0

$prototypeV2=virtual bool hasHeightForWidth() const

$prototypeV2=virtual int heightForWidth( int w ) const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual bool isEmpty() const = 0

$prototypeV2=virtual QLayout * layout()

$prototypeV2=virtual QSize maximumSize() const = 0

$prototypeV2=virtual int minimumHeightForWidth( int w ) const

$prototypeV2=virtual QSize minimumSize() const = 0

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=virtual void setGeometry( const QRect & r ) = 0

$prototypeV2=virtual QSize sizeHint() const = 0

$prototypeV2=virtual QSpacerItem * spacerItem()

$prototypeV2=virtual QWidget * widget()

$extraMethods

#pragma ENDDUMP
