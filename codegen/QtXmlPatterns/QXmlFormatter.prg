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

$beginClassFrom=QXmlSerializer

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice )
$constructor=|new|const QXmlQuery &,QIODevice *

$prototypeV2=int indentationDepth() const

$prototypeV2=void setIndentationDepth( int depth )

$prototypeV2=virtual void atomicValue( const QVariant & value )

$prototypeV2=virtual void attribute( const QXmlName & name, const QStringRef & value )

$prototypeV2=virtual void characters( const QStringRef & value )

$prototypeV2=virtual void comment( const QString & value )

$prototypeV2=virtual void endDocument()

$prototypeV2=virtual void endElement()

$prototypeV2=virtual void endOfSequence()

$prototypeV2=virtual void processingInstruction( const QXmlName & name, const QString & value )

$prototypeV2=virtual void startDocument()

$prototypeV2=virtual void startElement( const QXmlName & name )

$prototypeV2=virtual void startOfSequence()

#pragma ENDDUMP
