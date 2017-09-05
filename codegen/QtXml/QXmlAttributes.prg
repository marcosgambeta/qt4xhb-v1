$header

#include "hbclass.ch"


CLASS QXmlAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index1
   METHOD index2
   METHOD index3
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type1
   METHOD type2
   METHOD type3
   METHOD type
   METHOD uri
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlAttributes>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlAttributes ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_NEW )
{
  QXmlAttributes * o = new QXmlAttributes ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_APPEND )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_CLEAR )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_COUNT )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
int index ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->index ( PQSTRING(1) ) );
  }
}


/*
int index ( const QLatin1String & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->index ( *par1 ) );
  }
}


/*
int index ( const QString & uri, const QString & localPart ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->index ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]int index ( const QString & qName ) const
//[2]int index ( const QLatin1String & qName ) const
//[3]int index ( const QString & uri, const QString & localPart ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX1 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX3 );
  }
}

/*
int length () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LENGTH )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->length () );
  }
}


/*
QString localName ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LOCALNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->localName ( PINT(1) ) );
  }
}


/*
QString qName ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_QNAME )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->qName ( PINT(1) ) );
  }
}


/*
QString type ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->type ( PINT(1) ) );
  }
}


/*
QString type ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->type ( PQSTRING(1) ) );
  }
}


/*
QString type ( const QString & uri, const QString & localName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->type ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]QString type ( int index ) const
//[2]QString type ( const QString & qName ) const
//[3]QString type ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE3 );
  }
}

/*
QString uri ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_URI )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->uri ( PINT(1) ) );
  }
}


/*
QString value ( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE1 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->value ( PINT(1) ) );
  }
}


/*
QString value ( const QString & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE2 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->value ( PQSTRING(1) ) );
  }
}


/*
QString value ( const QLatin1String & qName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE3 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQSTRING( obj->value ( *par1 ) );
  }
}


/*
QString value ( const QString & uri, const QString & localName ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE4 )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->value ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]QString value ( int index ) const
//[2]QString value ( const QString & qName ) const
//[3]QString value ( const QLatin1String & qName ) const
//[4]QString value ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE2 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE4 );
  }
}

$extraMethods

#pragma ENDDUMP
