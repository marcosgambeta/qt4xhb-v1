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

$beginClassFrom=QAbstractXmlReceiver

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
$constructor=|new|const QXmlQuery &,QIODevice *

$prototypeV2=const QTextCodec * codec() const

$prototypeV2=QIODevice * outputDevice() const

$prototypeV2=void setCodec( const QTextCodec * outputCodec )

$prototypeV2=virtual void atomicValue( const QVariant & value )

$prototypeV2=virtual void attribute( const QXmlName & name, const QStringRef & value )

$prototypeV2=virtual void characters( const QStringRef & value )

$prototypeV2=virtual void comment( const QString & value )

$prototypeV2=virtual void endDocument()

$prototypeV2=virtual void endElement()

$prototypeV2=virtual void endOfSequence()

$prototypeV2=virtual void namespaceBinding( const QXmlName & nb )

$prototypeV2=virtual void processingInstruction( const QXmlName & name, const QString & value )

$prototypeV2=virtual void startDocument()

$prototypeV2=virtual void startElement( const QXmlName & name )

$prototypeV2=virtual void startOfSequence()

#pragma ENDDUMP
