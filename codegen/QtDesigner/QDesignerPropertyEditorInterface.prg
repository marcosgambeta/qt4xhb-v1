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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDesigner/QDesignerFormEditorInterface>

$deleteMethod

$prototypeV2=virtual QDesignerFormEditorInterface * core() const

$prototypeV2=virtual QString currentPropertyName() const = 0

$prototypeV2=virtual bool isReadOnly() const = 0

$prototypeV2=virtual QObject * object() const = 0

$prototypeV2=virtual void setObject( QObject * object ) = 0

$prototypeV2=virtual void setPropertyValue( const QString & name, const QVariant & value, bool changed = true ) = 0

$prototypeV2=virtual void setReadOnly( bool readOnly ) = 0

$beginSignals
$signal=|propertyChanged(QString,QVariant)
$endSignals

#pragma ENDDUMP
