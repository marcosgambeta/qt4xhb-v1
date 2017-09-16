$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
REQUEST QTEXTCODEC
#endif

CLASS QTextCodec

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD canEncode1
   METHOD canEncode2
   METHOD canEncode
   METHOD toUnicode1
   METHOD toUnicode2
   METHOD toUnicode
   METHOD fromUnicode1
   METHOD fromUnicode
   METHOD makeDecoder1
   METHOD makeDecoder2
   METHOD makeDecoder
   METHOD makeEncoder1
   METHOD makeEncoder2
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName1
   METHOD codecForName2
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForTr
   METHOD setCodecForTr
   METHOD codecForCStrings
   METHOD setCodecForCStrings
   METHOD codecForHtml1
   METHOD codecForHtml2
   METHOD codecForHtml
   METHOD codecForUtfText1
   METHOD codecForUtfText2
   METHOD codecForUtfText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextCodec>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
bool canEncode(QChar) const
*/
$method=|bool|canEncode,canEncode1|QChar

/*
bool canEncode(const QString&) const
*/
$method=|bool|canEncode,canEncode2|const QString &

//[1]bool canEncode(QChar) const
//[2]bool canEncode(const QString&) const

HB_FUNC_STATIC( QTEXTCODEC_CANENCODE )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CANENCODE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CANENCODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toUnicode(const QByteArray&) const
*/
$method=|QString|toUnicode,toUnicode1|const QByteArray &

/*
QString toUnicode(const char* chars) const
*/
$method=|QString|toUnicode,toUnicode2|const char *

/*
QString toUnicode(const char *in, int length, ConverterState *state = 0) const
*/
%% TODO: QTextCodec::ConverterState é uma classe
%% $method=|QString|toUnicode,toUnicode3|const char *,int,QTextCodec::ConverterState *=0

//[1]QString toUnicode(const QByteArray&) const
//[2]QString toUnicode(const char* chars) const
//[3]QString toUnicode(const char *in, int length, ConverterState *state = 0) const

HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_TOUNICODE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_TOUNICODE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray fromUnicode(const QString& uc) const
*/
$method=|QByteArray|fromUnicode,fromUnicode1|const QString &

/*
QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const
*/
%% TODO: QTextCodec::ConverterState é uma classe
%% $method=|QByteArray|fromUnicode,fromUnicode2|const QChar *,int,QTextCodec::ConverterState *=0

//[1]QByteArray fromUnicode(const QString& uc) const
//[2]QByteArray fromUnicode(const QChar *in, int length, ConverterState *state = 0) const

HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_FROMUNICODE1 );
  }
  //else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISOBJECT(3)||ISNIL(3)) )
  //{
  //  HB_FUNC_EXEC( QTEXTCODEC_FROMUNICODE2 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextDecoder* makeDecoder() const
*/
$method=|QTextDecoder *|makeDecoder,makeDecoder1|

/*
QTextDecoder* makeDecoder(ConversionFlags flags) const
*/
$method=|QTextDecoder *|makeDecoder,makeDecoder2|QTextCodec::ConversionFlags

//[1]QTextDecoder* makeDecoder() const
//[2]QTextDecoder* makeDecoder(ConversionFlags flags) const

HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_MAKEDECODER1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_MAKEDECODER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextEncoder* makeEncoder() const
*/
$method=|QTextEncoder *|makeEncoder,makeEncoder1|

/*
QTextEncoder* makeEncoder(ConversionFlags flags) const
*/
$method=|QTextEncoder *|makeEncoder,makeEncoder2|QTextCodec::ConversionFlags

//[1]QTextEncoder* makeEncoder() const
//[2]QTextEncoder* makeEncoder(ConversionFlags flags) const

HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_MAKEENCODER1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_MAKEENCODER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QByteArray name() const = 0
*/
$virtualMethod=|QByteArray|name|

/*
virtual QList<QByteArray> aliases() const
*/
HB_FUNC_STATIC( QTEXTCODEC_ALIASES )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->aliases ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
virtual int mibEnum() const = 0
*/
$virtualMethod=|int|mibEnum|

/*
static QTextCodec* codecForName(const QByteArray &name)
*/
$staticMethod=|QTextCodec *|codecForName,codecForName1|const QByteArray &

/*
static QTextCodec* codecForName(const char *name)
*/
$staticMethod=|QTextCodec *|codecForName,codecForName2|const char *

//[1]static QTextCodec* codecForName(const QByteArray &name)
//[2]static QTextCodec* codecForName(const char *name)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORNAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec* codecForMib(int mib)
*/
$staticMethod=|QTextCodec *|codecForMib|int

/*
static QList<QByteArray> availableCodecs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLECODECS )
{
  QList<QByteArray> list = QTextCodec::availableCodecs ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QList<int> availableMibs()
*/
HB_FUNC_STATIC( QTEXTCODEC_AVAILABLEMIBS )
{
  QList<int> list = QTextCodec::availableMibs ();
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
static QTextCodec* codecForLocale()
*/
$staticMethod=|QTextCodec *|codecForLocale|

/*
static void setCodecForLocale(QTextCodec *c)
*/
$staticMethod=|void|setCodecForLocale|QTextCodec *

/*
static QTextCodec* codecForTr()
*/
$staticMethod=|QTextCodec *|codecForTr|

/*
static void setCodecForTr(QTextCodec *c)
*/
$staticMethod=|void|setCodecForTr|QTextCodec *

/*
static QTextCodec* codecForCStrings()
*/
$staticMethod=|QTextCodec *|codecForCStrings|

/*
static void setCodecForCStrings(QTextCodec *c)
*/
$staticMethod=|void|setCodecForCStrings|QTextCodec *

/*
static QTextCodec *codecForHtml(const QByteArray &ba)
*/
$staticMethod=|QTextCodec *|codecForHtml,codecForHtml1|const QByteArray &

/*
static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/
$staticMethod=|QTextCodec *|codecForHtml,codecForHtml2|const QByteArray &,QTextCodec *

//[1]static QTextCodec *codecForHtml(const QByteArray &ba)
//[2]static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORHTML1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORHTML2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba)
*/
$staticMethod=|QTextCodec *|codecForUtfText,codecForUtfText1|const QByteArray &

/*
static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/
$staticMethod=|QTextCodec *|codecForUtfText,codecForUtfText2|const QByteArray &,QTextCodec *

//[1]static QTextCodec *codecForUtfText(const QByteArray &ba)
//[2]static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)

HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORUTFTEXT1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQTEXTCODEC(2) )
  {
    HB_FUNC_EXEC( QTEXTCODEC_CODECFORUTFTEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
