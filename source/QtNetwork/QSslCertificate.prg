/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDATETIME
REQUEST QSSLKEY
#endif

CLASS QSslCertificate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD digest
   METHOD effectiveDate
   METHOD expiryDate
   METHOD isNull
   METHOD isValid
   METHOD issuerInfo
   METHOD publicKey
   METHOD serialNumber
   METHOD subjectInfo
   METHOD toDer
   METHOD toPem
   METHOD version
   METHOD fromData
   METHOD fromDevice
   METHOD fromPath

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslCertificate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QSslCertificate>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QDateTime>
#include <QtNetwork/QSslKey>

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1, 2) && ISQIODEVICE(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
  {
    /*
    QSslCertificate( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
    */
    QSslCertificate * obj = new QSslCertificate( PQIODEVICE(1), HB_ISNIL(2) ? ( QSsl::EncodingFormat ) QSsl::Pem : ( QSsl::EncodingFormat ) hb_parni(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISBETWEEN(0, 2) && (ISQBYTEARRAY(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)) )
  {
    /*
    QSslCertificate( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
    */
    QSslCertificate * obj = new QSslCertificate( HB_ISNIL(1) ? QByteArray() : *static_cast<QByteArray*>( Qt4xHb::itemGetPtr(1) ), HB_ISNIL(2) ? ( QSsl::EncodingFormat ) QSsl::Pem : ( QSsl::EncodingFormat ) hb_parni(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    /*
    QSslCertificate( const QSslCertificate & other )
    */
    QSslCertificate * obj = new QSslCertificate( *PQSSLCERTIFICATE(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSSLCERTIFICATE_DELETE )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

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
void clear()
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_CLEAR )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QByteArray digest( QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5 ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_DIGEST )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->digest( HB_ISNIL(1) ? ( QCryptographicHash::Algorithm ) QCryptographicHash::Md5 : ( QCryptographicHash::Algorithm ) hb_parni(1)) );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QDateTime effectiveDate() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_EFFECTIVEDATE )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->effectiveDate() );
      Qt4xHb::createReturnClass(ptr, "QDATETIME", true);
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
QDateTime expiryDate() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_EXPIRYDATE )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->expiryDate() );
      Qt4xHb::createReturnClass(ptr, "QDATETIME", true);
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
HB_FUNC_STATIC( QSSLCERTIFICATE_ISNULL )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

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
bool isValid() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISVALID )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QString issuerInfo( QSslCertificate::SubjectInfo subject ) const
    */
    QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->issuerInfo( ( QSslCertificate::SubjectInfo ) hb_parni(1)) );
    }
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    QString issuerInfo( const QByteArray & tag ) const
    */
    QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->issuerInfo( *PQBYTEARRAY(1)) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QSslKey publicKey() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_PUBLICKEY )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSslKey * ptr = new QSslKey( obj->publicKey() );
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
QByteArray serialNumber() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SERIALNUMBER )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->serialNumber() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QString subjectInfo( QSslCertificate::SubjectInfo subject ) const
    */
    QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->subjectInfo( ( QSslCertificate::SubjectInfo ) hb_parni(1)) );
    }
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    QString subjectInfo( const QByteArray & tag ) const
    */
    QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->subjectInfo( *PQBYTEARRAY(1)) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QByteArray toDer() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TODER )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toDer() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray toPem() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TOPEM )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toPem() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray version() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_VERSION )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->version() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QList<QSslCertificate> fromData( const QByteArray & data, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDATA )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      QList<QSslCertificate> list = obj->fromData( *PQBYTEARRAY(1), HB_ISNIL(2) ? ( QSsl::EncodingFormat ) QSsl::Pem : ( QSsl::EncodingFormat ) hb_parni(2) );
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
QList<QSslCertificate> fromDevice( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDEVICE )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQIODEVICE(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      QList<QSslCertificate> list = obj->fromDevice( PQIODEVICE(1), HB_ISNIL(2) ? ( QSsl::EncodingFormat ) QSsl::Pem : ( QSsl::EncodingFormat ) hb_parni(2) );
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
QList<QSslCertificate> fromPath( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMPATH )
{
  QSslCertificate * obj = static_cast<QSslCertificate*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) )
    {
#endif
      QList<QSslCertificate> list = obj->fromPath( PQSTRING(1), HB_ISNIL(2) ? ( QSsl::EncodingFormat ) QSsl::Pem : ( QSsl::EncodingFormat ) hb_parni(2), HB_ISNIL(3) ? ( QRegExp::PatternSyntax ) QRegExp::FixedString : ( QRegExp::PatternSyntax ) hb_parni(3) );
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

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
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

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCERTIFICATE_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCERTIFICATE_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SETSELFDESTRUCTION )
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
