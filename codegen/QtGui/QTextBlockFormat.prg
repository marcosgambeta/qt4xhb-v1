$header

#include "hbclass.ch"

CLASS QTextBlockFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD bottomMargin
   METHOD indent
   METHOD isValid
   METHOD leftMargin
   METHOD lineHeight1
   METHOD lineHeight2
   METHOD lineHeight
   METHOD lineHeightType
   METHOD nonBreakableLines
   METHOD pageBreakPolicy
   METHOD rightMargin
   METHOD setAlignment
   METHOD setBottomMargin
   METHOD setIndent
   METHOD setLeftMargin
   METHOD setLineHeight
   METHOD setNonBreakableLines
   METHOD setPageBreakPolicy
   METHOD setRightMargin
   METHOD setTextIndent
   METHOD setTopMargin
   METHOD textIndent
   METHOD topMargin

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextBlockFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextBlockFormat ()
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NEW )
{
  QTextBlockFormat * o = new QTextBlockFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_ALIGNMENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
qreal bottomMargin () const
*/
$method=|qreal|bottomMargin|

/*
int indent () const
*/
$method=|int|indent|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qreal leftMargin () const
*/
$method=|qreal|leftMargin|

/*
qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
*/
$method=|qreal|lineHeight,lineHeight1|qreal,qreal

/*
qreal lineHeight () const
*/
$method=|qreal|lineHeight,lineHeight2|

//[1]qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
//[2]qreal lineHeight () const

HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTBLOCKFORMAT_LINEHEIGHT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTBLOCKFORMAT_LINEHEIGHT2 );
  }
}

/*
int lineHeightType () const
*/
$method=|int|lineHeightType|

/*
bool nonBreakableLines () const
*/
$method=|bool|nonBreakableLines|

/*
PageBreakFlags pageBreakPolicy () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_PAGEBREAKPOLICY )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pageBreakPolicy () );
  }
}

/*
qreal rightMargin () const
*/
$method=|qreal|rightMargin|

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETALIGNMENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBottomMargin ( qreal margin )
*/
$method=|void|setBottomMargin|qreal

/*
void setIndent ( int indentation )
*/
$method=|void|setIndent|int

/*
void setLeftMargin ( qreal margin )
*/
$method=|void|setLeftMargin|qreal

/*
void setLineHeight ( qreal height, int heightType )
*/
$method=|void|setLineHeight|qreal,int

/*
void setNonBreakableLines ( bool b )
*/
$method=|void|setNonBreakableLines|bool

/*
void setPageBreakPolicy ( PageBreakFlags policy )
*/
$method=|void|setPageBreakPolicy|QTextFormat::PageBreakFlags

/*
void setRightMargin ( qreal margin )
*/
$method=|void|setRightMargin|qreal

/*
void setTextIndent ( qreal indent )
*/
$method=|void|setTextIndent|qreal

/*
void setTopMargin ( qreal margin )
*/
$method=|void|setTopMargin|qreal

/*
qreal textIndent () const
*/
$method=|qreal|textIndent|

/*
qreal topMargin () const
*/
$method=|qreal|topMargin|

#pragma ENDDUMP
