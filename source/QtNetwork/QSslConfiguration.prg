/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
#endif

CLASS QSslConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD caCertificates
   METHOD ciphers
   METHOD isNull
   METHOD localCertificate
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD defaultConfiguration
   METHOD setDefaultConfiguration

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslConfiguration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QSslConfiguration>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtNetwork/QSslKey>
#include <QtNetwork/QSslCipher>

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QSslConfiguration()
    */
    QSslConfiguration * obj = new QSslConfiguration();
    Qt4xHb::returnNewObject(obj, true);
  }
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    /*
    QSslConfiguration( const QSslConfiguration & other )
    */
    QSslConfiguration * obj = new QSslConfiguration( *PQSSLCONFIGURATION(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSSLCONFIGURATION_DELETE )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<QSslCertificate> caCertificates() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CACERTIFICATES )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QSslCertificate> list = obj->caCertificates();
      PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        const int count = list.count();
        for( int i = 0; i < count; i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCertificate(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QList<QSslCipher> ciphers() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CIPHERS )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QSslCipher> list = obj->ciphers();
      PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCIPHER");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        const int count = list.count();
        for( int i = 0; i < count; i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCipher(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCIPHER", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_ISNULL )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSslCertificate localCertificate() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_LOCALCERTIFICATE )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslCertificate * ptr = new QSslCertificate( obj->localCertificate() );
      Qt4xHb::createReturnClass(ptr, "QSSLCERTIFICATE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSslCertificate peerCertificate() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATE )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslCertificate * ptr = new QSslCertificate( obj->peerCertificate() );
      Qt4xHb::createReturnClass(ptr, "QSSLCERTIFICATE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QList<QSslCertificate> peerCertificateChain() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATECHAIN )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QSslCertificate> list = obj->peerCertificateChain();
      PHB_DYNS pDynSym = hb_dynsymFindName("QSSLCERTIFICATE");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        const int count = list.count();
        for( int i = 0; i < count; i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSslCertificate(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLCERTIFICATE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int peerVerifyDepth() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYDEPTH )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->peerVerifyDepth() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSslSocket::PeerVerifyMode peerVerifyMode() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYMODE )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->peerVerifyMode() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSslKey privateKey() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PRIVATEKEY )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslKey * ptr = new QSslKey( obj->privateKey() );
      Qt4xHb::createReturnClass(ptr, "QSSLKEY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSsl::SslProtocol protocol() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PROTOCOL )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->protocol() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSslCipher sessionCipher() const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONCIPHER )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslCipher * ptr = new QSslCipher( obj->sessionCipher() );
      Qt4xHb::createReturnClass(ptr, "QSSLCIPHER", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCaCertificates( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCACERTIFICATES )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QSslCertificate> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      const int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QSslCertificate*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1+1), "POINTER", 0)));
      }
      obj->setCaCertificates( par1 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCiphers( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCIPHERS )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QSslCipher> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      const int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QSslCipher*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1+1), "POINTER", 0)));
      }
      obj->setCiphers( par1 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setLocalCertificate( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETLOCALCERTIFICATE )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
    {
#endif
      obj->setLocalCertificate( *PQSSLCERTIFICATE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPeerVerifyDepth( int depth )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYDEPTH )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPeerVerifyDepth( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPeerVerifyMode( QSslSocket::PeerVerifyMode mode )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYMODE )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPeerVerifyMode( ( QSslSocket::PeerVerifyMode ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPrivateKey( const QSslKey & key )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPRIVATEKEY )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLKEY(1) )
    {
#endif
      obj->setPrivateKey( *PQSSLKEY(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setProtocol( QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPROTOCOL )
{
  QSslConfiguration * obj = static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setProtocol( ( QSsl::SslProtocol ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QSslConfiguration defaultConfiguration()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_DEFAULTCONFIGURATION )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QSslConfiguration * ptr = new QSslConfiguration( QSslConfiguration::defaultConfiguration() );
    Qt4xHb::createReturnClass(ptr, "QSSLCONFIGURATION", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setDefaultConfiguration( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETDEFAULTCONFIGURATION )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
#endif
    QSslConfiguration::setDefaultConfiguration( *PQSSLCONFIGURATION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
