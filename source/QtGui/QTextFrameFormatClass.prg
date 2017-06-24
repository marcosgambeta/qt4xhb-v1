/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

CLASS QTextFrameFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD border
   METHOD borderBrush
   METHOD borderStyle
   METHOD bottomMargin
   METHOD height
   METHOD isValid
   METHOD leftMargin
   METHOD margin
   METHOD padding
   METHOD pageBreakPolicy
   METHOD position
   METHOD rightMargin
   METHOD setBorder
   METHOD setBorderBrush
   METHOD setBorderStyle
   METHOD setBottomMargin
   METHOD setHeight1
   METHOD setHeight2
   METHOD setHeight
   METHOD setLeftMargin
   METHOD setMargin
   METHOD setPadding
   METHOD setPageBreakPolicy
   METHOD setPosition
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setWidth1
   METHOD setWidth2
   METHOD setWidth
   METHOD topMargin
   METHOD width
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextFrameFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextFrameFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextFrameFormat ()
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_NEW )
{
  QTextFrameFormat * o = new QTextFrameFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QTEXTFRAMEFORMAT_DELETE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal border () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->border () );
  }
}


/*
QBrush borderBrush () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->borderBrush () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
BorderStyle borderStyle () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->borderStyle () );
  }
}


/*
qreal bottomMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->bottomMargin () );
  }
}


/*
QTextLength height () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_HEIGHT )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->height () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_ISVALID )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
qreal leftMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_LEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->leftMargin () );
  }
}


/*
qreal margin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_MARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->margin () );
  }
}


/*
qreal padding () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->padding () );
  }
}


/*
PageBreakFlags pageBreakPolicy () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pageBreakPolicy () );
  }
}


/*
Position position () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_POSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->position () );
  }
}


/*
qreal rightMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_RIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rightMargin () );
  }
}


/*
void setBorder ( qreal width )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBorder ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBorderBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBorderBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBorderStyle ( BorderStyle style )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBorderStyle ( (QTextFrameFormat::BorderStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBottomMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottomMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight ( const QTextLength & height )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT1 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeight ( *PQTEXTLENGTH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight ( qreal height )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT2 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setHeight ( const QTextLength & height )
//[2]void setHeight ( qreal height )

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT )
{
  if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAMEFORMAT_SETHEIGHT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAMEFORMAT_SETHEIGHT2 );
  }
}

/*
void setLeftMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETLEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeftMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPadding ( qreal width )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageBreakPolicy ( PageBreakFlags policy )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageBreakPolicy ( (QTextFormat::PageBreakFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosition ( Position policy )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPOSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPosition ( (QTextFrameFormat::Position) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRightMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETRIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRightMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTopMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETTOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTopMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( const QTextLength & width )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH1 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( *PQTEXTLENGTH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH2 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setWidth ( const QTextLength & width )
//[2]void setWidth ( qreal width )

HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH )
{
  if( ISNUMPAR(1) && ISQTEXTLENGTH(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAMEFORMAT_SETWIDTH1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAMEFORMAT_SETWIDTH2 );
  }
}

/*
qreal topMargin () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_TOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->topMargin () );
  }
}


/*
QTextLength width () const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_WIDTH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->width () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}




#pragma ENDDUMP
