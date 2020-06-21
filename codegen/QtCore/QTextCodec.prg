%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=bool canEncode(QChar) const
$internalMethod=|bool|canEncode,canEncode1|QChar

$prototype=bool canEncode(const QString&) const
$internalMethod=|bool|canEncode,canEncode2|const QString &

/*
[1]bool canEncode(QChar) const
[2]bool canEncode(const QString&) const
*/

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QTextCodec_canEncode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_canEncode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=canEncode

$prototype=QString toUnicode(const QByteArray&) const
$internalMethod=|QString|toUnicode,toUnicode1|const QByteArray &

$prototype=QString toUnicode(const char* chars) const
$internalMethod=|QString|toUnicode,toUnicode2|const char *

$prototype=QString toUnicode(const char *in, int length, ConverterState *state = 0) const
%% TODO: QTextCodec::ConverterState é uma classe
%% $method=|QString|toUnicode,toUnicode3|const char *,int,QTextCodec::ConverterState *=0

/*
[1]QString toUnicode(const QByteArray&) const
[2]QString toUnicode(const char* chars) const
[3]QString toUnicode(const char *in, int length, ConverterState *state = 0) const
*/

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_toUnicode1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_toUnicode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=toUnicode

$prototype=QByteArray fromUnicode(const QString& uc) const
$internalMethod=|QByteArray|fromUnicode,fromUnicode1|const QString &

$prototype=QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const
%% TODO: QTextCodec::ConverterState é uma classe
%% $method=|QByteArray|fromUnicode,fromUnicode2|const QChar *,int,QTextCodec::ConverterState *=0

/*
[1]QByteArray fromUnicode(const QString& uc) const
[2]QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const
*/

HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_fromUnicode1();
  }
%%  //else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISOBJECT(3)||ISNIL(3)) )
%%  //{
%%  //  HB_FUNC_EXEC( QTEXTCODEC_FROMUNICODE2 );
%%  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromUnicode

$prototype=QTextDecoder* makeDecoder() const
$internalMethod=|QTextDecoder *|makeDecoder,makeDecoder1|

$prototype=QTextDecoder* makeDecoder(ConversionFlags flags) const
$internalMethod=|QTextDecoder *|makeDecoder,makeDecoder2|QTextCodec::ConversionFlags

/*
[1]QTextDecoder* makeDecoder() const
[2]QTextDecoder* makeDecoder(ConversionFlags flags) const
*/

HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER )
{
  if( ISNUMPAR(0) )
  {
    QTextCodec_makeDecoder1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCodec_makeDecoder2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=makeDecoder

$prototype=QTextEncoder* makeEncoder() const
$internalMethod=|QTextEncoder *|makeEncoder,makeEncoder1|

$prototype=QTextEncoder* makeEncoder(ConversionFlags flags) const
$internalMethod=|QTextEncoder *|makeEncoder,makeEncoder2|QTextCodec::ConversionFlags

/*
[1]QTextEncoder* makeEncoder() const
[2]QTextEncoder* makeEncoder(ConversionFlags flags) const
*/

HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER )
{
  if( ISNUMPAR(0) )
  {
    QTextCodec_makeEncoder1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCodec_makeEncoder2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=makeEncoder

$prototypeV2=virtual QByteArray name() const = 0

$prototypeV2=virtual QList<QByteArray> aliases() const

$prototypeV2=virtual int mibEnum() const = 0

$prototype=static QTextCodec* codecForName(const QByteArray &name)
$internalStaticMethod=|QTextCodec *|codecForName,codecForName1|const QByteArray &

$prototype=static QTextCodec* codecForName(const char *name)
$internalStaticMethod=|QTextCodec *|codecForName,codecForName2|const char *

/*
[1]static QTextCodec* codecForName(const QByteArray &name)
[2]static QTextCodec* codecForName(const char *name)
*/

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCodec_codecForName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=codecForName

$prototypeV2=static QTextCodec * codecForMib( int mib )

$prototypeV2=static QList<QByteArray> availableCodecs()

$prototypeV2=static QList<int> availableMibs()

$prototypeV2=static QTextCodec * codecForLocale()

$prototypeV2=static void setCodecForLocale( QTextCodec * c )

$prototypeV2=static QTextCodec * codecForTr()

$prototypeV2=static void setCodecForTr( QTextCodec * c )

$prototypeV2=static QTextCodec * codecForCStrings()

$prototypeV2=static void setCodecForCStrings( QTextCodec * c )

$prototype=static QTextCodec *codecForHtml(const QByteArray &ba)
$internalStaticMethod=|QTextCodec *|codecForHtml,codecForHtml1|const QByteArray &

$prototype=static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
$internalStaticMethod=|QTextCodec *|codecForHtml,codecForHtml2|const QByteArray &,QTextCodec *

/*
[1]static QTextCodec *codecForHtml(const QByteArray &ba)
[2]static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForHtml1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=codecForHtml

$prototype=static QTextCodec *codecForUtfText(const QByteArray &ba)
$internalStaticMethod=|QTextCodec *|codecForUtfText,codecForUtfText1|const QByteArray &

$prototype=static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
$internalStaticMethod=|QTextCodec *|codecForUtfText,codecForUtfText2|const QByteArray &,QTextCodec *

/*
[1]static QTextCodec *codecForUtfText(const QByteArray &ba)
[2]static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextCodec_codecForUtfText1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    QTextCodec_codecForUtfText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=codecForUtfText

$extraMethods

#pragma ENDDUMP
