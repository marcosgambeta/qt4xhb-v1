/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QTextCodec
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextCodec>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"




/*
bool canEncode(QChar) const
*/
HB_FUNC_STATIC( QTEXTCODEC_CANENCODE1 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->canEncode ( *par1 ) );
  }
}


/*
bool canEncode(const QString&) const
*/
HB_FUNC_STATIC( QTEXTCODEC_CANENCODE2 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canEncode ( PQSTRING(1) ) );
  }
}


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
}

/*
QString toUnicode(const QByteArray&) const
*/
HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE1 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toUnicode ( *PQBYTEARRAY(1) );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QString toUnicode(const char* chars) const
*/
HB_FUNC_STATIC( QTEXTCODEC_TOUNICODE2 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toUnicode (  (const char *) hb_parc(1) );
    hb_retc( RQSTRING(str1) );
  }
}



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
}

/*
QByteArray fromUnicode(const QString& uc) const
*/
HB_FUNC_STATIC( QTEXTCODEC_FROMUNICODE1 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fromUnicode ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



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
}

/*
QTextDecoder* makeDecoder() const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER1 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDecoder * ptr = obj->makeDecoder ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDECODER" );
  }
}


/*
QTextDecoder* makeDecoder(ConversionFlags flags) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEDECODER2 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextDecoder * ptr = obj->makeDecoder (  (QTextCodec::ConversionFlags) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDECODER" );
  }
}


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
}

/*
QTextEncoder* makeEncoder() const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER1 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextEncoder * ptr = obj->makeEncoder ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTENCODER" );
  }
}


/*
QTextEncoder* makeEncoder(ConversionFlags flags) const
*/
HB_FUNC_STATIC( QTEXTCODEC_MAKEENCODER2 )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextEncoder * ptr = obj->makeEncoder (  (QTextCodec::ConversionFlags) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTENCODER" );
  }
}


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
}

/*
virtual QByteArray name() const = 0
*/
HB_FUNC_STATIC( QTEXTCODEC_NAME )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->name () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


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
HB_FUNC_STATIC( QTEXTCODEC_MIBENUM )
{
  QTextCodec * obj = (QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->mibEnum () );
  }
}



/*
static QTextCodec* codecForName(const QByteArray &name)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME1 )
{
  QTextCodec * ptr = QTextCodec::codecForName ( *PQBYTEARRAY(1) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static QTextCodec* codecForName(const char *name)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORNAME2 )
{
  QTextCodec * ptr = QTextCodec::codecForName (  (const char *) hb_parc(1) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


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
}

/*
static QTextCodec* codecForMib(int mib)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORMIB )
{
  QTextCodec * ptr = QTextCodec::codecForMib ( PINT(1) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


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
HB_FUNC_STATIC( QTEXTCODEC_CODECFORLOCALE )
{
  QTextCodec * ptr = QTextCodec::codecForLocale ();
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static void setCodecForLocale(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORLOCALE )
{
  QTextCodec::setCodecForLocale ( PQTEXTCODEC(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QTextCodec* codecForTr()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORTR )
{
  QTextCodec * ptr = QTextCodec::codecForTr ();
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static void setCodecForTr(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORTR )
{
  QTextCodec::setCodecForTr ( PQTEXTCODEC(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QTextCodec* codecForCStrings()
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORCSTRINGS )
{
  QTextCodec * ptr = QTextCodec::codecForCStrings ();
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static void setCodecForCStrings(QTextCodec *c)
*/
HB_FUNC_STATIC( QTEXTCODEC_SETCODECFORCSTRINGS )
{
  QTextCodec::setCodecForCStrings ( PQTEXTCODEC(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QTextCodec *codecForHtml(const QByteArray &ba)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML1 )
{
  QTextCodec * ptr = QTextCodec::codecForHtml ( *PQBYTEARRAY(1) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static QTextCodec *codecForHtml(const QByteArray &ba, QTextCodec *defaultCodec)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORHTML2 )
{
  QTextCodec * ptr = QTextCodec::codecForHtml ( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


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
}

/*
static QTextCodec *codecForUtfText(const QByteArray &ba)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT1 )
{
  QTextCodec * ptr = QTextCodec::codecForUtfText ( *PQBYTEARRAY(1) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


/*
static QTextCodec *codecForUtfText(const QByteArray &ba, QTextCodec *defaultCodec)
*/
HB_FUNC_STATIC( QTEXTCODEC_CODECFORUTFTEXT2 )
{
  QTextCodec * ptr = QTextCodec::codecForUtfText ( *PQBYTEARRAY(1), PQTEXTCODEC(2) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC" );
}


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
}


HB_FUNC_STATIC( QTEXTCODEC_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTCODEC_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCODEC_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTCODEC_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
