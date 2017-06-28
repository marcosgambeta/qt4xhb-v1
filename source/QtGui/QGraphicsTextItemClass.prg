/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QTEXTDOCUMENT
REQUEST QFONT
REQUEST QTEXTCURSOR
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsTextItem INHERIT QGraphicsObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD adjustSize
   METHOD defaultTextColor
   METHOD document
   METHOD font
   METHOD openExternalLinks
   METHOD setDefaultTextColor
   METHOD setDocument
   METHOD setFont
   METHOD setHtml
   METHOD setOpenExternalLinks
   METHOD setPlainText
   METHOD setTabChangesFocus
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setTextWidth
   METHOD tabChangesFocus
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD textWidth
   METHOD toHtml
   METHOD toPlainText
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   METHOD onLinkActivated
   METHOD onLinkHovered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsTextItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsTextItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QFont>
#include <QTextCursor>

/*
QGraphicsTextItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW1 )
{
  QGraphicsTextItem * o = new QGraphicsTextItem ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW2 )
{
  QGraphicsTextItem * o = new QGraphicsTextItem ( PQSTRING(1), OPQGRAPHICSITEM(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSTEXTITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSTEXTITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_DELETE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void adjustSize ()
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_ADJUSTSIZE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->adjustSize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor defaultTextColor () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_DEFAULTTEXTCOLOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->defaultTextColor () );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_DOCUMENT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_FONT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
bool openExternalLinks () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_OPENEXTERNALLINKS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->openExternalLinks () );
  }
}

/*
void setDefaultTextColor ( const QColor & col )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETDEFAULTTEXTCOLOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setDefaultTextColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocument ( QTextDocument * document )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETDOCUMENT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * par1 = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDocument ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETFONT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHtml ( const QString & text )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETHTML )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHtml ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpenExternalLinks ( bool open )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETOPENEXTERNALLINKS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpenExternalLinks ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETPLAINTEXT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPlainText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabChangesFocus ( bool b )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTABCHANGESFOCUS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTabChangesFocus ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTEXTCURSOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextCursor ( *PQTEXTCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTEXTINTERACTIONFLAGS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextInteractionFlags ( (Qt::TextInteractionFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTEXTWIDTH )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tabChangesFocus () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TABCHANGESFOCUS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->tabChangesFocus () );
  }
}

/*
QTextCursor textCursor () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TEXTCURSOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->textCursor () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TEXTINTERACTIONFLAGS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textInteractionFlags () );
  }
}

/*
qreal textWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TEXTWIDTH )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->textWidth () );
  }
}

/*
QString toHtml () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TOHTML )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toHtml () );
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TOPLAINTEXT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toPlainText () );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_BOUNDINGRECT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_CONTAINS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_ISOBSCUREDBY )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_OPAQUEAREA )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_PAINT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SHAPE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TYPE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP
