%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXml

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

$prototypeV2=virtual bool characters( const QString & ch ) = 0

$prototypeV2=virtual bool endDocument() = 0

$prototypeV2=virtual bool endElement( const QString & namespaceURI, const QString & localName, const QString & qName ) = 0

$prototypeV2=virtual bool endPrefixMapping( const QString & prefix ) = 0

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=virtual bool ignorableWhitespace( const QString & ch ) = 0

$prototypeV2=virtual bool processingInstruction( const QString & target, const QString & data ) = 0

$prototypeV2=virtual void setDocumentLocator( QXmlLocator * locator ) = 0

$prototypeV2=virtual bool skippedEntity( const QString & name ) = 0

$prototypeV2=virtual bool startDocument() = 0

$prototypeV2=virtual bool startElement( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts ) = 0

$prototypeV2=virtual bool startPrefixMapping( const QString & prefix, const QString & uri ) = 0

$extraMethods

#pragma ENDDUMP
