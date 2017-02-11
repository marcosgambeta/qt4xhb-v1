/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QClipboard>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QImage>
#include <QMimeData>
#include <QPixmap>


/*
void clear ( Mode mode = Clipboard )
*/
HB_FUNC( QCLIPBOARD_CLEAR )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    obj->clear (  (QClipboard::Mode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QImage image ( Mode mode = Clipboard ) const
*/
HB_FUNC( QCLIPBOARD_IMAGE )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QImage * ptr = new QImage( obj->image (  (QClipboard::Mode) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}


/*
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
HB_FUNC( QCLIPBOARD_MIMEDATA )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QMimeData * ptr = obj->mimeData (  (QClipboard::Mode) par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );  }
}


/*
bool ownsClipboard () const
*/
HB_FUNC( QCLIPBOARD_OWNSCLIPBOARD )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->ownsClipboard (  );
    hb_retl( b );
  }
}


/*
bool ownsFindBuffer () const
*/
HB_FUNC( QCLIPBOARD_OWNSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->ownsFindBuffer (  );
    hb_retl( b );
  }
}


/*
bool ownsSelection () const
*/
HB_FUNC( QCLIPBOARD_OWNSSELECTION )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->ownsSelection (  );
    hb_retl( b );
  }
}


/*
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
HB_FUNC( QCLIPBOARD_PIXMAP )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap (  (QClipboard::Mode) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
HB_FUNC( QCLIPBOARD_SETIMAGE )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setImage ( *par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
HB_FUNC( QCLIPBOARD_SETMIMEDATA )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setMimeData ( par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
HB_FUNC( QCLIPBOARD_SETPIXMAP )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setPixmap ( *par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
HB_FUNC( QCLIPBOARD_SETTEXT )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    obj->setText ( par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool supportsFindBuffer () const
*/
HB_FUNC( QCLIPBOARD_SUPPORTSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->supportsFindBuffer (  );
    hb_retl( b );
  }
}


/*
bool supportsSelection () const
*/
HB_FUNC( QCLIPBOARD_SUPPORTSSELECTION )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->supportsSelection (  );
    hb_retl( b );
  }
}


/*
QString text ( Mode mode = Clipboard ) const
*/
HB_FUNC( QCLIPBOARD_TEXT1 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->text (  (QClipboard::Mode) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
HB_FUNC( QCLIPBOARD_TEXT2 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    QString str1 = obj->text ( par1,  (QClipboard::Mode) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC( QCLIPBOARD_TEXT )
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



