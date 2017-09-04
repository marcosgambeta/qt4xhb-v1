$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamNotationDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD publicId
   METHOD systemId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamNotationDeclaration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamNotationDeclaration()
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW1 )
{
  QXmlStreamNotationDeclaration * o = new QXmlStreamNotationDeclaration ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW2 )
{
  QXmlStreamNotationDeclaration * o = new QXmlStreamNotationDeclaration ( *PQXMLSTREAMNOTATIONDECLARATION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlStreamNotationDeclaration()
//[2]QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNOTATIONDECLARATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNOTATIONDECLARATION(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMNOTATIONDECLARATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_DELETE )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NAME )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_PUBLICID )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_SYSTEMID )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId () );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
