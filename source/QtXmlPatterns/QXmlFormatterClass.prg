/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QXmlFormatter INHERIT QXmlSerializer

   DATA self_destruction INIT .F.

   METHOD new
   METHOD indentationDepth
   METHOD setIndentationDepth
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlFormatter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlFormatter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice
*/
HB_FUNC_STATIC( QXMLFORMATTER_NEW )
{
  QXmlFormatter * o = NULL;
  QXmlQuery * par1 = (QXmlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QIODevice * par2 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlFormatter ( *par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}




/*
int indentationDepth () const
*/
HB_FUNC_STATIC( QXMLFORMATTER_INDENTATIONDEPTH )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->indentationDepth () );
  }
}


/*
void setIndentationDepth ( int depth )
*/
HB_FUNC_STATIC( QXMLFORMATTER_SETINDENTATIONDEPTH )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIndentationDepth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void atomicValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_ATOMICVALUE )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->atomicValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_ATTRIBUTE )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * par2 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->attribute ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void characters ( const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_CHARACTERS )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->characters ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void comment ( const QString & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_COMMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->comment ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endDocument ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_ENDDOCUMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endElement ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_ENDELEMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endElement ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void endOfSequence ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_ENDOFSEQUENCE )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLFORMATTER_PROCESSINGINSTRUCTION )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->processingInstruction ( *par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startDocument ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_STARTDOCUMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startElement ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLFORMATTER_STARTELEMENT )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QXmlName * par1 = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->startElement ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void startOfSequence ()
*/
HB_FUNC_STATIC( QXMLFORMATTER_STARTOFSEQUENCE )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
