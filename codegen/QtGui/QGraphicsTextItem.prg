%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QFont>
#include <QtGui/QTextCursor>
#include <QtGui/QTextDocument>

$prototype=QGraphicsTextItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

/*
[1]QGraphicsTextItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsTextItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void adjustSize()

$prototypeV2=QColor defaultTextColor() const

$prototypeV2=QTextDocument * document() const

$prototypeV2=QFont font() const

$prototypeV2=bool openExternalLinks() const

$prototypeV2=void setDefaultTextColor( const QColor & col )

$prototypeV2=void setDocument( QTextDocument * document )

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=void setHtml( const QString & text )

$prototypeV2=void setOpenExternalLinks( bool open )

$prototypeV2=void setPlainText( const QString & text )

$prototypeV2=void setTabChangesFocus( bool b )

$prototypeV2=void setTextCursor( const QTextCursor & cursor )

$prototypeV2=void setTextInteractionFlags( Qt::TextInteractionFlags flags )

$prototypeV2=void setTextWidth( qreal width )

$prototypeV2=bool tabChangesFocus() const

$prototypeV2=QTextCursor textCursor() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=qreal textWidth() const

$prototypeV2=QString toHtml() const

$prototypeV2=QString toPlainText() const

$prototypeV2=virtual QRectF boundingRect() const

$prototypeV2=virtual bool contains( const QPointF & point ) const

$prototypeV2=virtual bool isObscuredBy( const QGraphicsItem * item ) const

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

$beginSignals
$signal=|linkActivated(QString)
$signal=|linkHovered(QString)
$endSignals

#pragma ENDDUMP
