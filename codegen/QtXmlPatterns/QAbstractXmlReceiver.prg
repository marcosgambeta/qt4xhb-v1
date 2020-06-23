%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void atomicValue( const QVariant & value ) = 0

$prototypeV2=virtual void attribute( const QXmlName & name, const QStringRef & value ) = 0

$prototypeV2=virtual void characters( const QStringRef & value ) = 0

$prototypeV2=virtual void comment( const QString & value ) = 0

$prototypeV2=virtual void endDocument() = 0

$prototypeV2=virtual void endElement() = 0

$prototypeV2=virtual void endOfSequence() = 0

$prototypeV2=virtual void namespaceBinding( const QXmlName & name ) = 0

$prototypeV2=virtual void processingInstruction( const QXmlName & target, const QString & value ) = 0

$prototypeV2=virtual void startDocument() = 0

$prototypeV2=virtual void startElement( const QXmlName & name ) = 0

$prototypeV2=virtual void startOfSequence() = 0

$extraMethods

#pragma ENDDUMP
