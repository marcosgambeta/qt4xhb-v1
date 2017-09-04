$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamEntityDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD notationName
   METHOD publicId
   METHOD systemId
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

#include <QXmlStreamEntityDeclaration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamEntityDeclaration()
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW1 )
{
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW2 )
{
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ( *PQXMLSTREAMENTITYDECLARATION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlStreamEntityDeclaration()
//[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMENTITYDECLARATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_DELETE )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef notationName() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NOTATIONNAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->notationName () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_PUBLICID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_SYSTEMID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_VALUE )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
