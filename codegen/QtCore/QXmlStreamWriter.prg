$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlStreamWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD autoFormatting
   METHOD autoFormattingIndent
   METHOD codec
   METHOD device
   METHOD hasError
   METHOD setAutoFormatting
   METHOD setAutoFormattingIndent
   METHOD setCodec1
   METHOD setCodec2
   METHOD setCodec
   METHOD setDevice
   METHOD writeAttribute1
   METHOD writeAttribute2
   METHOD writeAttribute3
   METHOD writeAttribute
   METHOD writeAttributes
   METHOD writeCDATA
   METHOD writeCharacters
   METHOD writeComment
   METHOD writeCurrentToken
   METHOD writeDTD
   METHOD writeDefaultNamespace
   METHOD writeEmptyElement1
   METHOD writeEmptyElement2
   METHOD writeEmptyElement
   METHOD writeEndDocument
   METHOD writeEndElement
   METHOD writeEntityReference
   METHOD writeNamespace
   METHOD writeProcessingInstruction
   METHOD writeStartDocument1
   METHOD writeStartDocument2
   METHOD writeStartDocument3
   METHOD writeStartDocument
   METHOD writeStartElement1
   METHOD writeStartElement2
   METHOD writeStartElement
   METHOD writeTextElement1
   METHOD writeTextElement2
   METHOD writeTextElement
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamWriter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamWriter()
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW1 )
{
  QXmlStreamWriter * o = new QXmlStreamWriter ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamWriter(QIODevice * device)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW2 )
{
  QXmlStreamWriter * o = new QXmlStreamWriter ( PQIODEVICE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamWriter(QByteArray * array)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW3 )
{
  QXmlStreamWriter * o = new QXmlStreamWriter ( PQBYTEARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamWriter(QString * string)
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW4 )
{
  QString * par1 = NULL;
  QXmlStreamWriter * o = new QXmlStreamWriter ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlStreamWriter()
//[2]QXmlStreamWriter(QIODevice * device)
//[3]QXmlStreamWriter(QByteArray * array)
//[4]QXmlStreamWriter(QString * string)

HB_FUNC_STATIC( QXMLSTREAMWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoFormatting() const
*/
$method=|bool|autoFormatting|

/*
int autoFormattingIndent() const
*/
$method=|int|autoFormattingIndent|

/*
QTextCodec * codec() const
*/
$method=|QTextCodec *|codec|

/*
QIODevice * device() const
*/
$method=|QIODevice *|device|

/*
bool hasError() const
*/
$method=|bool|hasError|

/*
void setAutoFormatting(bool enable)
*/
$method=|void|setAutoFormatting|bool

/*
void setAutoFormattingIndent(int spacesOrTabs)
*/
$method=|void|setAutoFormattingIndent|int

/*
void setCodec(QTextCodec * codec)
*/
$method=|void|setCodec,setCodec1|QTextCodec *

/*
void setCodec(const char * codecName)
*/
$method=|void|setCodec,setCodec2|const char *

//[1]void setCodec(QTextCodec * codec)
//[2]void setCodec(const char * codecName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_SETCODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_SETCODEC1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_SETCODEC2 );
  }
}

/*
void setDevice(QIODevice * device)
*/
$method=|void|setDevice|QIODevice *

/*
void writeAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
$method=|void|writeAttribute,writeAttribute1|const QString &,const QString &,const QString &

/*
void writeAttribute(const QString & qualifiedName, const QString & value)
*/
$method=|void|writeAttribute,writeAttribute2|const QString &,const QString &

/*
void writeAttribute(const QXmlStreamAttribute & attribute)
*/
$method=|void|writeAttribute,writeAttribute3|const QXmlStreamAttribute &

//[1]void writeAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void writeAttribute(const QString & qualifiedName, const QString & value)
//[3]void writeAttribute(const QXmlStreamAttribute & attribute)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEATTRIBUTE )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEATTRIBUTE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEATTRIBUTE2 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEATTRIBUTE3 );
  }
}

/*
void writeAttributes(const QXmlStreamAttributes & attributes)
*/
$method=|void|writeAttributes|const QXmlStreamAttributes &

/*
void writeCDATA(const QString & text)
*/
$method=|void|writeCDATA|const QString &

/*
void writeCharacters(const QString & text)
*/
$method=|void|writeCharacters|const QString &

/*
void writeComment(const QString & text)
*/
$method=|void|writeComment|const QString &

/*
void writeCurrentToken(const QXmlStreamReader & reader)
*/
$method=|void|writeCurrentToken|const QXmlStreamReader &

/*
void writeDTD(const QString & dtd)
*/
$method=|void|writeDTD|const QString &

/*
void writeDefaultNamespace(const QString & namespaceUri)
*/
$method=|void|writeDefaultNamespace|const QString &

/*
void writeEmptyElement(const QString & namespaceUri, const QString & name)
*/
$method=|void|writeEmptyElement,writeEmptyElement1|const QString &,const QString &

/*
void writeEmptyElement(const QString & qualifiedName)
*/
$method=|void|writeEmptyElement,writeEmptyElement2|const QString &

//[1]void writeEmptyElement(const QString & namespaceUri, const QString & name)
//[2]void writeEmptyElement(const QString & qualifiedName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITEEMPTYELEMENT2 );
  }
}

/*
void writeEndDocument()
*/
$method=|void|writeEndDocument|

/*
void writeEndElement()
*/
$method=|void|writeEndElement|

/*
void writeEntityReference(const QString & name)
*/
$method=|void|writeEntityReference|const QString &

/*
void writeNamespace(const QString & namespaceUri, const QString & prefix = QString())
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITENAMESPACE )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->writeNamespace ( PQSTRING(1), OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeProcessingInstruction(const QString & target, const QString & data = QString())
*/
HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITEPROCESSINGINSTRUCTION )
{
  QXmlStreamWriter * obj = (QXmlStreamWriter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->writeProcessingInstruction ( PQSTRING(1), OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void writeStartDocument(const QString & version)
*/
$method=|void|writeStartDocument,writeStartDocument1|const QString &

/*
void writeStartDocument(const QString & version, bool standalone)
*/
$method=|void|writeStartDocument,writeStartDocument2|const QString &,bool

/*
void writeStartDocument()
*/
$method=|void|writeStartDocument,writeStartDocument3|

//[1]void writeStartDocument(const QString & version)
//[2]void writeStartDocument(const QString & version, bool standalone)
//[3]void writeStartDocument()

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT2 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTDOCUMENT3 );
  }
}

/*
void writeStartElement(const QString & namespaceUri, const QString & name)
*/
$method=|void|writeStartElement,writeStartElement1|const QString &,const QString &

/*
void writeStartElement(const QString & qualifiedName)
*/
$method=|void|writeStartElement,writeStartElement2|const QString &

//[1]void writeStartElement(const QString & namespaceUri, const QString & name)
//[2]void writeStartElement(const QString & qualifiedName)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITESTARTELEMENT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTELEMENT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITESTARTELEMENT2 );
  }
}

/*
void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
*/
$method=|void|writeTextElement,writeTextElement1|const QString &,const QString &,const QString &

/*
void writeTextElement(const QString & qualifiedName, const QString & text)
*/
$method=|void|writeTextElement,writeTextElement2|const QString &,const QString &

//[1]void writeTextElement(const QString & namespaceUri, const QString & name, const QString & text)
//[2]void writeTextElement(const QString & qualifiedName, const QString & text)

HB_FUNC_STATIC( QXMLSTREAMWRITER_WRITETEXTELEMENT )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITETEXTELEMENT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMWRITER_WRITETEXTELEMENT2 );
  }
}

$extraMethods

#pragma ENDDUMP
