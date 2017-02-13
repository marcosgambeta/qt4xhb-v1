/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextBlockFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextBlockFormat
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextBlockFormat>

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

/*
QTextBlockFormat ()
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NEW )
{
  QTextBlockFormat * o = NULL;
  o = new QTextBlockFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBlockFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    int i = obj->alignment (  );
    hb_retni( i );
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
    qreal r = obj->bottomMargin (  );
    hb_retnd( r );
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
    int i = obj->indent (  );
    hb_retni( i );
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
    bool b = obj->isValid (  );
    hb_retl( b );
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
    qreal r = obj->leftMargin (  );
    hb_retnd( r );
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
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal r = obj->lineHeight ( par1, par2 );
    hb_retnd( r );
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
    qreal r = obj->lineHeight (  );
    hb_retnd( r );
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
    int i = obj->lineHeightType (  );
    hb_retni( i );
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
    bool b = obj->nonBreakableLines (  );
    hb_retl( b );
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
    int i = obj->pageBreakPolicy (  );
    hb_retni( i );
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
    qreal r = obj->rightMargin (  );
    hb_retnd( r );
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
    obj->setAlignment (  (Qt::Alignment) par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setBottomMargin ( par1 );
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
    int par1 = hb_parni(1);
    obj->setIndent ( par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setLeftMargin ( par1 );
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
    qreal par1 = hb_parnd(1);
    int par2 = hb_parni(2);
    obj->setLineHeight ( par1, par2 );
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
    bool par1 = hb_parl(1);
    obj->setNonBreakableLines ( par1 );
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
    obj->setPageBreakPolicy (  (QTextFormat::PageBreakFlags) par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setRightMargin ( par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setTextIndent ( par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setTopMargin ( par1 );
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
    qreal r = obj->textIndent (  );
    hb_retnd( r );
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
    qreal r = obj->topMargin (  );
    hb_retnd( r );
  }
}




#pragma ENDDUMP
