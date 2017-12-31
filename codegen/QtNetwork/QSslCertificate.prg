$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDATETIME
REQUEST QSSLKEY
REQUEST QSSLCERTIFICATE
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

$destructor

#pragma BEGINDUMP

#include <QSslCertificate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>
#include <QSslKey>

$prototype=QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
$internalConstructor=|new1|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
$internalConstructor=|new2|const QByteArray &=QByteArray(),QSsl::EncodingFormat=QSsl::Pem

$prototype=QSslCertificate ( const QSslCertificate & other )
$internalConstructor=|new3|const QSslCertificate &

//[1]QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
//[2]QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
//[3]QSslCertificate ( const QSslCertificate & other )

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QSslCertificate_new1();
  }
  else if( ISBETWEEN(0,2) && (ISQBYTEARRAY(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QSslCertificate_new2();
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    QSslCertificate_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QByteArray digest ( QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5 ) const
$method=|QByteArray|digest|QCryptographicHash::Algorithm=QCryptographicHash::Md5

$prototype=QDateTime effectiveDate () const
$method=|QDateTime|effectiveDate|

$prototype=QDateTime expiryDate () const
$method=|QDateTime|expiryDate|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString issuerInfo ( SubjectInfo subject ) const
$internalMethod=|QString|issuerInfo,issuerInfo1|QSslCertificate::SubjectInfo

$prototype=QString issuerInfo ( const QByteArray & tag ) const
$internalMethod=|QString|issuerInfo,issuerInfo2|const QByteArray &

//[1]QString issuerInfo ( SubjectInfo subject ) const
//[2]QString issuerInfo ( const QByteArray & tag ) const

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslCertificate_issuerInfo1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSslCertificate_issuerInfo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSslKey publicKey () const
$method=|QSslKey|publicKey|

$prototype=QByteArray serialNumber () const
$method=|QByteArray|serialNumber|

$prototype=QString subjectInfo ( SubjectInfo subject ) const
$internalMethod=|QString|subjectInfo,subjectInfo1|QSslCertificate::SubjectInfo

$prototype=QString subjectInfo ( const QByteArray & tag ) const
$internalMethod=|QString|subjectInfo,subjectInfo2|const QByteArray &

//[1]QString subjectInfo ( SubjectInfo subject ) const
//[2]QString subjectInfo ( const QByteArray & tag ) const

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSslCertificate_subjectInfo1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSslCertificate_subjectInfo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QByteArray toDer () const
$method=|QByteArray|toDer|

$prototype=QByteArray toPem () const
$method=|QByteArray|toPem|

$prototype=QByteArray version () const
$method=|QByteArray|version|

$prototype=QList<QSslCertificate> fromData ( const QByteArray & data, QSsl::EncodingFormat format = QSsl::Pem )
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDATA )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QList<QSslCertificate> list = QSslCertificate::fromData ( *PQBYTEARRAY(1), (QSsl::EncodingFormat) par2 );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$prototype=QList<QSslCertificate> fromDevice ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDEVICE )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QList<QSslCertificate> list = QSslCertificate::fromDevice ( PQIODEVICE(1), (QSsl::EncodingFormat) par2 );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$prototype=QList<QSslCertificate> fromPath ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMPATH )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::FixedString : hb_parni(3);
  QList<QSslCertificate> list = QSslCertificate::fromPath ( PQSTRING(1), (QSsl::EncodingFormat) par2, (QRegExp::PatternSyntax) par3 );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$extraMethods

#pragma ENDDUMP
