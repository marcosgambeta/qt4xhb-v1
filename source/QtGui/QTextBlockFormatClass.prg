/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QTextBlockFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QTEXTBLOCKFORMAT_DELETE )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_BOTTOMMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->bottomMargin () );
  }
}

/*
int indent () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_INDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indent () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_ISVALID )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
qreal leftMargin () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LEFTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->leftMargin () );
  }
}

/*
qreal lineHeight ( qreal scriptLineHeight, qreal scaling ) const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT1 )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->lineHeight ( PQREAL(1), PQREAL(2) ) );
  }
}

/*
qreal lineHeight () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT2 )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->lineHeight () );
  }
}

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
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHTTYPE )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineHeightType () );
  }
}

/*
bool nonBreakableLines () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NONBREAKABLELINES )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->nonBreakableLines () );
  }
}

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
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_RIGHTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->rightMargin () );
  }
}

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
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETBOTTOMMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottomMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIndent ( int indentation )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIndent ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLeftMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETLEFTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeftMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineHeight ( qreal height, int heightType )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETLINEHEIGHT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setLineHeight ( PQREAL(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNonBreakableLines ( bool b )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETNONBREAKABLELINES )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNonBreakableLines ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPageBreakPolicy ( PageBreakFlags policy )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETPAGEBREAKPOLICY )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageBreakPolicy ( (QTextFormat::PageBreakFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRightMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETRIGHTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRightMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextIndent ( qreal indent )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETTEXTINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextIndent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTopMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETTOPMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTopMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal textIndent () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_TEXTINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->textIndent () );
  }
}

/*
qreal topMargin () const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_TOPMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->topMargin () );
  }
}

#pragma ENDDUMP
