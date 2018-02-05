%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLSTREAMATTRIBUTES
REQUEST QIODEVICE
REQUEST QSTRINGREF
REQUEST QXMLSTREAMENTITYDECLARATIONS
REQUEST QXMLSTREAMENTITYRESOLVER
REQUEST QXMLSTREAMNAMESPACEDECLARATIONS
REQUEST QXMLSTREAMNOTATIONDECLARATIONS
#endif

CLASS QXmlStreamReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD addData1
   METHOD addData2
   METHOD addData3
   METHOD addData
   METHOD addExtraNamespaceDeclaration
   METHOD addExtraNamespaceDeclarations
   METHOD atEnd
   METHOD attributes
   METHOD characterOffset
   METHOD clear
   METHOD columnNumber
   METHOD device
   METHOD documentEncoding
   METHOD documentVersion
   METHOD dtdName
   METHOD dtdPublicId
   METHOD dtdSystemId
   METHOD entityDeclarations
   METHOD entityResolver
   METHOD error
   METHOD errorString
   METHOD hasError
   METHOD isCDATA
   METHOD isCharacters
   METHOD isComment
   METHOD isDTD
   METHOD isEndDocument
   METHOD isEndElement
   METHOD isEntityReference
   METHOD isProcessingInstruction
   METHOD isStandaloneDocument
   METHOD isStartDocument
   METHOD isStartElement
   METHOD isWhitespace
   METHOD lineNumber
   METHOD name
   METHOD namespaceDeclarations
   METHOD namespaceProcessing
   METHOD namespaceUri
   METHOD notationDeclarations
   METHOD prefix
   METHOD processingInstructionData
   METHOD processingInstructionTarget
   METHOD qualifiedName
   METHOD raiseError
   METHOD readElementText
   METHOD readNext
   METHOD readNextStartElement
   METHOD setDevice
   METHOD setEntityResolver
   METHOD setNamespaceProcessing
   METHOD skipCurrentElement
   METHOD text
   METHOD tokenString
   METHOD tokenType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QXmlStreamReader()
$constructor=|new1|

$prototype=QXmlStreamReader(QIODevice * device)
$constructor=|new2|QIODevice *

$prototype=QXmlStreamReader(const QByteArray & data)
$constructor=|new3|const QByteArray &

$prototype=QXmlStreamReader(const QString & data)
$constructor=|new4|const QString &

$prototype=QXmlStreamReader(const char * data)
$constructor=|new5|const char *

//[1]QXmlStreamReader()
//[2]QXmlStreamReader(QIODevice * device)
//[3]QXmlStreamReader(const QByteArray & data)
//[4]QXmlStreamReader(const QString & data)
//[5]QXmlStreamReader(const char * data)

HB_FUNC_STATIC( QXMLSTREAMREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addData(const QByteArray & data)
$method=|void|addData,addData1|const QByteArray &

$prototype=void addData(const QString & data)
$method=|void|addData,addData2|const QString &

$prototype=void addData(const char * data)
$method=|void|addData,addData3|const char *

//[1]void addData(const QByteArray & data)
//[2]void addData(const QString & data)
//[3]void addData(const char * data)

HB_FUNC_STATIC( QXMLSTREAMREADER_ADDDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_ADDDATA1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_ADDDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void addExtraNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration)
$method=|void|addExtraNamespaceDeclaration|const QXmlStreamNamespaceDeclaration &

$prototype=void addExtraNamespaceDeclarations(const QXmlStreamNamespaceDeclarations & extraNamespaceDeclarations)
$method=|void|addExtraNamespaceDeclarations|const QXmlStreamNamespaceDeclarations &

$prototype=bool atEnd() const
$method=|bool|atEnd|

$prototype=QXmlStreamAttributes attributes() const
$method=|QXmlStreamAttributes|attributes|

$prototype=qint64 characterOffset() const
$method=|qint64|characterOffset|

$prototype=void clear()
$method=|void|clear|

$prototype=qint64 columnNumber() const
$method=|qint64|columnNumber|

$prototype=QIODevice * device() const
$method=|QIODevice *|device|

$prototype=QStringRef documentEncoding() const
$method=|QStringRef|documentEncoding|

$prototype=QStringRef documentVersion() const
$method=|QStringRef|documentVersion|

$prototype=QStringRef dtdName() const
$method=|QStringRef|dtdName|

$prototype=QStringRef dtdPublicId() const
$method=|QStringRef|dtdPublicId|

$prototype=QStringRef dtdSystemId() const
$method=|QStringRef|dtdSystemId|

$prototype=QXmlStreamEntityDeclarations entityDeclarations() const
$method=|QXmlStreamEntityDeclarations|entityDeclarations|

$prototype=QXmlStreamEntityResolver * entityResolver() const
$method=|QXmlStreamEntityResolver *|entityResolver|

$prototype=Error error() const
$method=|QXmlStreamReader::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool hasError() const
$method=|bool|hasError|

$prototype=bool isCDATA() const
$method=|bool|isCDATA|

$prototype=bool isCharacters() const
$method=|bool|isCharacters|

$prototype=bool isComment() const
$method=|bool|isComment|

$prototype=bool isDTD() const
$method=|bool|isDTD|

$prototype=bool isEndDocument() const
$method=|bool|isEndDocument|

$prototype=bool isEndElement() const
$method=|bool|isEndElement|

$prototype=bool isEntityReference() const
$method=|bool|isEntityReference|

$prototype=bool isProcessingInstruction() const
$method=|bool|isProcessingInstruction|

$prototype=bool isStandaloneDocument() const
$method=|bool|isStandaloneDocument|

$prototype=bool isStartDocument() const
$method=|bool|isStartDocument|

$prototype=bool isStartElement() const
$method=|bool|isStartElement|

$prototype=bool isWhitespace() const
$method=|bool|isWhitespace|

$prototype=qint64 lineNumber() const
$method=|qint64|lineNumber|

$prototype=QStringRef name() const
$method=|QStringRef|name|

$prototype=QXmlStreamNamespaceDeclarations namespaceDeclarations() const
$method=|QXmlStreamNamespaceDeclarations|namespaceDeclarations|

$prototype=bool namespaceProcessing() const
$method=|bool|namespaceProcessing|

$prototype=QStringRef namespaceUri() const
$method=|QStringRef|namespaceUri|

$prototype=QXmlStreamNotationDeclarations notationDeclarations() const
$method=|QXmlStreamNotationDeclarations|notationDeclarations|

$prototype=QStringRef prefix() const
$method=|QStringRef|prefix|

$prototype=QStringRef processingInstructionData() const
$method=|QStringRef|processingInstructionData|

$prototype=QStringRef processingInstructionTarget() const
$method=|QStringRef|processingInstructionTarget|

$prototype=QStringRef qualifiedName() const
$method=|QStringRef|qualifiedName|

$prototype=void raiseError(const QString & message = QString())
$method=|void|raiseError|const QString &=QString()

$prototype=QString readElementText(ReadElementTextBehaviour behaviour = ErrorOnUnexpectedElement)
$method=|QString|readElementText|QXmlStreamReader::ReadElementTextBehaviour=QXmlStreamReader::ErrorOnUnexpectedElement

$prototype=TokenType readNext()
$method=|QXmlStreamReader::TokenType|readNext|

$prototype=bool readNextStartElement()
$method=|bool|readNextStartElement|

$prototype=void setDevice(QIODevice * device)
$method=|void|setDevice|QIODevice *

$prototype=void setEntityResolver(QXmlStreamEntityResolver * resolver)
$method=|void|setEntityResolver|QXmlStreamEntityResolver *

$prototype=void setNamespaceProcessing(bool)
$methdo=|void|setNamespaceProcessing|bool

$prototype=void skipCurrentElement()
$method=|void|skipCurrentElement|

$prototype=QStringRef text() const
$method=|QStringRef|text|

$prototype=QString tokenString() const
$method=|QString|tokenString|

$prototype=TokenType tokenType() const
$method=|QXmlStreamReader::TokenType|tokenType|

$extraMethods

#pragma ENDDUMP
