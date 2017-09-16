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

/*
QXmlStreamReader()
*/
$constructor=|new1|

/*
QXmlStreamReader(QIODevice * device)
*/
$constructor=|new2|QIODevice *

/*
QXmlStreamReader(const QByteArray & data)
*/
$constructor=|new3|const QByteArray &

/*
QXmlStreamReader(const QString & data)
*/
$constructor=|new4|const QString &

/*
QXmlStreamReader(const char * data)
*/
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

/*
void addData(const QByteArray & data)
*/
$method=|void|addData,addData1|const QByteArray &

/*
void addData(const QString & data)
*/
$method=|void|addData,addData2|const QString &

/*
void addData(const char * data)
*/
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

/*
void addExtraNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration)
*/
$method=|void|addExtraNamespaceDeclaration|const QXmlStreamNamespaceDeclaration &

/*
void addExtraNamespaceDeclarations(const QXmlStreamNamespaceDeclarations & extraNamespaceDeclarations)
*/
$method=|void|addExtraNamespaceDeclarations|const QXmlStreamNamespaceDeclarations &

/*
bool atEnd() const
*/
$method=|bool|atEnd|

/*
QXmlStreamAttributes attributes() const
*/
$method=|QXmlStreamAttributes|attributes|

/*
qint64 characterOffset() const
*/
$method=|qint64|characterOffset|

/*
void clear()
*/
$method=|void|clear|

/*
qint64 columnNumber() const
*/
$method=|qint64|columnNumber|

/*
QIODevice * device() const
*/
$method=|QIODevice *|device|

/*
QStringRef documentEncoding() const
*/
$method=|QStringRef|documentEncoding|

/*
QStringRef documentVersion() const
*/
$method=|QStringRef|documentVersion|

/*
QStringRef dtdName() const
*/
$method=|QStringRef|dtdName|

/*
QStringRef dtdPublicId() const
*/
$method=|QStringRef|dtdPublicId|

/*
QStringRef dtdSystemId() const
*/
$method=|QStringRef|dtdSystemId|

/*
QXmlStreamEntityDeclarations entityDeclarations() const
*/
$method=|QXmlStreamEntityDeclarations|entityDeclarations|

/*
QXmlStreamEntityResolver * entityResolver() const
*/
$method=|QXmlStreamEntityResolver *|entityResolver|

/*
Error error() const
*/
$method=|QXmlStreamReader::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
bool hasError() const
*/
$method=|bool|hasError|

/*
bool isCDATA() const
*/
$method=|bool|isCDATA|

/*
bool isCharacters() const
*/
$method=|bool|isCharacters|

/*
bool isComment() const
*/
$method=|bool|isComment|

/*
bool isDTD() const
*/
$method=|bool|isDTD|

/*
bool isEndDocument() const
*/
$method=|bool|isEndDocument|

/*
bool isEndElement() const
*/
$method=|bool|isEndElement|

/*
bool isEntityReference() const
*/
$method=|bool|isEntityReference|

/*
bool isProcessingInstruction() const
*/
$method=|bool|isProcessingInstruction|

/*
bool isStandaloneDocument() const
*/
$method=|bool|isStandaloneDocument|

/*
bool isStartDocument() const
*/
$method=|bool|isStartDocument|

/*
bool isStartElement() const
*/
$method=|bool|isStartElement|

/*
bool isWhitespace() const
*/
$method=|bool|isWhitespace|

/*
qint64 lineNumber() const
*/
$method=|qint64|lineNumber|

/*
QStringRef name() const
*/
$method=|QStringRef|name|

/*
QXmlStreamNamespaceDeclarations namespaceDeclarations() const
*/
$method=|QXmlStreamNamespaceDeclarations|namespaceDeclarations|

/*
bool namespaceProcessing() const
*/
$method=|bool|namespaceProcessing|

/*
QStringRef namespaceUri() const
*/
$method=|QStringRef|namespaceUri|

/*
QXmlStreamNotationDeclarations notationDeclarations() const
*/
$method=|QXmlStreamNotationDeclarations|notationDeclarations|

/*
QStringRef prefix() const
*/
$method=|QStringRef|prefix|

/*
QStringRef processingInstructionData() const
*/
$method=|QStringRef|processingInstructionData|

/*
QStringRef processingInstructionTarget() const
*/
$method=|QStringRef|processingInstructionTarget|

/*
QStringRef qualifiedName() const
*/
$method=|QStringRef|qualifiedName|

/*
void raiseError(const QString & message = QString())
*/
$method=|void|raiseError|const QString &=QString()

/*
QString readElementText(ReadElementTextBehaviour behaviour = ErrorOnUnexpectedElement)
*/
$method=|QString|readElementText|QXmlStreamReader::ReadElementTextBehaviour=QXmlStreamReader::ErrorOnUnexpectedElement

/*
TokenType readNext()
*/
$method=|QXmlStreamReader::TokenType|readNext|

/*
bool readNextStartElement()
*/
$method=|bool|readNextStartElement|

/*
void setDevice(QIODevice * device)
*/
$method=|void|setDevice|QIODevice *

/*
void setEntityResolver(QXmlStreamEntityResolver * resolver)
*/
$method=|void|setEntityResolver|QXmlStreamEntityResolver *

/*
void setNamespaceProcessing(bool)
*/
$methdo=|void|setNamespaceProcessing|bool

/*
void skipCurrentElement()
*/
$method=|void|skipCurrentElement|

/*
QStringRef text() const
*/
$method=|QStringRef|text|

/*
QString tokenString() const
*/
$method=|QString|tokenString|

/*
TokenType tokenType() const
*/
$method=|QXmlStreamReader::TokenType|tokenType|

$extraMethods

#pragma ENDDUMP
