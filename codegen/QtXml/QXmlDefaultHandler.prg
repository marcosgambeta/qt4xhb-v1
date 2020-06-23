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

$beginClassFrom=QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlDefaultHandler ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual bool attributeDecl( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value )

$prototypeV2=virtual bool characters( const QString & ch )

$prototypeV2=virtual bool comment( const QString & ch )

$prototypeV2=virtual bool endCDATA()

$prototypeV2=virtual bool endDTD()

$prototypeV2=virtual bool endDocument()

$prototypeV2=virtual bool endElement( const QString & namespaceURI, const QString & localName, const QString & qName )

$prototypeV2=virtual bool endEntity( const QString & name )

$prototypeV2=virtual bool endPrefixMapping( const QString & prefix )

$prototypeV2=virtual bool error( const QXmlParseException & exception )

$prototypeV2=virtual QString errorString() const

$prototypeV2=virtual bool externalEntityDecl( const QString & name, const QString & publicId, const QString & systemId )

$prototypeV2=virtual bool fatalError( const QXmlParseException & exception )

$prototypeV2=virtual bool ignorableWhitespace( const QString & ch )

$prototypeV2=virtual bool internalEntityDecl( const QString & name, const QString & value )

$prototypeV2=virtual bool notationDecl( const QString & name, const QString & publicId, const QString & systemId )

$prototypeV2=virtual bool processingInstruction( const QString & target, const QString & data )

$prototypeV2=virtual void setDocumentLocator( QXmlLocator * locator )

$prototypeV2=virtual bool skippedEntity( const QString & name )

$prototypeV2=virtual bool startCDATA()

$prototypeV2=virtual bool startDTD( const QString & name, const QString & publicId, const QString & systemId )

$prototypeV2=virtual bool startDocument()

$prototypeV2=virtual bool startElement( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts )

$prototypeV2=virtual bool startEntity( const QString & name )

$prototypeV2=virtual bool startPrefixMapping( const QString & prefix, const QString & uri )

$prototypeV2=virtual bool unparsedEntityDecl( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName )

$prototypeV2=virtual bool warning( const QXmlParseException & exception )

#pragma ENDDUMP
