%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTcpSocket

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QSslKey>
#include <QtNetwork/QSslCipher>
#include <QtNetwork/QSslConfiguration>

$prototype=QSslSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void abort()

$prototype=void addCaCertificate ( const QSslCertificate & certificate )
$method=|void|addCaCertificate|const QSslCertificate &

$prototype=bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$internalMethod=|bool|addCaCertificates,addCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addCaCertificates ( const QList<QSslCertificate> & certificates )
$internalMethod=|void|addCaCertificates,addCaCertificates2|const QList<QSslCertificate> &

/*
[1]bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
[2]void addCaCertificates ( const QList<QSslCertificate> & certificates )
*/

HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QSslSocket_addCaCertificates1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_addCaCertificates2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addCaCertificates

$prototype=QList<QSslCertificate> caCertificates () const
$method=|QList<QSslCertificate>|caCertificates|

$prototype=QList<QSslCipher> ciphers () const
$method=|QList<QSslCipher>|ciphers|

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted1|const QString &,quint16,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
$internalMethod=|void|connectToHostEncrypted,connectToHostEncrypted2|const QString &,quint16,const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
[1]void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
[2]void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
*/

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
$addMethod=connectToHostEncrypted

$prototypeV2=qint64 encryptedBytesAvailable() const

$prototypeV2=qint64 encryptedBytesToWrite() const

$prototypeV2=bool flush()

$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=void ignoreSslErrors ()
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors2|

/*
[1]void ignoreSslErrors ( const QList<QSslError> & errors )
[2]void ignoreSslErrors ()
*/

HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QSslSocket_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ignoreSslErrors

$prototypeV2=bool isEncrypted() const

$prototypeV2=QSslCertificate localCertificate() const

$prototypeV2=QSslSocket::SslMode mode() const

$prototypeV2=QSslCertificate peerCertificate() const

$prototype=QList<QSslCertificate> peerCertificateChain () const
$method=|QList<QSslCertificate>|peerCertificateChain|

$prototypeV2=int peerVerifyDepth() const

$prototypeV2=QSslSocket::PeerVerifyMode peerVerifyMode() const

$prototypeV2=QSslKey privateKey() const

$prototypeV2=QSsl::SslProtocol protocol() const

$prototypeV2=QSslCipher sessionCipher() const

$prototype=void setCaCertificates ( const QList<QSslCertificate> & certificates )
$method=|void|setCaCertificates|const QList<QSslCertificate> &

$prototype=void setCiphers ( const QList<QSslCipher> & ciphers )
$internalMethod=|void|setCiphers,setCiphers1|const QList<QSslCipher> &

$prototype=void setCiphers ( const QString & ciphers )
$internalMethod=|void|setCiphers,setCiphers2|const QString &

/*
[1]void setCiphers ( const QList<QSslCipher> & ciphers )
[2]void setCiphers ( const QString & ciphers )
*/

HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_setCiphers1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSslSocket_setCiphers2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCiphers

$prototype=void setLocalCertificate ( const QSslCertificate & certificate )
$internalMethod=|void|setLocalCertificate,setLocalCertificate1|const QSslCertificate &

$prototype=void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
$internalMethod=|void|setLocalCertificate,setLocalCertificate2|const QString &,QSsl::EncodingFormat=QSsl::Pem

/*
[1]void setLocalCertificate ( const QSslCertificate & certificate )
[2]void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
*/

HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE )
{
  if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    QSslSocket_setLocalCertificate1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QSslSocket_setLocalCertificate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setLocalCertificate

$prototype=void setPeerVerifyDepth ( int depth )
$method=|void|setPeerVerifyDepth|int

$prototype=void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
$method=|void|setPeerVerifyMode|QSslSocket::PeerVerifyMode

$prototype=void setPrivateKey ( const QSslKey & key )
$internalMethod=|void|setPrivateKey,setPrivateKey1|const QSslKey &

$prototype=void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
$internalMethod=|void|setPrivateKey,setPrivateKey2|const QString &,QSsl::KeyAlgorithm=QSsl::Rsa,QSsl::EncodingFormat=QSsl::Pem,const QByteArray &=QByteArray()

/*
[1]void setPrivateKey ( const QSslKey & key )
[2]void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
*/

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
$addMethod=setPrivateKey

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

$prototypeV2=QSslConfiguration sslConfiguration() const

$prototype=QList<QSslError> sslErrors () const
$method=|QList<QSslError>|sslErrors|

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototype=bool waitForEncrypted ( int msecs = 30000 )
$method=|bool|waitForEncrypted|int=30000

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual qint64 bytesAvailable() const

$prototypeV2=virtual qint64 bytesToWrite() const

$prototypeV2=virtual bool canReadLine() const

$prototypeV2=virtual void close()

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$prototypeV2=void startClientEncryption()

$prototypeV2=void startServerEncryption()

$prototype=static void addDefaultCaCertificate ( const QSslCertificate & certificate )
$staticMethod=|void|addDefaultCaCertificate|const QSslCertificate &

$prototype=static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$internalStaticMethod=|bool|addDefaultCaCertificates,addDefaultCaCertificates1|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$prototype=void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
$internalMethod=|void|addDefaultCaCertificates,addDefaultCaCertificates2|const QList<QSslCertificate> &

/*
[1]bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
[2]void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/

HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QSslSocket_addDefaultCaCertificates1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QSslSocket_addDefaultCaCertificates2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addDefaultCaCertificates

$prototype=QList<QSslCertificate> defaultCaCertificates ()
$method=|QList<QSslCertificate>|defaultCaCertificates|

$prototype=QList<QSslCipher> defaultCiphers ()
$method=|QList<QSslCipher>|defaultCiphers|

$prototype=void setDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
$method=|void|setDefaultCaCertificates|const QList<QSslCertificate> &

$prototype=void setDefaultCiphers ( const QList<QSslCipher> & ciphers )
$method=|void|setDefaultCiphers|const QList<QSslCipher> &

$prototype=QList<QSslCipher> supportedCiphers ()
$method=|QList<QSslCipher>|supportedCiphers|

$prototypeV2=static bool supportsSsl()

$prototype=QList<QSslCertificate> systemCaCertificates ()
$method=|QList<QSslCertificate>|systemCaCertificates|

$beginSignals
$signal=|encrypted()
$signal=|encryptedBytesWritten(qint64)
$signal=|modeChanged(QSslSocket::SslMode)
$signal=|peerVerifyError(QSslError)
$signal=|sslErrors(QList<QSslError>)
$endSignals

#pragma ENDDUMP
