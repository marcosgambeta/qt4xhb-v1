$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLNAME
#endif

CLASS QXmlName

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD isNull
   METHOD localName
   METHOD namespaceUri
   METHOD prefix
   METHOD toClarkName
   METHOD fromClarkName
   METHOD isNCName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlName
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlName>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QXmlNamePool>

/*
QXmlName ()
*/
HB_FUNC_STATIC( QXMLNAME_NEW1 )
{
  QXmlName * o = new QXmlName ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
*/
HB_FUNC_STATIC( QXMLNAME_NEW2 )
{
  QXmlName * o = new QXmlName ( *PQXMLNAMEPOOL(1), PQSTRING(2), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlName ()
//[2]QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )

HB_FUNC_STATIC( QXMLNAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISQXMLNAMEPOOL(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool isNull () const
*/
HB_FUNC_STATIC( QXMLNAME_ISNULL )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QString localName ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_LOCALNAME )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->localName ( *PQXMLNAMEPOOL(1) ) );
  }
}


/*
QString namespaceUri ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_NAMESPACEURI )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->namespaceUri ( *PQXMLNAMEPOOL(1) ) );
  }
}


/*
QString prefix ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_PREFIX )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->prefix ( *PQXMLNAMEPOOL(1) ) );
  }
}


/*
QString toClarkName ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_TOCLARKNAME )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toClarkName ( *PQXMLNAMEPOOL(1) ) );
  }
}



/*
QXmlName fromClarkName ( const QString & clarkName, const QXmlNamePool & namePool )
*/
HB_FUNC_STATIC( QXMLNAME_FROMCLARKNAME )
{
  QXmlName * ptr = new QXmlName( QXmlName::fromClarkName ( PQSTRING(1), *PQXMLNAMEPOOL(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QXMLNAME", true );
}


/*
bool isNCName ( const QString & candidate )
*/
HB_FUNC_STATIC( QXMLNAME_ISNCNAME )
{
  RBOOL( QXmlName::isNCName ( PQSTRING(1) ) );
}


HB_FUNC_STATIC( QXMLNAME_NEWFROM )
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

HB_FUNC_STATIC( QXMLNAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLNAME_NEWFROM );
}

HB_FUNC_STATIC( QXMLNAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLNAME_NEWFROM );
}

HB_FUNC_STATIC( QXMLNAME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLNAME_SETSELFDESTRUCTION )
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
