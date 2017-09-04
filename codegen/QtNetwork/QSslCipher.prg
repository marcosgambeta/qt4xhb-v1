$header

#include "hbclass.ch"


CLASS QSslCipher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD authenticationMethod
   METHOD encryptionMethod
   METHOD isNull
   METHOD keyExchangeMethod
   METHOD name
   METHOD protocol
   METHOD protocolString
   METHOD supportedBits
   METHOD usedBits
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSslCipher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSslCipher ()
*/
HB_FUNC_STATIC( QSSLCIPHER_NEW1 )
{
  QSslCipher * o = new QSslCipher ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLCIPHER_NEW2 )
{
  QSslCipher * o = new QSslCipher ( PQSTRING(1), (QSsl::SslProtocol) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSslCipher ( const QSslCipher & other )
*/
HB_FUNC_STATIC( QSSLCIPHER_NEW3 )
{
  QSslCipher * o = new QSslCipher ( *PQSSLCIPHER(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSslCipher ()
//[2]QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
//[3]QSslCipher ( const QSslCipher & other )

HB_FUNC_STATIC( QSSLCIPHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSSLCIPHER(1) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLCIPHER_DELETE )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString authenticationMethod () const
*/
HB_FUNC_STATIC( QSSLCIPHER_AUTHENTICATIONMETHOD )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->authenticationMethod () );
  }
}


/*
QString encryptionMethod () const
*/
HB_FUNC_STATIC( QSSLCIPHER_ENCRYPTIONMETHOD )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->encryptionMethod () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLCIPHER_ISNULL )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QString keyExchangeMethod () const
*/
HB_FUNC_STATIC( QSSLCIPHER_KEYEXCHANGEMETHOD )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->keyExchangeMethod () );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QSSLCIPHER_NAME )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
QSsl::SslProtocol protocol () const
*/
HB_FUNC_STATIC( QSSLCIPHER_PROTOCOL )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->protocol () );
  }
}


/*
QString protocolString () const
*/
HB_FUNC_STATIC( QSSLCIPHER_PROTOCOLSTRING )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->protocolString () );
  }
}


/*
int supportedBits () const
*/
HB_FUNC_STATIC( QSSLCIPHER_SUPPORTEDBITS )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->supportedBits () );
  }
}


/*
int usedBits () const
*/
HB_FUNC_STATIC( QSSLCIPHER_USEDBITS )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->usedBits () );
  }
}

$extraMethods

#pragma ENDDUMP
