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

$prototype=QTextDocumentWriter ()
$internalConstructor=|new1|

$prototype=QTextDocumentWriter ( QIODevice * device, const QByteArray & format )
$internalConstructor=|new2|QIODevice *,const QByteArray &

$prototype=QTextDocumentWriter ( const QString & fileName, const QByteArray & format = QByteArray() )
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

//[1]QTextDocumentWriter ()
//[2]QTextDocumentWriter ( QIODevice * device, const QByteArray & format )
//[3]QTextDocumentWriter ( const QString & fileName, const QByteArray & format = QByteArray() )

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextDocumentWriter_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    QTextDocumentWriter_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    QTextDocumentWriter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QTextCodec * codec () const
$method=|QTextCodec *|codec|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototype=void setCodec ( QTextCodec * codec )
$method=|void|setCodec|QTextCodec *

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=bool write ( const QTextDocument * document )
$internalMethod=|bool|write,write1|const QTextDocument *

$prototype=bool write ( const QTextDocumentFragment & fragment )
$internalMethod=|bool|write,write2|const QTextDocumentFragment &

//[1]bool write ( const QTextDocument * document )
//[2]bool write ( const QTextDocumentFragment & fragment )

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextDocumentWriter_write1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    QTextDocumentWriter_write2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QByteArray> supportedDocumentFormats ()
HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_SUPPORTEDDOCUMENTFORMATS )
{
  QList<QByteArray> list = QTextDocumentWriter::supportedDocumentFormats ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
