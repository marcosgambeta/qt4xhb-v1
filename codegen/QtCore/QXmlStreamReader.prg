%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlStreamReader()
$internalConstructor=|new1|

$prototype=QXmlStreamReader(QIODevice * device)
$internalConstructor=|new2|QIODevice *

$prototype=QXmlStreamReader(const QByteArray & data)
$internalConstructor=|new3|const QByteArray &

$prototype=QXmlStreamReader(const QString & data)
$internalConstructor=|new4|const QString &

$prototype=QXmlStreamReader(const char * data)
$internalConstructor=|new5|const char *

%% TODO: conflito entre [4] e [5]

/*
[1]QXmlStreamReader()
[2]QXmlStreamReader(QIODevice * device)
[3]QXmlStreamReader(const QByteArray & data)
[4]QXmlStreamReader(const QString & data)
[5]QXmlStreamReader(const char * data)
*/

HB_FUNC_STATIC( QXMLSTREAMREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamReader_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlStreamReader_new2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamReader_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_new4();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addData(const QByteArray & data)
$internalMethod=|void|addData,addData1|const QByteArray &

$prototype=void addData(const QString & data)
$internalMethod=|void|addData,addData2|const QString &

$prototype=void addData(const char * data)
$internalMethod=|void|addData,addData3|const char *

%% TODO: conflito entre [2] e [3]

/*
[1]void addData(const QByteArray & data)
[2]void addData(const QString & data)
[3]void addData(const char * data)
*/

HB_FUNC_STATIC( QXMLSTREAMREADER_ADDDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamReader_addData1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_addData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addData

$prototype=void addExtraNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration)
$method=|void|addExtraNamespaceDeclaration|const QXmlStreamNamespaceDeclaration &

$prototype=void addExtraNamespaceDeclarations(const QXmlStreamNamespaceDeclarations & extraNamespaceDeclarations)
$method=|void|addExtraNamespaceDeclarations|const QXmlStreamNamespaceDeclarations &

$prototypeV2=bool atEnd() const

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

$prototypeV2=QString errorString() const

$prototypeV2=bool hasError() const

$prototypeV2=bool isCDATA() const

$prototypeV2=bool isCharacters() const

$prototypeV2=bool isComment() const

$prototypeV2=bool isDTD() const

$prototypeV2=bool isEndDocument() const

$prototypeV2=bool isEndElement() const

$prototypeV2=bool isEntityReference() const

$prototypeV2=bool isProcessingInstruction() const

$prototypeV2=bool isStandaloneDocument() const

$prototypeV2=bool isStartDocument() const

$prototypeV2=bool isStartElement() const

$prototypeV2=bool isWhitespace() const

$prototype=qint64 lineNumber() const
$method=|qint64|lineNumber|

$prototype=QStringRef name() const
$method=|QStringRef|name|

$prototype=QXmlStreamNamespaceDeclarations namespaceDeclarations() const
$method=|QXmlStreamNamespaceDeclarations|namespaceDeclarations|

$prototypeV2=bool namespaceProcessing() const

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

$prototypeV2=bool readNextStartElement()

$prototype=void setDevice(QIODevice * device)
$method=|void|setDevice|QIODevice *

$prototype=void setEntityResolver(QXmlStreamEntityResolver * resolver)
$method=|void|setEntityResolver|QXmlStreamEntityResolver *

$prototype=void setNamespaceProcessing(bool)
$method=|void|setNamespaceProcessing|bool

$prototype=void skipCurrentElement()
$method=|void|skipCurrentElement|

$prototype=QStringRef text() const
$method=|QStringRef|text|

$prototypeV2=QString tokenString() const

$prototype=TokenType tokenType() const
$method=|QXmlStreamReader::TokenType|tokenType|

$extraMethods

#pragma ENDDUMP
