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

$beginClassFrom=QGraphicsObject,QGraphicsLayoutItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QStyle>

$prototype=QGraphicsWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
$constructor=|new|QGraphicsItem *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=QList<QAction *> actions() const

$prototypeV2=void addAction( QAction * action )

$prototypeV2=void addActions( QList<QAction *> actions )

$prototypeV2=void adjustSize()

$prototypeV2=bool autoFillBackground() const

$prototypeV2=Qt::FocusPolicy focusPolicy() const

$prototypeV2=QGraphicsWidget * focusWidget() const

$prototypeV2=QFont font() const

$prototypeV2=void getWindowFrameMargins( qreal * left, qreal * top, qreal * right, qreal * bottom ) const

$prototypeV2=int grabShortcut( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )

$prototypeV2=void insertAction( QAction * before, QAction * action )

$prototypeV2=void insertActions( QAction * before, QList<QAction *> actions )

$prototypeV2=bool isActiveWindow() const

$prototypeV2=QGraphicsLayout * layout() const

$prototypeV2=Qt::LayoutDirection layoutDirection() const

$prototypeV2=virtual void paintWindowFrame( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )

$prototypeV2=QPalette palette() const

$prototypeV2=QRectF rect() const

$prototypeV2=void releaseShortcut( int id )

$prototypeV2=void removeAction( QAction * action )

$prototype=void resize ( const QSizeF & size )
$internalMethod=|void|resize,resize1|const QSizeF &

$prototype=void resize ( qreal w, qreal h )
$internalMethod=|void|resize,resize2|qreal,qreal

/*
[1]void resize ( const QSizeF & size )
[2]void resize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototypeV2=void setAttribute( Qt::WidgetAttribute attribute, bool on = true )

$prototypeV2=void setAutoFillBackground( bool enabled )

$prototypeV2=void setContentsMargins( qreal left, qreal top, qreal right, qreal bottom )

$prototypeV2=void setFocusPolicy( Qt::FocusPolicy policy )

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=void setLayout( QGraphicsLayout * layout )

$prototypeV2=void setLayoutDirection( Qt::LayoutDirection direction )

$prototypeV2=void setPalette( const QPalette & palette )

$prototypeV2=void setShortcutAutoRepeat( int id, bool enabled = true )

$prototypeV2=void setShortcutEnabled( int id, bool enabled = true )

$prototypeV2=void setStyle( QStyle * style )

$prototypeV2=void setWindowFlags( Qt::WindowFlags wFlags )

$prototypeV2=void setWindowFrameMargins( qreal left, qreal top, qreal right, qreal bottom )

$prototypeV2=void setWindowTitle( const QString & title )

$prototypeV2=QSizeF size() const

$prototypeV2=QStyle * style() const

$prototypeV2=bool testAttribute( Qt::WidgetAttribute attribute ) const

$prototypeV2=void unsetLayoutDirection()

$prototypeV2=void unsetWindowFrameMargins()

$prototypeV2=Qt::WindowFlags windowFlags() const

$prototypeV2=QRectF windowFrameGeometry() const

$prototypeV2=QRectF windowFrameRect() const

$prototypeV2=QString windowTitle() const

$prototypeV2=Qt::WindowType windowType() const

$prototypeV2=virtual QRectF boundingRect() const

$prototypeV2=virtual void getContentsMargins( qreal * left, qreal * top, qreal * right, qreal * bottom ) const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )

$prototype=void setGeometry ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setGeometry,setGeometry1|qreal,qreal,qreal,qreal

$prototype=virtual void setGeometry ( const QRectF & rect )
$internalVirtualMethod=|void|setGeometry,setGeometry2|const QRectF &

/*
[1]void setGeometry ( qreal x, qreal y, qreal w, qreal h )
[2]virtual void setGeometry ( const QRectF & rect )
*/

HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsWidget_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setGeometry

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

$prototypeV2=bool close()

$prototypeV2=static void setTabOrder( QGraphicsWidget * first, QGraphicsWidget * second )

$beginSignals
$signal=|geometryChanged()
$endSignals

#pragma ENDDUMP
