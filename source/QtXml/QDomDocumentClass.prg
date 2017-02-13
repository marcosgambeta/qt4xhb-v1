/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMNODELIST
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QBYTEARRAY

CLASS QDomDocument INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomDocument
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   METHOD setContent
   METHOD toByteArray
   METHOD toString
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDomDocument>

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
QDomDocument ()
*/
HB_FUNC( QDOMDOCUMENT_NEW1 )
{
  QDomDocument * o = NULL;
  o = new QDomDocument (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomDocument ( const QString & name )
*/
HB_FUNC( QDOMDOCUMENT_NEW2 )
{
  QDomDocument * o = NULL;
  QString par1 = hb_parc(1);
  o = new QDomDocument ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomDocument ( const QDomDocumentType & doctype )
*/
HB_FUNC( QDOMDOCUMENT_NEW3 )
{
  QDomDocument * o = NULL;
  QDomDocumentType * par1 = (QDomDocumentType *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomDocument ( const QDomDocument & x )
*/
HB_FUNC( QDOMDOCUMENT_NEW4 )
{
  QDomDocument * o = NULL;
  QDomDocument * par1 = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomDocument ()
//[2]QDomDocument ( const QString & name )
//[3]QDomDocument ( const QDomDocumentType & doctype )
//[4]QDomDocument ( const QDomDocument & x )

HB_FUNC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QDOMDOCUMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QDOMDOCUMENT_DELETE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomAttr createAttribute ( const QString & name )
*/
HB_FUNC( QDOMDOCUMENT_CREATEATTRIBUTE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomAttr * ptr = new QDomAttr( obj->createAttribute ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );  }
}


/*
QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC( QDOMDOCUMENT_CREATEATTRIBUTENS )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDomAttr * ptr = new QDomAttr( obj->createAttributeNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );  }
}


/*
QDomCDATASection createCDATASection ( const QString & value )
*/
HB_FUNC( QDOMDOCUMENT_CREATECDATASECTION )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomCDATASection * ptr = new QDomCDATASection( obj->createCDATASection ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMCDATASECTION", true );  }
}


/*
QDomComment createComment ( const QString & value )
*/
HB_FUNC( QDOMDOCUMENT_CREATECOMMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomComment * ptr = new QDomComment( obj->createComment ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMCOMMENT", true );  }
}


/*
QDomDocumentFragment createDocumentFragment ()
*/
HB_FUNC( QDOMDOCUMENT_CREATEDOCUMENTFRAGMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocumentFragment * ptr = new QDomDocumentFragment( obj->createDocumentFragment (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTFRAGMENT", true );  }
}


/*
QDomElement createElement ( const QString & tagName )
*/
HB_FUNC( QDOMDOCUMENT_CREATEELEMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomElement * ptr = new QDomElement( obj->createElement ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );  }
}


/*
QDomElement createElementNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC( QDOMDOCUMENT_CREATEELEMENTNS )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDomElement * ptr = new QDomElement( obj->createElementNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );  }
}


/*
QDomEntityReference createEntityReference ( const QString & name )
*/
HB_FUNC( QDOMDOCUMENT_CREATEENTITYREFERENCE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomEntityReference * ptr = new QDomEntityReference( obj->createEntityReference ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMENTITYREFERENCE", true );  }
}


/*
QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC( QDOMDOCUMENT_CREATEPROCESSINGINSTRUCTION )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDomProcessingInstruction * ptr = new QDomProcessingInstruction( obj->createProcessingInstruction ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMPROCESSINGINSTRUCTION", true );  }
}


/*
QDomText createTextNode ( const QString & value )
*/
HB_FUNC( QDOMDOCUMENT_CREATETEXTNODE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomText * ptr = new QDomText( obj->createTextNode ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMTEXT", true );  }
}


/*
QDomDocumentType doctype () const
*/
HB_FUNC( QDOMDOCUMENT_DOCTYPE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomDocumentType * ptr = new QDomDocumentType( obj->doctype (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );  }
}


/*
QDomElement documentElement () const
*/
HB_FUNC( QDOMDOCUMENT_DOCUMENTELEMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomElement * ptr = new QDomElement( obj->documentElement (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );  }
}


/*
QDomElement elementById ( const QString & elementId )
*/
HB_FUNC( QDOMDOCUMENT_ELEMENTBYID )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomElement * ptr = new QDomElement( obj->elementById ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );  }
}


/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
HB_FUNC( QDOMDOCUMENT_ELEMENTSBYTAGNAME )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagName ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );  }
}


/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC( QDOMDOCUMENT_ELEMENTSBYTAGNAMENS )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagNameNS ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );  }
}


/*
QDomImplementation implementation () const
*/
HB_FUNC( QDOMDOCUMENT_IMPLEMENTATION )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomImplementation * ptr = new QDomImplementation( obj->implementation (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMIMPLEMENTATION", true );  }
}


/*
QDomNode importNode ( const QDomNode & importedNode, bool deep )
*/
HB_FUNC( QDOMDOCUMENT_IMPORTNODE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDomNode * par1 = (QDomNode *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool par2 = hb_parl(2);
    QDomNode * ptr = new QDomNode( obj->importNode ( *par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );  }
}


/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC( QDOMDOCUMENT_NODETYPE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->nodeType (  );
    hb_retni( i );
  }
}










//[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[5]bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[7]bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )

// TODO: implementar função
HB_FUNC( QDOMDOCUMENT_SETCONTENT )
{
}

/*
QByteArray toByteArray ( int indent = 1 ) const
*/
HB_FUNC( QDOMDOCUMENT_TOBYTEARRAY )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->toByteArray ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
QString toString ( int indent = 1 ) const
*/
HB_FUNC( QDOMDOCUMENT_TOSTRING )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
