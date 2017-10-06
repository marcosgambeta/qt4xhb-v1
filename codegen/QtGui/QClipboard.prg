$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text1
   METHOD text2
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QClipboard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QImage>
#include <QMimeData>
#include <QPixmap>

/*
void clear ( Mode mode = Clipboard )
*/
$method=|void|clear|QClipboard::Mode=QClipboard::Clipboard

/*
QImage image ( Mode mode = Clipboard ) const
*/
$method=|QImage|image|QClipboard::Mode=QClipboard::Clipboard

/*
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
$method=|const QMimeData *|mimeData|QClipboard::Mode=QClipboard::Clipboard

/*
bool ownsClipboard () const
*/
$method=|bool|ownsClipboard|

/*
bool ownsFindBuffer () const
*/
$method=|bool|ownsFindBuffer|

/*
bool ownsSelection () const
*/
$method=|bool|ownsSelection|

/*
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
$method=|QPixmap|pixmap|QClipboard::Mode=QClipboard::Clipboard

/*
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
$method=|void|setImage|const QImage &,QClipboard::Mode=QClipboard::Clipboard

/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
$method=|void|setMimeData|QMimeData *,QClipboard::Mode=QClipboard::Clipboard

/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
$method=|void|setPixmap|const QPixmap &,QClipboard::Mode=QClipboard::Clipboard

/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
$method=|void|setText|const QString &,QClipboard::Mode=QClipboard::Clipboard

/*
bool supportsFindBuffer () const
*/
$method=|bool|supportsFindBuffer|

/*
bool supportsSelection () const
*/
$method=|bool|supportsSelection|

/*
QString text ( Mode mode = Clipboard ) const
*/
$method=|QString|text,text1|QClipboard::Mode=QClipboard::Clipboard

/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_TEXT2 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    RQSTRING( obj->text ( par1, (QClipboard::Mode) hb_parni(2) ) );
  }
}

//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
}

#pragma ENDDUMP
