/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlDefaultHandler INHERIT QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

   DATA class_id INIT Class_Id_QXmlDefaultHandler
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD attributeDecl
   METHOD characters
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endDocument
   METHOD endElement
   METHOD endEntity
   METHOD endPrefixMapping
   METHOD error
   METHOD errorString
   METHOD externalEntityDecl
   METHOD fatalError
   METHOD ignorableWhitespace
   METHOD internalEntityDecl
   METHOD notationDecl
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startCDATA
   METHOD startDTD
   METHOD startDocument
   METHOD startElement
   METHOD startEntity
   METHOD startPrefixMapping
   METHOD unparsedEntityDecl
   METHOD warning
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlDefaultHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlDefaultHandler>

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
QXmlDefaultHandler ()
*/
HB_FUNC( QXMLDEFAULTHANDLER_NEW )
{
  QXmlDefaultHandler * o = NULL;
  o = new QXmlDefaultHandler (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlDefaultHandler *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC( QXMLDEFAULTHANDLER_DELETE )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value )
*/
HB_FUNC( QXMLDEFAULTHANDLER_ATTRIBUTEDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    QString par4 = hb_parc(4);
    QString par5 = hb_parc(5);
    bool b = obj->attributeDecl ( par1, par2, par3, par4, par5 );
    hb_retl( b );
  }
}


/*
virtual bool characters ( const QString & ch )
*/
HB_FUNC( QXMLDEFAULTHANDLER_CHARACTERS )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->characters ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool comment ( const QString & ch )
*/
HB_FUNC( QXMLDEFAULTHANDLER_COMMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->comment ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool endCDATA ()
*/
HB_FUNC( QXMLDEFAULTHANDLER_ENDCDATA )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->endCDATA (  );
    hb_retl( b );
  }
}


/*
virtual bool endDTD ()
*/
HB_FUNC( QXMLDEFAULTHANDLER_ENDDTD )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->endDTD (  );
    hb_retl( b );
  }
}


/*
virtual bool endDocument ()
*/
HB_FUNC( QXMLDEFAULTHANDLER_ENDDOCUMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->endDocument (  );
    hb_retl( b );
  }
}


/*
virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName )
*/
HB_FUNC( QXMLDEFAULTHANDLER_ENDELEMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    bool b = obj->endElement ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool endEntity ( const QString & name )
*/
HB_FUNC( QXMLDEFAULTHANDLER_ENDENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->endEntity ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool endPrefixMapping ( const QString & prefix )
*/
HB_FUNC( QXMLDEFAULTHANDLER_ENDPREFIXMAPPING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->endPrefixMapping ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool error ( const QXmlParseException & exception )
*/
HB_FUNC( QXMLDEFAULTHANDLER_ERROR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->error ( *par1 );
    hb_retl( b );
  }
}


/*
virtual QString errorString () const
*/
HB_FUNC( QXMLDEFAULTHANDLER_ERRORSTRING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC( QXMLDEFAULTHANDLER_EXTERNALENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    bool b = obj->externalEntityDecl ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool fatalError ( const QXmlParseException & exception )
*/
HB_FUNC( QXMLDEFAULTHANDLER_FATALERROR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->fatalError ( *par1 );
    hb_retl( b );
  }
}


/*
virtual bool ignorableWhitespace ( const QString & ch )
*/
HB_FUNC( QXMLDEFAULTHANDLER_IGNORABLEWHITESPACE )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->ignorableWhitespace ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool internalEntityDecl ( const QString & name, const QString & value )
*/
HB_FUNC( QXMLDEFAULTHANDLER_INTERNALENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    bool b = obj->internalEntityDecl ( par1, par2 );
    hb_retl( b );
  }
}


/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC( QXMLDEFAULTHANDLER_NOTATIONDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    bool b = obj->notationDecl ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool processingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC( QXMLDEFAULTHANDLER_PROCESSINGINSTRUCTION )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    bool b = obj->processingInstruction ( par1, par2 );
    hb_retl( b );
  }
}



/*
virtual void setDocumentLocator ( QXmlLocator * locator )
*/
HB_FUNC( QXMLDEFAULTHANDLER_SETDOCUMENTLOCATOR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlLocator * par1 = (QXmlLocator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDocumentLocator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool skippedEntity ( const QString & name )
*/
HB_FUNC( QXMLDEFAULTHANDLER_SKIPPEDENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->skippedEntity ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool startCDATA ()
*/
HB_FUNC( QXMLDEFAULTHANDLER_STARTCDATA )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->startCDATA (  );
    hb_retl( b );
  }
}


/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC( QXMLDEFAULTHANDLER_STARTDTD )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    bool b = obj->startDTD ( par1, par2, par3 );
    hb_retl( b );
  }
}


/*
virtual bool startDocument ()
*/
HB_FUNC( QXMLDEFAULTHANDLER_STARTDOCUMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->startDocument (  );
    hb_retl( b );
  }
}


/*
virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts )
*/
HB_FUNC( QXMLDEFAULTHANDLER_STARTELEMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    QXmlAttributes * par4 = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->startElement ( par1, par2, par3, *par4 );
    hb_retl( b );
  }
}


/*
virtual bool startEntity ( const QString & name )
*/
HB_FUNC( QXMLDEFAULTHANDLER_STARTENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->startEntity ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool startPrefixMapping ( const QString & prefix, const QString & uri )
*/
HB_FUNC( QXMLDEFAULTHANDLER_STARTPREFIXMAPPING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    bool b = obj->startPrefixMapping ( par1, par2 );
    hb_retl( b );
  }
}


/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName )
*/
HB_FUNC( QXMLDEFAULTHANDLER_UNPARSEDENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QString par3 = hb_parc(3);
    QString par4 = hb_parc(4);
    bool b = obj->unparsedEntityDecl ( par1, par2, par3, par4 );
    hb_retl( b );
  }
}


/*
virtual bool warning ( const QXmlParseException & exception )
*/
HB_FUNC( QXMLDEFAULTHANDLER_WARNING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlParseException * par1 = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->warning ( *par1 );
    hb_retl( b );
  }
}




#pragma ENDDUMP
