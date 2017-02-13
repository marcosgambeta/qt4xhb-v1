/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QXMLSTREAMATTRIBUTES
REQUEST QIODEVICE
REQUEST QSTRINGREF
REQUEST QXMLSTREAMENTITYDECLARATIONS
REQUEST QXMLSTREAMENTITYRESOLVER
REQUEST QXMLSTREAMNAMESPACEDECLARATIONS
REQUEST QXMLSTREAMNOTATIONDECLARATIONS

CLASS QXmlStreamReader

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamReader
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QXmlStreamReader
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlStreamReader
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlStreamReader
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlStreamReader
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlStreamReader
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlStreamReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlStreamReader>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamReader()
*/
HB_FUNC( QXMLSTREAMREADER_NEW1 )
{
  QXmlStreamReader * o = NULL;
  o = new QXmlStreamReader (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamReader(QIODevice * device)
*/
HB_FUNC( QXMLSTREAMREADER_NEW2 )
{
  QXmlStreamReader * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlStreamReader ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamReader(const QByteArray & data)
*/
HB_FUNC( QXMLSTREAMREADER_NEW3 )
{
  QXmlStreamReader * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlStreamReader ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamReader(const QString & data)
*/
HB_FUNC( QXMLSTREAMREADER_NEW4 )
{
  QXmlStreamReader * o = NULL;
  QString par1 = hb_parc(1);
  o = new QXmlStreamReader ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlStreamReader(const char * data)
*/
HB_FUNC( QXMLSTREAMREADER_NEW5 )
{
  QXmlStreamReader * o = NULL;
  const char * par1 = hb_parc(1);
  o = new QXmlStreamReader (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlStreamReader *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlStreamReader()
//[2]QXmlStreamReader(QIODevice * device)
//[3]QXmlStreamReader(const QByteArray & data)
//[4]QXmlStreamReader(const QString & data)
//[5]QXmlStreamReader(const char * data)

HB_FUNC( QXMLSTREAMREADER_NEW )
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
  //else if( ISNUMPAR(1) && ISCHAR(1) )
  //{
  //  HB_FUNC_EXEC( QXMLSTREAMREADER_NEW5 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QXMLSTREAMREADER_DELETE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addData(const QByteArray & data)
*/
HB_FUNC( QXMLSTREAMREADER_ADDDATA1 )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addData(const QString & data)
*/
HB_FUNC( QXMLSTREAMREADER_ADDDATA2 )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->addData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addData(const char * data)
*/
HB_FUNC( QXMLSTREAMREADER_ADDDATA3 )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->addData (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addData(const QByteArray & data)
//[2]void addData(const QString & data)
//[3]void addData(const char * data)

HB_FUNC( QXMLSTREAMREADER_ADDDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_ADDDATA1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMREADER_ADDDATA2 );
  }
}

/*
void addExtraNamespaceDeclaration(const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration)
*/
HB_FUNC( QXMLSTREAMREADER_ADDEXTRANAMESPACEDECLARATION )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QXmlStreamNamespaceDeclaration  * par1 = (const QXmlStreamNamespaceDeclaration  *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addExtraNamespaceDeclaration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addExtraNamespaceDeclarations(const QXmlStreamNamespaceDeclarations & extraNamespaceDeclarations)
*/
HB_FUNC( QXMLSTREAMREADER_ADDEXTRANAMESPACEDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QXmlStreamNamespaceDeclarations  * par1 = (const QXmlStreamNamespaceDeclarations  *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addExtraNamespaceDeclarations ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool atEnd() const
*/
HB_FUNC( QXMLSTREAMREADER_ATEND )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atEnd (  );
    hb_retl( b );
  }
}


/*
QXmlStreamAttributes attributes() const
*/
HB_FUNC( QXMLSTREAMREADER_ATTRIBUTES )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamAttributes * ptr = new QXmlStreamAttributes( obj->attributes (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLSTREAMATTRIBUTES", true );  }
}


/*
qint64 characterOffset() const
*/
HB_FUNC( QXMLSTREAMREADER_CHARACTEROFFSET )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->characterOffset (  );
    hb_retni( i );
  }
}


/*
void clear()
*/
HB_FUNC( QXMLSTREAMREADER_CLEAR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qint64 columnNumber() const
*/
HB_FUNC( QXMLSTREAMREADER_COLUMNNUMBER )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->columnNumber (  );
    hb_retni( i );
  }
}


/*
QIODevice * device() const
*/
HB_FUNC( QXMLSTREAMREADER_DEVICE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );  }
}


/*
QStringRef documentEncoding() const
*/
HB_FUNC( QXMLSTREAMREADER_DOCUMENTENCODING )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->documentEncoding (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef documentVersion() const
*/
HB_FUNC( QXMLSTREAMREADER_DOCUMENTVERSION )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->documentVersion (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef dtdName() const
*/
HB_FUNC( QXMLSTREAMREADER_DTDNAME )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->dtdName (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef dtdPublicId() const
*/
HB_FUNC( QXMLSTREAMREADER_DTDPUBLICID )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->dtdPublicId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef dtdSystemId() const
*/
HB_FUNC( QXMLSTREAMREADER_DTDSYSTEMID )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->dtdSystemId (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QXmlStreamEntityDeclarations entityDeclarations() const
*/
HB_FUNC( QXMLSTREAMREADER_ENTITYDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamEntityDeclarations * ptr = new QXmlStreamEntityDeclarations( obj->entityDeclarations (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLSTREAMENTITYDECLARATIONS" );  }
}


/*
QXmlStreamEntityResolver * entityResolver() const
*/
HB_FUNC( QXMLSTREAMREADER_ENTITYRESOLVER )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamEntityResolver * ptr = obj->entityResolver (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLSTREAMENTITYRESOLVER" );  }
}


/*
Error error() const
*/
HB_FUNC( QXMLSTREAMREADER_ERROR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString() const
*/
HB_FUNC( QXMLSTREAMREADER_ERRORSTRING )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool hasError() const
*/
HB_FUNC( QXMLSTREAMREADER_HASERROR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasError (  );
    hb_retl( b );
  }
}


/*
bool isCDATA() const
*/
HB_FUNC( QXMLSTREAMREADER_ISCDATA )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCDATA (  );
    hb_retl( b );
  }
}


/*
bool isCharacters() const
*/
HB_FUNC( QXMLSTREAMREADER_ISCHARACTERS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCharacters (  );
    hb_retl( b );
  }
}


/*
bool isComment() const
*/
HB_FUNC( QXMLSTREAMREADER_ISCOMMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isComment (  );
    hb_retl( b );
  }
}


/*
bool isDTD() const
*/
HB_FUNC( QXMLSTREAMREADER_ISDTD )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isDTD (  );
    hb_retl( b );
  }
}


/*
bool isEndDocument() const
*/
HB_FUNC( QXMLSTREAMREADER_ISENDDOCUMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEndDocument (  );
    hb_retl( b );
  }
}


/*
bool isEndElement() const
*/
HB_FUNC( QXMLSTREAMREADER_ISENDELEMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEndElement (  );
    hb_retl( b );
  }
}


/*
bool isEntityReference() const
*/
HB_FUNC( QXMLSTREAMREADER_ISENTITYREFERENCE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEntityReference (  );
    hb_retl( b );
  }
}


/*
bool isProcessingInstruction() const
*/
HB_FUNC( QXMLSTREAMREADER_ISPROCESSINGINSTRUCTION )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isProcessingInstruction (  );
    hb_retl( b );
  }
}


/*
bool isStandaloneDocument() const
*/
HB_FUNC( QXMLSTREAMREADER_ISSTANDALONEDOCUMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isStandaloneDocument (  );
    hb_retl( b );
  }
}


/*
bool isStartDocument() const
*/
HB_FUNC( QXMLSTREAMREADER_ISSTARTDOCUMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isStartDocument (  );
    hb_retl( b );
  }
}


/*
bool isStartElement() const
*/
HB_FUNC( QXMLSTREAMREADER_ISSTARTELEMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isStartElement (  );
    hb_retl( b );
  }
}


/*
bool isWhitespace() const
*/
HB_FUNC( QXMLSTREAMREADER_ISWHITESPACE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isWhitespace (  );
    hb_retl( b );
  }
}


/*
qint64 lineNumber() const
*/
HB_FUNC( QXMLSTREAMREADER_LINENUMBER )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->lineNumber (  );
    hb_retni( i );
  }
}


/*
QStringRef name() const
*/
HB_FUNC( QXMLSTREAMREADER_NAME )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QXmlStreamNamespaceDeclarations namespaceDeclarations() const
*/
HB_FUNC( QXMLSTREAMREADER_NAMESPACEDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamNamespaceDeclarations * ptr = new QXmlStreamNamespaceDeclarations( obj->namespaceDeclarations (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLSTREAMNAMESPACEDECLARATIONS" );  }
}


/*
bool namespaceProcessing() const
*/
HB_FUNC( QXMLSTREAMREADER_NAMESPACEPROCESSING )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->namespaceProcessing (  );
    hb_retl( b );
  }
}


/*
QStringRef namespaceUri() const
*/
HB_FUNC( QXMLSTREAMREADER_NAMESPACEURI )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QXmlStreamNotationDeclarations notationDeclarations() const
*/
HB_FUNC( QXMLSTREAMREADER_NOTATIONDECLARATIONS )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamNotationDeclarations * ptr = new QXmlStreamNotationDeclarations( obj->notationDeclarations (  ) );
    _qt4xhb_createReturnClass ( ptr, "QXMLSTREAMNOTATIONDECLARATIONS" );  }
}


/*
QStringRef prefix() const
*/
HB_FUNC( QXMLSTREAMREADER_PREFIX )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef processingInstructionData() const
*/
HB_FUNC( QXMLSTREAMREADER_PROCESSINGINSTRUCTIONDATA )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->processingInstructionData (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef processingInstructionTarget() const
*/
HB_FUNC( QXMLSTREAMREADER_PROCESSINGINSTRUCTIONTARGET )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->processingInstructionTarget (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QStringRef qualifiedName() const
*/
HB_FUNC( QXMLSTREAMREADER_QUALIFIEDNAME )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->qualifiedName (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
void raiseError(const QString & message = QString())
*/
HB_FUNC( QXMLSTREAMREADER_RAISEERROR )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = ISNIL(1)? QString() : hb_parc(1);
    obj->raiseError ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString readElementText(ReadElementTextBehaviour behaviour = ErrorOnUnexpectedElement)
*/
HB_FUNC( QXMLSTREAMREADER_READELEMENTTEXT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QXmlStreamReader::ErrorOnUnexpectedElement : hb_parni(1);
    QString str1 = obj->readElementText (  (QXmlStreamReader::ReadElementTextBehaviour) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
TokenType readNext()
*/
HB_FUNC( QXMLSTREAMREADER_READNEXT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->readNext (  );
    hb_retni( i );
  }
}


/*
bool readNextStartElement()
*/
HB_FUNC( QXMLSTREAMREADER_READNEXTSTARTELEMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->readNextStartElement (  );
    hb_retl( b );
  }
}


/*
void setDevice(QIODevice * device)
*/
HB_FUNC( QXMLSTREAMREADER_SETDEVICE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEntityResolver(QXmlStreamEntityResolver * resolver)
*/
HB_FUNC( QXMLSTREAMREADER_SETENTITYRESOLVER )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlStreamEntityResolver * par1 = (QXmlStreamEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEntityResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNamespaceProcessing(bool)
*/
HB_FUNC( QXMLSTREAMREADER_SETNAMESPACEPROCESSING )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setNamespaceProcessing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void skipCurrentElement()
*/
HB_FUNC( QXMLSTREAMREADER_SKIPCURRENTELEMENT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->skipCurrentElement (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringRef text() const
*/
HB_FUNC( QXMLSTREAMREADER_TEXT )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->text (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );  }
}


/*
QString tokenString() const
*/
HB_FUNC( QXMLSTREAMREADER_TOKENSTRING )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->tokenString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
TokenType tokenType() const
*/
HB_FUNC( QXMLSTREAMREADER_TOKENTYPE )
{
  QXmlStreamReader * obj = (QXmlStreamReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->tokenType (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
