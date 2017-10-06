$header

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

$destructor

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

$deleteMethod

/*
qreal border () const
*/
$method=|qreal|border|

/*
QBrush borderBrush () const
*/
$method=|QBrush|borderBrush|

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
$method=|qreal|bottomMargin|

/*
QTextLength height () const
*/
$method=|QTextLength|height|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qreal leftMargin () const
*/
$method=|qreal|leftMargin|

/*
qreal margin () const
*/
$method=|qreal|margin|

/*
qreal padding () const
*/
$method=|qreal|padding|

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
$method=|qreal|rightMargin|

/*
void setBorder ( qreal width )
*/
$method=|void|setBorder|qreal

/*
void setBorderBrush ( const QBrush & brush )
*/
$method=|void|setBorderBrush|const QBrush &

/*
void setBorderStyle ( BorderStyle style )
*/
$method=|void|setBorderStyle|QTextFrameFormat::BorderStyle

/*
void setBottomMargin ( qreal margin )
*/
$method=|void|setBottomMargin|qreal

/*
void setHeight ( const QTextLength & height )
*/
$method=|void|setHeight,setHeight1|const QTextLength &

/*
void setHeight ( qreal height )
*/
$method=|void|setHeight,setHeight2|qreal

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
$method=|void|setLeftMargin|qreal

/*
void setMargin ( qreal margin )
*/
$method=|void|setMargin|qreal

/*
void setPadding ( qreal width )
*/
$method=|void|setPadding|qreal

/*
void setPageBreakPolicy ( PageBreakFlags policy )
*/
$method=|void|setPageBreakPolicy|QTextFormat::PageBreakFlags

/*
void setPosition ( Position policy )
*/
$method=|void|setPosition|QTextFrameFormat::Position

/*
void setRightMargin ( qreal margin )
*/
$method=|void|setRightMargin|qreal

/*
void setTopMargin ( qreal margin )
*/
$method=|void|setTopMargin|qreal

/*
void setWidth ( const QTextLength & width )
*/
$method=|void|setWidth,setWidth1|const QTextLength &

/*
void setWidth ( qreal width )
*/
$method=|void|setWidth,setWidth2|qreal

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
$method=|qreal|topMargin|

/*
QTextLength width () const
*/
$method=|QTextLength|width|

#pragma ENDDUMP
