%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

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
$method=|QList<QSslCertificate>|fromData|const QByteArray &,QSsl::EncodingFormat=QSsl::Pem

$prototype=QList<QSslCertificate> fromDevice ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
$method=|QList<QSslCertificate>|fromDevice|QIODevice *,QSsl::EncodingFormat=QSsl::Pem

$prototype=QList<QSslCertificate> fromPath ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
$method=|QList<QSslCertificate>|fromPath|const QString &,QSsl::EncodingFormat=QSsl::Pem,QRegExp::PatternSyntax=QRegExp::FixedString

$extraMethods

#pragma ENDDUMP
