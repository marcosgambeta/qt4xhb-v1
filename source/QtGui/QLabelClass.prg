/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QMOVIE
REQUEST QPICTURE
REQUEST QPIXMAP
REQUEST QSIZE

CLASS QLabel INHERIT QFrame

   DATA class_id INIT Class_Id_QLabel
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD buddy
   METHOD hasScaledContents
   METHOD hasSelectedText
   METHOD indent
   METHOD margin
   METHOD movie
   METHOD openExternalLinks
   METHOD picture
   METHOD pixmap
   METHOD selectedText
   METHOD setAlignment
   METHOD setBuddy
   METHOD setIndent
   METHOD setMargin
   METHOD setOpenExternalLinks
   METHOD setScaledContents
   METHOD setSelection
   METHOD setTextFormat
   METHOD setTextInteractionFlags
   METHOD setWordWrap
   METHOD text
   METHOD textFormat
   METHOD textInteractionFlags
   METHOD wordWrap
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD setMovie
   METHOD setNum1
   METHOD setNum2
   METHOD setNum
   METHOD setPicture
   METHOD setPixmap
   METHOD setText
   METHOD onLinkActivated
   METHOD onLinkHovered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLabel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLabel>

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
QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QLABEL_NEW1 )
{
  QLabel * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QLabel ( par1,  (Qt::WindowFlags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLabel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QLABEL_NEW2 )
{
  QLabel * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  o = new QLabel ( par1, par2,  (Qt::WindowFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLabel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLABEL_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLABEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLABEL_DELETE )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QLABEL_ALIGNMENT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->alignment (  );
    hb_retni( i );
  }
}


/*
QWidget * buddy () const
*/
HB_FUNC_STATIC( QLABEL_BUDDY )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->buddy (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
bool hasScaledContents () const
*/
HB_FUNC_STATIC( QLABEL_HASSCALEDCONTENTS )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasScaledContents (  );
    hb_retl( b );
  }
}


/*
bool hasSelectedText () const
*/
HB_FUNC_STATIC( QLABEL_HASSELECTEDTEXT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasSelectedText (  );
    hb_retl( b );
  }
}


/*
int indent () const
*/
HB_FUNC_STATIC( QLABEL_INDENT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->indent (  );
    hb_retni( i );
  }
}


/*
int margin () const
*/
HB_FUNC_STATIC( QLABEL_MARGIN )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->margin (  );
    hb_retni( i );
  }
}


/*
QMovie * movie () const
*/
HB_FUNC_STATIC( QLABEL_MOVIE )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMovie * ptr = obj->movie (  );
    _qt4xhb_createReturnClass ( ptr, "QMOVIE" );  }
}


/*
bool openExternalLinks () const
*/
HB_FUNC_STATIC( QLABEL_OPENEXTERNALLINKS )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->openExternalLinks (  );
    hb_retl( b );
  }
}


/*
const QPicture * picture () const
*/
HB_FUNC_STATIC( QLABEL_PICTURE )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPicture * ptr = obj->picture (  );
    _qt4xhb_createReturnClass ( ptr, "QPICTURE" );  }
}


/*
const QPixmap * pixmap () const
*/
HB_FUNC_STATIC( QLABEL_PIXMAP )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPixmap * ptr = obj->pixmap (  );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP" );  }
}


/*
QString selectedText () const
*/
HB_FUNC_STATIC( QLABEL_SELECTEDTEXT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->selectedText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setAlignment ( Qt::Alignment )
*/
HB_FUNC_STATIC( QLABEL_SETALIGNMENT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBuddy ( QWidget * buddy )
*/
HB_FUNC_STATIC( QLABEL_SETBUDDY )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBuddy ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndent ( int )
*/
HB_FUNC_STATIC( QLABEL_SETINDENT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIndent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMargin ( int )
*/
HB_FUNC_STATIC( QLABEL_SETMARGIN )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMargin ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpenExternalLinks ( bool open )
*/
HB_FUNC_STATIC( QLABEL_SETOPENEXTERNALLINKS )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setOpenExternalLinks ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScaledContents ( bool )
*/
HB_FUNC_STATIC( QLABEL_SETSCALEDCONTENTS )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setScaledContents ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelection ( int start, int length )
*/
HB_FUNC_STATIC( QLABEL_SETSELECTION )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setSelection ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextFormat ( Qt::TextFormat )
*/
HB_FUNC_STATIC( QLABEL_SETTEXTFORMAT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextFormat (  (Qt::TextFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QLABEL_SETTEXTINTERACTIONFLAGS )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextInteractionFlags (  (Qt::TextInteractionFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QLABEL_SETWORDWRAP )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setWordWrap ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QLABEL_TEXT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Qt::TextFormat textFormat () const
*/
HB_FUNC_STATIC( QLABEL_TEXTFORMAT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textFormat (  );
    hb_retni( i );
  }
}


/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC_STATIC( QLABEL_TEXTINTERACTIONFLAGS )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textInteractionFlags (  );
    hb_retni( i );
  }
}


/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QLABEL_WORDWRAP )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->wordWrap (  );
    hb_retl( b );
  }
}


/*
virtual int heightForWidth ( int w ) const
*/
HB_FUNC_STATIC( QLABEL_HEIGHTFORWIDTH )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->heightForWidth ( par1 );
    hb_retni( i );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QLABEL_MINIMUMSIZEHINT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QLABEL_SIZEHINT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QLABEL_CLEAR )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMovie ( QMovie * movie )
*/
HB_FUNC_STATIC( QLABEL_SETMOVIE )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMovie * par1 = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMovie ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNum ( int num )
*/
HB_FUNC_STATIC( QLABEL_SETNUM1 )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNum ( double num )
*/
HB_FUNC_STATIC( QLABEL_SETNUM2 )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setNum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setNum ( int num )
//[2]void setNum ( double num )

// TODO: reconhecer se é int ou double
HB_FUNC_STATIC( QLABEL_SETNUM )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLABEL_SETNUM2 );
  }
}

/*
void setPicture ( const QPicture & picture )
*/
HB_FUNC_STATIC( QLABEL_SETPICTURE )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPicture * par1 = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPicture ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( const QPixmap & )
*/
HB_FUNC_STATIC( QLABEL_SETPIXMAP )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & )
*/
HB_FUNC_STATIC( QLABEL_SETTEXT )
{
  QLabel * obj = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
