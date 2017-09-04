$header

#include "hbclass.ch"


CLASS QTextDecoder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD toUnicode1
   METHOD toUnicode2
   METHOD toUnicode3
   METHOD toUnicode
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDecoder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextDecoder>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextDecoder(const QTextCodec * codec)
*/
HB_FUNC_STATIC( QTEXTDECODER_NEW1 )
{
  const QTextCodec * par1 = (const QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTextDecoder * o = new QTextDecoder ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)
*/
HB_FUNC_STATIC( QTEXTDECODER_NEW2 )
{
  const QTextCodec * par1 = (const QTextCodec *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  QTextDecoder * o = new QTextDecoder ( par1, (QTextCodec::ConversionFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QTextDecoder(const QTextCodec * codec)
//[2]QTextDecoder(const QTextCodec * codec, QTextCodec::ConversionFlags flags)

HB_FUNC_STATIC( QTEXTDECODER_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    HB_FUNC_EXEC( QTEXTDECODER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQTEXTCODEC(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTDECODER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDECODER_DELETE )
{
  QTextDecoder * obj = (QTextDecoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString toUnicode(const char * chars, int len)
*/
HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE1 )
{
  QTextDecoder * obj = (QTextDecoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toUnicode ( (const char *) hb_parc(1), PINT(2) ) );
  }
}


/*
void toUnicode(QString * target, const char * chars, int len)
*/
HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE2 )
{
  QTextDecoder * obj = (QTextDecoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString * par1 = NULL;
    int par3 = hb_parni(3);
    obj->toUnicode ( par1, (const char *) hb_parc(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toUnicode(const QByteArray & ba)
*/
HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE3 )
{
  QTextDecoder * obj = (QTextDecoder *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toUnicode ( *PQBYTEARRAY(1) ) );
  }
}


//[1]QString toUnicode(const char * chars, int len)
//[2]void toUnicode(QString * target, const char * chars, int len)
//[3]QString toUnicode(const QByteArray & ba)

HB_FUNC_STATIC( QTEXTDECODER_TOUNICODE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTDECODER_TOUNICODE1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTDECODER_TOUNICODE2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTDECODER_TOUNICODE3 );
  }
}

$extraMethods

#pragma ENDDUMP
