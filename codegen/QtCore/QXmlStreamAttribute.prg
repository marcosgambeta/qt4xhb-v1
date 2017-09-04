$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD name
   METHOD namespaceUri
   METHOD prefix
   METHOD qualifiedName
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

#include <QXmlStreamAttribute>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamAttribute()
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW1 )
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW2 )
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( PQSTRING(1), PQSTRING(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW3 )
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamAttribute(const QXmlStreamAttribute & other)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW4 )
{
  QXmlStreamAttribute * o = new QXmlStreamAttribute ( *PQXMLSTREAMATTRIBUTE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlStreamAttribute()
//[2]QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
//[3]QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[4]QXmlStreamAttribute(const QXmlStreamAttribute & other)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTE_NEW2 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_DELETE )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isDefault() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_ISDEFAULT )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDefault () );
  }
}


/*
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NAME )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NAMESPACEURI )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->namespaceUri () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef prefix() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_PREFIX )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->prefix () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef qualifiedName() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_QUALIFIEDNAME )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->qualifiedName () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_VALUE )
{
  QXmlStreamAttribute * obj = (QXmlStreamAttribute *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
