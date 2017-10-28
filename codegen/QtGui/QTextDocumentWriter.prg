$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QTextDocumentWriter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD codec
   METHOD device
   METHOD fileName
   METHOD format
   METHOD setCodec
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD write1
   METHOD write2
   METHOD write
   METHOD supportedDocumentFormats

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextDocumentWriter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QList>

/*
QTextDocumentWriter ()
*/
$constructor=|new1|

/*
QTextDocumentWriter ( QIODevice * device, const QByteArray & format )
*/
$constructor=|new2|QIODevice *,const QByteArray &

/*
QTextDocumentWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
*/
$constructor=|new3|const QString &,const QByteArray &=QByteArray()

//[1]QTextDocumentWriter ()
//[2]QTextDocumentWriter ( QIODevice * device, const QByteArray & format )
//[3]QTextDocumentWriter ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QTextCodec * codec () const
*/
$method=|QTextCodec *|codec|

/*
QIODevice * device () const
*/
$method=|QIODevice *|device|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QByteArray format () const
*/
$method=|QByteArray|format|

/*
void setCodec ( QTextCodec * codec )
*/
$method=|void|setCodec|QTextCodec *

/*
void setDevice ( QIODevice * device )
*/
$method=|void|setDevice|QIODevice *

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setFormat ( const QByteArray & format )
*/
$method=|void|setFormat|const QByteArray &

/*
bool write ( const QTextDocument * document )
*/
$method=|bool|write,write1|const QTextDocument *

/*
bool write ( const QTextDocumentFragment & fragment )
*/
$method=|bool|write,write2|const QTextDocumentFragment &

//[1]bool write ( const QTextDocument * document )
//[2]bool write ( const QTextDocumentFragment & fragment )

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTWRITER_WRITE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QByteArray> supportedDocumentFormats ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SUPPORTEDDOCUMENTFORMATS )
{
  QList<QByteArray> list = QTextDocumentWriter::supportedDocumentFormats ();
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

$extraMethods

#pragma ENDDUMP
