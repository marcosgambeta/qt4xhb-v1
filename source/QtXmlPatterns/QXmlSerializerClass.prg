/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlSerializer INHERIT QAbstractXmlReceiver

   DATA self_destruction INIT .F.

   METHOD new
   METHOD codec
   METHOD outputDevice
   METHOD setCodec
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD namespaceBinding
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSerializer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlSerializer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_NEW )
{
  QXmlSerializer * o = new QXmlSerializer ( *PQXMLQUERY(1), PQIODEVICE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
const QTextCodec * codec () const
*/
HB_FUNC_STATIC( QXMLSERIALIZER_CODEC )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTextCodec * ptr = obj->codec ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
  }
}

/*
QIODevice * outputDevice () const
*/
HB_FUNC_STATIC( QXMLSERIALIZER_OUTPUTDEVICE )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->outputDevice ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}

/*
void setCodec ( const QTextCodec * outputCodec )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_SETCODEC )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCodec ( PQTEXTCODEC(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void atomicValue ( const QVariant & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ATOMICVALUE )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->atomicValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ATTRIBUTE )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * par2 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->attribute ( *PQXMLNAME(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void characters ( const QStringRef & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_CHARACTERS )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QXMLSERIALIZER_COMMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->comment ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void endDocument ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDDOCUMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void endElement ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDELEMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endElement ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void endOfSequence ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_ENDOFSEQUENCE )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void namespaceBinding ( const QXmlName & nb )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_NAMESPACEBINDING )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->namespaceBinding ( *PQXMLNAME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_PROCESSINGINSTRUCTION )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->processingInstruction ( *PQXMLNAME(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void startDocument ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTDOCUMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startDocument ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void startElement ( const QXmlName & name )
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTELEMENT )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startElement ( *PQXMLNAME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void startOfSequence ()
*/
HB_FUNC_STATIC( QXMLSERIALIZER_STARTOFSEQUENCE )
{
  QXmlSerializer * obj = (QXmlSerializer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startOfSequence ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
