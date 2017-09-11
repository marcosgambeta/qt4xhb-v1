/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice )
*/
HB_FUNC_STATIC( QXMLFORMATTER_NEW )
{
  if( ISNUMPAR(2) && ISQXMLQUERY(1) && ISQIODEVICE(2) )
  {
    QXmlFormatter * o = new QXmlFormatter ( *PQXMLQUERY(1), PQIODEVICE(2) );
    _qt4xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int indentationDepth () const
*/
HB_FUNC_STATIC( QXMLFORMATTER_INDENTATIONDEPTH )
{
  QXmlFormatter * obj = (QXmlFormatter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->indentationDepth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setIndentationDepth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQVARIANT(1) )
    {
      obj->atomicValue ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISQXMLNAME(1) && ISQSTRINGREF(2) )
    {
      obj->attribute ( *PQXMLNAME(1), *PQSTRINGREF(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQSTRINGREF(1) )
    {
      obj->characters ( *PQSTRINGREF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->comment ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->endDocument ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->endElement ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->endOfSequence ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISQXMLNAME(1) && ISCHAR(2) )
    {
      obj->processingInstruction ( *PQXMLNAME(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->startDocument ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQXMLNAME(1) )
    {
      obj->startElement ( *PQXMLNAME(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->startOfSequence ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
