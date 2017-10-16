$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD blurRadius
   METHOD color
   METHOD offset
   METHOD xOffset
   METHOD yOffset
   METHOD boundingRectFor
   METHOD setBlurRadius
   METHOD setColor
   METHOD setOffset1
   METHOD setOffset2
   METHOD setOffset3
   METHOD setOffset
   METHOD setXOffset
   METHOD setYOffset

   METHOD onBlurRadiusChanged
   METHOD onColorChanged
   METHOD onOffsetChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsDropShadowEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsDropShadowEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_NEW )
{
  QGraphicsDropShadowEffect * o = new QGraphicsDropShadowEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal blurRadius () const
*/
$method=|qreal|blurRadius|

/*
QColor color () const
*/
$method=|QColor|color|

/*
QPointF offset () const
*/
$method=|QPointF|offset|

/*
qreal xOffset () const
*/
$method=|qreal|xOffset|

/*
qreal yOffset () const
*/
$method=|qreal|yOffset|

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

/*
void setBlurRadius ( qreal blurRadius )
*/
$method=|void|setBlurRadius|qreal

/*
void setColor ( const QColor & color )
*/
$method=|void|setColor|const QColor &

/*
void setOffset ( const QPointF & ofs )
*/
$method=|void|setOffset,setOffset1|const QPointF &

/*
void setOffset ( qreal dx, qreal dy )
*/
$method=|void|setOffset,setOffset2|qreal,qreal

/*
void setOffset ( qreal d )
*/
$method=|void|setOffset,setOffset3|qreal

//[1]void setOffset ( const QPointF & ofs )
//[2]void setOffset ( qreal dx, qreal dy )
//[3]void setOffset ( qreal d )

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET3 );
  }
}

/*
void setXOffset ( qreal dx )
*/
$method=|void|setXOffset|qreal

/*
void setYOffset ( qreal dy )
*/
$method=|void|setYOffset|qreal

#pragma ENDDUMP
