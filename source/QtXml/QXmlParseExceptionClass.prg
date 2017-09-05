/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QXmlParseException

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD columnNumber
   METHOD lineNumber
   METHOD message
   METHOD publicId
   METHOD systemId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlParseException
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlParseException>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW1 )
{
  QXmlParseException * o = new QXmlParseException ( OPQSTRING(1,QString()), OPINT(2,-1), OPINT(3,-1), OPQSTRING(4,QString()), OPQSTRING(5,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QXmlParseException ( const QXmlParseException & other )
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW2 )
{
  QXmlParseException * o = new QXmlParseException ( *PQXMLPARSEEXCEPTION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QXmlParseException ( const QString & name = QString(), int c = -1, int l = -1, const QString & p = QString(), const QString & s = QString() )
//[2]QXmlParseException ( const QXmlParseException & other )

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEW )
{
  if( ISBETWEEN(0,5) && (ISCHAR(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) && (ISCHAR(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
  {
    HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_DELETE )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int columnNumber () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_COLUMNNUMBER )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnNumber () );
  }
}

/*
int lineNumber () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_LINENUMBER )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}

/*
QString message () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_MESSAGE )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->message () );
  }
}

/*
QString publicId () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_PUBLICID )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->publicId () );
  }
}

/*
QString systemId () const
*/
HB_FUNC_STATIC( QXMLPARSEEXCEPTION_SYSTEMID )
{
  QXmlParseException * obj = (QXmlParseException *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->systemId () );
  }
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEWFROM );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLPARSEEXCEPTION_NEWFROM );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLPARSEEXCEPTION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
