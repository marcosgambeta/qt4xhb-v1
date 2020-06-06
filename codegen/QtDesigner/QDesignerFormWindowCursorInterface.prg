%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDesigner/QDesignerFormWindowInterface>

$deleteMethod

$prototype=virtual QWidget * current () const = 0
$virtualMethod=|QWidget *|current|

$prototype=virtual QDesignerFormWindowInterface * formWindow () const = 0
$virtualMethod=|QDesignerFormWindowInterface *|formWindow|

$prototype=virtual bool hasSelection () const = 0
$virtualMethod=|bool|hasSelection|

$prototype=bool isWidgetSelected ( QWidget * widget ) const
$method=|bool|isWidgetSelected|QWidget *

$prototype=virtual bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor ) = 0
$virtualMethod=|bool|movePosition|QDesignerFormWindowCursorInterface::MoveOperation,QDesignerFormWindowCursorInterface::MoveMode=QDesignerFormWindowCursorInterface::MoveAnchor

$prototypeV2=virtual int position() const = 0

$prototype=virtual QWidget * selectedWidget ( int index ) const = 0
$virtualMethod=|QWidget *|selectedWidget|int

$prototypeV2=virtual int selectedWidgetCount() const = 0

$prototype=virtual void setPosition ( int position, MoveMode mode = MoveAnchor ) = 0
$virtualMethod=|void|setPosition|int,QDesignerFormWindowCursorInterface::MoveMode=QDesignerFormWindowCursorInterface::MoveAnchor

$prototype=virtual QWidget * widget ( int index ) const = 0
$virtualMethod=|QWidget *|widget|int

$prototypeV2=virtual int widgetCount() const = 0

$extraMethods

#pragma ENDDUMP
