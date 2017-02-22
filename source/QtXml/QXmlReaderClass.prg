/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QXMLDTDHANDLER
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER

CLASS QXmlReader

   DATA pointer
   DATA class_id INIT Class_Id_QXmlReader
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlReader>

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

HB_FUNC_STATIC( QXMLREADER_DELETE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QXmlDTDHandler * DTDHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_DTDHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDTDHandler * ptr = obj->DTDHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLDTDHANDLER" );
  }
}


/*
virtual QXmlContentHandler * contentHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_CONTENTHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlContentHandler * ptr = obj->contentHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLCONTENTHANDLER" );
  }
}


/*
virtual QXmlDeclHandler * declHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_DECLHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDeclHandler * ptr = obj->declHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLDECLHANDLER" );
  }
}


/*
virtual QXmlEntityResolver * entityResolver () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_ENTITYRESOLVER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlEntityResolver * ptr = obj->entityResolver (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLENTITYRESOLVER" );
  }
}


/*
virtual QXmlErrorHandler * errorHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_ERRORHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlErrorHandler * ptr = obj->errorHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLERRORHANDLER" );
  }
}


/*
virtual bool feature ( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_FEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    hb_retl( obj->feature ( par1, &par2 ) );
    hb_storl( par2, 2 );
  }
}


/*
virtual bool hasFeature ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_HASFEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->hasFeature ( par1 ) );
  }
}


/*
virtual bool hasProperty ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_HASPROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->hasProperty ( par1 ) );
  }
}


/*
virtual QXmlLexicalHandler * lexicalHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_LEXICALHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlLexicalHandler * ptr = obj->lexicalHandler (  );
    _qt4xhb_createReturnClass ( ptr, "QXMLLEXICALHANDLER" );
  }
}


/*
virtual bool parse ( const QXmlInputSource * input ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_PARSE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QXmlInputSource * par1 = (const QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->parse ( par1 ) );
  }
}


/*
virtual void * property ( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_PROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    void * retptr = obj->property ( par1, &par2 );
  hb_retptr( (void *) retptr );
    hb_storl( par2, 2 );
  }
}


/*
virtual void setContentHandler ( QXmlContentHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETCONTENTHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlContentHandler * par1 = (QXmlContentHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setContentHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setDTDHandler ( QXmlDTDHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETDTDHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDTDHandler * par1 = (QXmlDTDHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDTDHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setDeclHandler ( QXmlDeclHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETDECLHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlDeclHandler * par1 = (QXmlDeclHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDeclHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setEntityResolver ( QXmlEntityResolver * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETENTITYRESOLVER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlEntityResolver * par1 = (QXmlEntityResolver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEntityResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setErrorHandler ( QXmlErrorHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETERRORHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlErrorHandler * par1 = (QXmlErrorHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setErrorHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFeature ( const QString & name, bool value ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETFEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFeature ( par1, (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setLexicalHandler ( QXmlLexicalHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETLEXICALHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlLexicalHandler * par1 = (QXmlLexicalHandler *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLexicalHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setProperty ( const QString & name, void * value ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETPROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    void * par2 = (void *) hb_parptr(2);
    obj->setProperty ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QXMLREADER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLREADER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLREADER_NEWFROM );
}

HB_FUNC_STATIC( QXMLREADER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLREADER_NEWFROM );
}

HB_FUNC_STATIC( QXMLREADER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLREADER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
