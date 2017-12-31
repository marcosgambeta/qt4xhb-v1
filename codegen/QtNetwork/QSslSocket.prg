$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
REQUEST QVARIANT
REQUEST QSSLCONFIGURATION
REQUEST QSSLERROR
#endif

CLASS QSslSocket INHERIT QTcpSocket

   METHOD new
   METHOD delete
   METHOD abort
   METHOD addCaCertificate
   METHOD addCaCertificates1
   METHOD addCaCertificates2
   METHOD addCaCertificates
   METHOD caCertificates
   METHOD ciphers
   METHOD connectToHostEncrypted
   METHOD encryptedBytesAvailable
   METHOD encryptedBytesToWrite
   METHOD flush
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isEncrypted
   METHOD localCertificate
   METHOD mode
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers1
   METHOD setCiphers2
   METHOD setCiphers
   METHOD setLocalCertificate1
   METHOD setLocalCertificate2
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD setSslConfiguration
   METHOD socketOption
   METHOD sslConfiguration
   METHOD sslErrors
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD waitForEncrypted
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD startClientEncryption
   METHOD startServerEncryption
   METHOD addDefaultCaCertificate
   METHOD addDefaultCaCertificates1
   METHOD addDefaultCaCertificates2
   METHOD addDefaultCaCertificates
   METHOD defaultCaCertificates
   METHOD defaultCiphers
   METHOD setDefaultCaCertificates
   METHOD setDefaultCiphers
   METHOD supportedCiphers
   METHOD supportsSsl
   METHOD systemCaCertificates

   METHOD onEncrypted
   METHOD onEncryptedBytesWritten
   METHOD onModeChanged
   METHOD onPeerVerifyError
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSslSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSslKey>
#include <QSslCipher>
#include <QSslConfiguration>

$prototype=QSslSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void abort ()
$method=|void|abort|

$prototype=void addCaCertificate ( const QSslCertificate & certificate )
$method=|void|addCaCertificate|const QSslCertificate &

$prototype=bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$method=|bool|addCaCertificates,addCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addCaCertificates ( const QList<QSslCertificate> & certificates )
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES2 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslCertificate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->addCaCertificates ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QSslCertificate> caCertificates () const
HB_FUNC_STATIC( QSSLSOCKET_CACERTIFICATES )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslCertificate> list = obj->caCertificates ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
}

$prototype=QList<QSslCipher> ciphers () const
HB_FUNC_STATIC( QSSLSOCKET_CIPHERS )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslCipher> list = obj->ciphers ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
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
}

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted2|const QString &,quint16,const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

//[1]void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
//[2]void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QSslSocket_connectToHostEncrypted1();
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QSslSocket_connectToHostEncrypted2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qint64 encryptedBytesAvailable () const
$method=|qint64|encryptedBytesAvailable|

$prototype=qint64 encryptedBytesToWrite () const
$method=|qint64|encryptedBytesToWrite|

$prototype=bool flush ()
$method=|bool|flush|

$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslError> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->ignoreSslErrors ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void ignoreSslErrors ()
$method=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]void ignoreSslErrors ()

HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isEncrypted () const
$method=|bool|isEncrypted|

$prototype=QSslCertificate localCertificate () const
$method=|QSslCertificate|localCertificate|

$prototype=SslMode mode () const
$method=|QSslSocket::SslMode|mode|

$prototype=QSslCertificate peerCertificate () const
$method=|QSslCertificate|peerCertificate|

$prototype=QList<QSslCertificate> peerCertificateChain () const
HB_FUNC_STATIC( QSSLSOCKET_PEERCERTIFICATECHAIN )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslCertificate> list = obj->peerCertificateChain ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
}

$prototype=int peerVerifyDepth () const
$method=|int|peerVerifyDepth|

$prototype=QSslSocket::PeerVerifyMode peerVerifyMode () const
$method=|QSslSocket::PeerVerifyMode|peerVerifyMode|

$prototype=QSslKey privateKey () const
$method=|QSslKey|privateKey|

$prototype=QSsl::SslProtocol protocol () const
$method=|QSsl::SslProtocol|protocol|

$prototype=QSslCipher sessionCipher () const
$method=|QSslCipher|sessionCipher|

$prototype=void setCaCertificates ( const QList<QSslCertificate> & certificates )
HB_FUNC_STATIC( QSSLSOCKET_SETCACERTIFICATES )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslCertificate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCaCertificates ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setCiphers ( const QList<QSslCipher> & ciphers )
HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS1 )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslCipher> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCiphers ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setCiphers ( const QString & ciphers )
$method=|void|setCiphers,setCiphers2|const QString &

//[1]void setCiphers ( const QList<QSslCipher> & ciphers )
//[2]void setCiphers ( const QString & ciphers )

HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setLocalCertificate ( const QSslCertificate & certificate )
$method=|void|setLocalCertificate,setLocalCertificate1|const QSslCertificate &

$prototype=void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
$method=|void|setLocalCertificate,setLocalCertificate2|const QString &,QSsl::EncodingFormat=QSsl::Pem

//[1]void setLocalCertificate ( const QSslCertificate & certificate )
//[2]void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )

HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE )
{
  if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPeerVerifyDepth ( int depth )
$method=|void|setPeerVerifyDepth|int

$prototype=void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=void setPrivateKey ( const QSslKey & key )
$internalMethod=|void|setPrivateKey,setPrivateKey1|const QSslKey &

$prototype=void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
$internalMethod=|void|setPrivateKey,setPrivateKey2|const QString &,QSsl::KeyAlgorithm=QSsl::Rsa,QSsl::EncodingFormat=QSsl::Pem,const QByteArray &=QByteArray()

//[1]void setPrivateKey ( const QSslKey & key )
//[2]void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )

HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY )
{
  if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    QSslSocket_setPrivateKey1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQBYTEARRAY(4)||ISNIL(4)) )
  {
    QSslSocket_setPrivateKey2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setProtocol ( QSsl::SslProtocol protocol )
$method=|void|setProtocol|QSsl::SslProtocol

$prototype=void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=bool setSocketDescriptor ( int socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite )
$method=|bool|setSocketDescriptor|int,QAbstractSocket::SocketState=QAbstractSocket::ConnectedState,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
$method=|void|setSocketOption|QAbstractSocket::SocketOption,const QVariant &

$prototype=void setSslConfiguration ( const QSslConfiguration & configuration )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=QVariant socketOption ( QAbstractSocket::SocketOption option )
$method=|QVariant|socketOption|QAbstractSocket::SocketOption

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=QList<QSslError> sslErrors () const
HB_FUNC_STATIC( QSSLSOCKET_SSLERRORS )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslError> list = obj->sslErrors ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslError *) new QSslError ( list[i] ) );
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
}

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototype=bool waitForEncrypted ( int msecs = 30000 )
$method=|bool|waitForEncrypted|int=30000

$prototype=virtual bool atEnd () const
$virtualMethod=|bool|atEnd|

$prototype=virtual qint64 bytesAvailable () const
$virtualMethod=|qint64|bytesAvailable|

$prototype=virtual qint64 bytesToWrite () const
$virtualMethod=|qint64|bytesToWrite|

$prototype=virtual bool canReadLine () const
$virtualMethod=|bool|canReadLine|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$prototype=void startClientEncryption ()
$method=|void|startClientEncryption|

$prototype=void startServerEncryption ()
$method=|void|startServerEncryption|

$prototype=static void addDefaultCaCertificate ( const QSslCertificate & certificate )
$staticMethod=|void|addDefaultCaCertificate|const QSslCertificate &

$prototype=static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$staticMethod=|bool|addDefaultCaCertificates,addDefaultCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 )
{
  QList<QSslCertificate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QSslSocket::addDefaultCaCertificates ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QSslCertificate> defaultCaCertificates ()
HB_FUNC_STATIC( QSSLSOCKET_DEFAULTCACERTIFICATES )
{
  QList<QSslCertificate> list = QSslSocket::defaultCaCertificates ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
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

$prototype=QList<QSslCipher> defaultCiphers ()
HB_FUNC_STATIC( QSSLSOCKET_DEFAULTCIPHERS )
{
  QList<QSslCipher> list = QSslSocket::defaultCiphers ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
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

$prototype=void setDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
HB_FUNC_STATIC( QSSLSOCKET_SETDEFAULTCACERTIFICATES )
{
  QList<QSslCertificate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QSslSocket::setDefaultCaCertificates ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setDefaultCiphers ( const QList<QSslCipher> & ciphers )
HB_FUNC_STATIC( QSSLSOCKET_SETDEFAULTCIPHERS )
{
  QList<QSslCipher> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QSslSocket::setDefaultCiphers ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=QList<QSslCipher> supportedCiphers ()
HB_FUNC_STATIC( QSSLSOCKET_SUPPORTEDCIPHERS )
{
  QList<QSslCipher> list = QSslSocket::supportedCiphers ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
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

$prototype=static bool supportsSsl ()
$staticMethod=|bool|supportsSsl|

$prototype=QList<QSslCertificate> systemCaCertificates ()
HB_FUNC_STATIC( QSSLSOCKET_SYSTEMCACERTIFICATES )
{
  QList<QSslCertificate> list = QSslSocket::systemCaCertificates ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
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

#pragma ENDDUMP
