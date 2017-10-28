$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QRECTF
REQUEST QRECT
REQUEST QPOINT
REQUEST QPAINTERPATH
REQUEST QREGION
REQUEST QTRANSFORM
REQUEST QPAINTDEVICE
REQUEST QFONT
REQUEST QFONTINFO
REQUEST QFONTMETRICS
REQUEST QPAINTENGINE
REQUEST QPEN
#endif

CLASS QPainter

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD background
   METHOD backgroundMode
   METHOD begin
   METHOD beginNativePainting
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect4
   METHOD boundingRect
   METHOD brush
   METHOD brushOrigin
   METHOD clipPath
   METHOD clipRegion
   METHOD combinedTransform
   METHOD compositionMode
   METHOD device
   METHOD deviceTransform
   METHOD drawArc1
   METHOD drawArc2
   METHOD drawArc3
   METHOD drawArc
   METHOD drawChord1
   METHOD drawChord2
   METHOD drawChord3
   METHOD drawChord
   METHOD drawConvexPolygon3
   METHOD drawConvexPolygon4
   METHOD drawConvexPolygon
   METHOD drawEllipse1
   METHOD drawEllipse2
   METHOD drawEllipse3
   METHOD drawEllipse4
   METHOD drawEllipse5
   METHOD drawEllipse
   METHOD drawImage1
   METHOD drawImage2
   METHOD drawImage3
   METHOD drawImage4
   METHOD drawImage5
   METHOD drawImage6
   METHOD drawImage7
   METHOD drawImage8
   METHOD drawImage9
   METHOD drawImage
   METHOD drawLine1
   METHOD drawLine2
   METHOD drawLine3
   METHOD drawLine4
   METHOD drawLine5
   METHOD drawLine
   METHOD drawLines5
   METHOD drawLines6
   METHOD drawLines7
   METHOD drawLines8
   METHOD drawLines
   METHOD drawPath
   METHOD drawPicture1
   METHOD drawPicture2
   METHOD drawPicture3
   METHOD drawPicture
   METHOD drawPie1
   METHOD drawPie2
   METHOD drawPie3
   METHOD drawPie
   METHOD drawPixmap1
   METHOD drawPixmap2
   METHOD drawPixmap3
   METHOD drawPixmap4
   METHOD drawPixmap5
   METHOD drawPixmap6
   METHOD drawPixmap7
   METHOD drawPixmap8
   METHOD drawPixmap9
   METHOD drawPixmap10
   METHOD drawPixmap11
   METHOD drawPixmap
   METHOD drawPoint1
   METHOD drawPoint2
   METHOD drawPoint3
   METHOD drawPoint
   METHOD drawPoints3
   METHOD drawPoints4
   METHOD drawPoints
   METHOD drawPolygon3
   METHOD drawPolygon4
   METHOD drawPolygon
   METHOD drawPolyline3
   METHOD drawPolyline4
   METHOD drawPolyline
   METHOD drawRect1
   METHOD drawRect2
   METHOD drawRect3
   METHOD drawRect
   METHOD drawRects3
   METHOD drawRects4
   METHOD drawRects
   METHOD drawRoundedRect1
   METHOD drawRoundedRect2
   METHOD drawRoundedRect3
   METHOD drawRoundedRect
   METHOD drawStaticText1
   METHOD drawStaticText2
   METHOD drawStaticText3
   METHOD drawStaticText
   METHOD drawText1
   METHOD drawText2
   METHOD drawText3
   METHOD drawText4
   METHOD drawText5
   METHOD drawText6
   METHOD drawText7
   METHOD drawText
   METHOD drawTiledPixmap1
   METHOD drawTiledPixmap2
   METHOD drawTiledPixmap3
   METHOD drawTiledPixmap
   METHOD end
   METHOD endNativePainting
   METHOD eraseRect1
   METHOD eraseRect2
   METHOD eraseRect3
   METHOD eraseRect
   METHOD fillPath
   METHOD fillRect1
   METHOD fillRect2
   METHOD fillRect3
   METHOD fillRect4
   METHOD fillRect5
   METHOD fillRect6
   METHOD fillRect7
   METHOD fillRect8
   METHOD fillRect9
   METHOD fillRect10
   METHOD fillRect11
   METHOD fillRect12
   METHOD fillRect
   METHOD font
   METHOD fontInfo
   METHOD fontMetrics
   METHOD hasClipping
   METHOD initFrom
   METHOD isActive
   METHOD layoutDirection
   METHOD opacity
   METHOD paintEngine
   METHOD pen
   METHOD renderHints
   METHOD resetTransform
   METHOD restore
   METHOD rotate
   METHOD save
   METHOD scale
   METHOD setBackground
   METHOD setBackgroundMode
   METHOD setBrush1
   METHOD setBrush2
   METHOD setBrush
   METHOD setBrushOrigin1
   METHOD setBrushOrigin2
   METHOD setBrushOrigin3
   METHOD setBrushOrigin
   METHOD setClipPath
   METHOD setClipRect1
   METHOD setClipRect2
   METHOD setClipRect3
   METHOD setClipRect
   METHOD setClipRegion
   METHOD setClipping
   METHOD setCompositionMode
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOpacity
   METHOD setPen1
   METHOD setPen2
   METHOD setPen3
   METHOD setPen
   METHOD setRenderHint
   METHOD setRenderHints
   METHOD setTransform
   METHOD setViewTransformEnabled
   METHOD setViewport1
   METHOD setViewport2
   METHOD setViewport
   METHOD setWindow1
   METHOD setWindow2
   METHOD setWindow
   METHOD setWorldMatrixEnabled
   METHOD setWorldTransform
   METHOD shear
   METHOD strokePath
   METHOD testRenderHint
   METHOD transform
   METHOD translate1
   METHOD translate2
   METHOD translate3
   METHOD translate
   METHOD viewTransformEnabled
   METHOD viewport
   METHOD window
   METHOD worldMatrixEnabled
   METHOD worldTransform

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPainter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPainter ()
*/
$constructor=|new1|

/*
QPainter ( QPaintDevice * device )
*/
$constructor=|new2|QPaintDevice *

//[1]QPainter ()
//[2]QPainter ( QPaintDevice * device )

HB_FUNC_STATIC( QPAINTER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAINTER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QBrush & background () const
*/
$method=|const QBrush &|background|

/*
Qt::BGMode backgroundMode () const
*/
$method=|Qt::BGMode|backgroundMode|

/*
bool begin ( QPaintDevice * device )
*/
$method=|bool|begin|QPaintDevice *

/*
void beginNativePainting ()
*/
$method=|void|beginNativePainting|

/*
QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
*/
$method=|QRectF|boundingRect,boundingRect1|const QRectF &,int,const QString &

/*
QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
*/
$method=|QRect|boundingRect,boundingRect2|const QRect &,int,const QString &

/*
QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
*/
$method=|QRect|boundingRect,boundingRect3|int,int,int,int,int,const QString &

/*
QRectF boundingRect ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
*/
$method=|QRectF|boundingRect,boundingRect4|const QRectF &,const QString &,const QTextOption &=QTextOption()

//[1]QRectF boundingRect ( const QRectF & rectangle, int flags, const QString & text )
//[2]QRect boundingRect ( const QRect & rectangle, int flags, const QString & text )
//[3]QRect boundingRect ( int x, int y, int w, int h, int flags, const QString & text )
//[4]QRectF boundingRect ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )

HB_FUNC_STATIC( QPAINTER_BOUNDINGRECT )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT3 );
  }
  else if( ISBETWEEN(2,3) && ISQRECTF(1) && ISCHAR(2) && (ISQTEXTOPTION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_BOUNDINGRECT4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QBrush & brush () const
*/
$method=|const QBrush &|brush|

/*
QPoint brushOrigin () const
*/
$method=|QPoint|brushOrigin|

/*
QPainterPath clipPath () const
*/
$method=|QPainterPath|clipPath|

/*
QRegion clipRegion () const
*/
$method=|QRegion|clipRegion|

/*
QTransform combinedTransform () const
*/
$method=|QTransform|combinedTransform|

/*
CompositionMode compositionMode () const
*/
$method=|QPainter::CompositionMode|compositionMode|

/*
QPaintDevice * device () const
*/
$method=|QPaintDevice *|device|

/*
const QTransform & deviceTransform () const
*/
$method=|const QTransform &|deviceTransform|

/*
void drawArc ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
$method=|void|drawArc,drawArc1|const QRectF &,int,int

/*
void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
*/
$method=|void|drawArc,drawArc2|const QRect &,int,int

/*
void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
$method=|void|drawArc,drawArc3|int,int,int,int,int,int

//[1]void drawArc ( const QRectF & rectangle, int startAngle, int spanAngle )
//[2]void drawArc ( const QRect & rectangle, int startAngle, int spanAngle )
//[3]void drawArc ( int x, int y, int width, int height, int startAngle, int spanAngle )

HB_FUNC_STATIC( QPAINTER_DRAWARC )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWARC1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWARC2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWARC3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawChord ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
$method=|void|drawChord,drawChord1|const QRectF &,int,int

/*
void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
*/
$method=|void|drawChord,drawChord2|const QRect &,int,int

/*
void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
$method=|void|drawChord,drawChord3|int,int,int,int,int,int

//[1]void drawChord ( const QRectF & rectangle, int startAngle, int spanAngle )
//[2]void drawChord ( const QRect & rectangle, int startAngle, int spanAngle )
//[3]void drawChord ( int x, int y, int width, int height, int startAngle, int spanAngle )

HB_FUNC_STATIC( QPAINTER_DRAWCHORD )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCHORD1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCHORD2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCHORD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawConvexPolygon ( const QPolygonF & polygon )
*/
$method=|void|drawConvexPolygon,drawConvexPolygon3|const QPolygonF &

/*
void drawConvexPolygon ( const QPolygon & polygon )
*/
$method=|void|drawConvexPolygon,drawConvexPolygon4|const QPolygon &

//[1]void drawConvexPolygon ( const QPointF * points, int pointCount )
//[2]void drawConvexPolygon ( const QPoint * points, int pointCount )
//[3]void drawConvexPolygon ( const QPolygonF & polygon )
//[4]void drawConvexPolygon ( const QPolygon & polygon )

HB_FUNC_STATIC( QPAINTER_DRAWCONVEXPOLYGON )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCONVEXPOLYGON3 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWCONVEXPOLYGON4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawEllipse ( const QRectF & rectangle )
*/
$method=|void|drawEllipse,drawEllipse1|const QRectF &

/*
void drawEllipse ( const QRect & rectangle )
*/
$method=|void|drawEllipse,drawEllipse2|const QRect &

/*
void drawEllipse ( int x, int y, int width, int height )
*/
$method=|void|drawEllipse,drawEllipse3|int,int,int,int

/*
void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
$method=|void|drawEllipse,drawEllipse4|const QPointF &,qreal,qreal

/*
void drawEllipse ( const QPoint & center, int rx, int ry )
*/
$method=|void|drawEllipse,drawEllipse5|const QPoint &,int,int

//[1]void drawEllipse ( const QRectF & rectangle )
//[2]void drawEllipse ( const QRect & rectangle )
//[3]void drawEllipse ( int x, int y, int width, int height )
//[4]void drawEllipse ( const QPointF & center, qreal rx, qreal ry )
//[5]void drawEllipse ( const QPoint & center, int rx, int ry )

HB_FUNC_STATIC( QPAINTER_DRAWELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE3 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE4 );
  }
  else if( ISNUMPAR(3) && ISQPOINT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWELLIPSE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawImage ( const QRectF & target, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|void|drawImage,drawImage1|const QRectF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|void|drawImage,drawImage2|const QRect &,const QImage &,const QRect &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QPointF & point, const QImage & image )
*/
$method=|void|drawImage,drawImage3|const QPointF &,const QImage &

/*
void drawImage ( const QPoint & point, const QImage & image )
*/
$method=|void|drawImage,drawImage4|const QPoint &,const QImage &

/*
void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|void|drawImage,drawImage5|const QPointF &,const QImage &,const QRectF &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|void|drawImage,drawImage6|const QPoint &,const QImage &,const QRect &,Qt::ImageConversionFlags=Qt::AutoColor

/*
void drawImage ( const QRectF & rectangle, const QImage & image )
*/
$method=|void|drawImage,drawImage7|const QRectF &,const QImage &

/*
void drawImage ( const QRect & rectangle, const QImage & image )
*/
$method=|void|drawImage,drawImage8|const QRect &,const QImage &

/*
void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|void|drawImage,drawImage9|int,int,const QImage &,int=0,int=0,int=-1,int=-1,Qt::ImageConversionFlags=Qt::AutoColor

//[1]void drawImage ( const QRectF & target, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[2]void drawImage ( const QRect & target, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[3]void drawImage ( const QPointF & point, const QImage & image )
//[4]void drawImage ( const QPoint & point, const QImage & image )
//[5]void drawImage ( const QPointF & point, const QImage & image, const QRectF & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[6]void drawImage ( const QPoint & point, const QImage & image, const QRect & source, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[7]void drawImage ( const QRectF & rectangle, const QImage & image )
//[8]void drawImage ( const QRect & rectangle, const QImage & image )
//[9]void drawImage ( int x, int y, const QImage & image, int sx = 0, int sy = 0, int sw = -1, int sh = -1, Qt::ImageConversionFlags flags = Qt::AutoColor )

HB_FUNC_STATIC( QPAINTER_DRAWIMAGE )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISQIMAGE(2) && ISQRECTF(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE1 );
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISQIMAGE(2) && ISQRECT(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE2 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE3 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE4 );
  }
  else if( ISBETWEEN(3,4) && ISQPOINTF(1) && ISQIMAGE(2) && ISQRECTF(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE5 );
  }
  else if( ISBETWEEN(3,4) && ISQPOINT(1) && ISQIMAGE(2) && ISQRECT(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE6 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE7 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQIMAGE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE8 );
  }
  else if( ISBETWEEN(3,8) && ISNUM(1) && ISNUM(2) && ISQIMAGE(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) && (ISNUM(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWIMAGE9 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawLine ( const QLineF & line )
*/
$method=|void|drawLine,drawLine1|const QLineF &

/*
void drawLine ( const QLine & line )
*/
$method=|void|drawLine,drawLine2|const QLine &

/*
void drawLine ( const QPoint & p1, const QPoint & p2 )
*/
$method=|void|drawLine,drawLine3|const QPoint &,const QPoint &

/*
void drawLine ( const QPointF & p1, const QPointF & p2 )
*/
$method=|void|drawLine,drawLine4|const QPointF &,const QPointF &

/*
void drawLine ( int x1, int y1, int x2, int y2 )
*/
$method=|void|drawLine,drawLine5|int,int,int,int

//[1]void drawLine ( const QLineF & line )
//[2]void drawLine ( const QLine & line )
//[3]void drawLine ( const QPoint & p1, const QPoint & p2 )
//[4]void drawLine ( const QPointF & p1, const QPointF & p2 )
//[5]void drawLine ( int x1, int y1, int x2, int y2 )

HB_FUNC_STATIC( QPAINTER_DRAWLINE )
{
  if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE1 );
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE2 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE3 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE4 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWLINE5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawLines ( const QVector<QPointF> & pointPairs )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES5 )
{
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QPointF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->drawLines ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QPoint> & pointPairs )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES6 )
{
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QPoint> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->drawLines ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QLineF> & lines )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES7 )
{
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QLineF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->drawLines ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawLines ( const QVector<QLine> & lines )
*/
HB_FUNC_STATIC( QPAINTER_DRAWLINES8 )
{
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QLine> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QLine *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->drawLines ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void drawLines ( const QLineF * lines, int lineCount )
//[2]void drawLines ( const QLine * lines, int lineCount )
//[3]void drawLines ( const QPointF * pointPairs, int lineCount )
//[4]void drawLines ( const QPoint * pointPairs, int lineCount )
//[5]void drawLines ( const QVector<QPointF> & pointPairs )
//[6]void drawLines ( const QVector<QPoint> & pointPairs )
//[7]void drawLines ( const QVector<QLineF> & lines )
//[8]void drawLines ( const QVector<QLine> & lines )

%% TODO: implementar reconhecimento de parâmetros

HB_FUNC_STATIC( QPAINTER_DRAWLINES )
{
}

/*
void drawPath ( const QPainterPath & path )
*/
$method=|void|drawPath|const QPainterPath &

/*
void drawPicture ( const QPointF & point, const QPicture & picture )
*/
$method=|void|drawPicture,drawPicture1|const QPointF &,const QPicture &

/*
void drawPicture ( const QPoint & point, const QPicture & picture )
*/
$method=|void|drawPicture,drawPicture2|const QPoint &,const QPicture &

/*
void drawPicture ( int x, int y, const QPicture & picture )
*/
$method=|void|drawPicture,drawPicture3|int,int,const QPicture &

//[1]void drawPicture ( const QPointF & point, const QPicture & picture )
//[2]void drawPicture ( const QPoint & point, const QPicture & picture )
//[3]void drawPicture ( int x, int y, const QPicture & picture )

HB_FUNC_STATIC( QPAINTER_DRAWPICTURE )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPICTURE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPICTURE1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPICTURE(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPICTURE2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQPICTURE(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPICTURE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPie ( const QRectF & rectangle, int startAngle, int spanAngle )
*/
$method=|void|drawPie,drawPie1|const QRectF &,int,int

/*
void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
*/
$method=|void|drawPie,drawPie2|const QRect &,int,int

/*
void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )
*/
$method=|void|drawPie,drawPie3|int,int,int,int,int,int

//[1]void drawPie ( const QRectF & rectangle, int startAngle, int spanAngle )
//[2]void drawPie ( const QRect & rectangle, int startAngle, int spanAngle )
//[3]void drawPie ( int x, int y, int width, int height, int startAngle, int spanAngle )

HB_FUNC_STATIC( QPAINTER_DRAWPIE )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIE1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIE2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPixmap ( const QRectF & target, const QPixmap & pixmap, const QRectF & source )
*/
$method=|void|drawPixmap,drawPixmap1|const QRectF &,const QPixmap &,const QRectF &

/*
void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
*/
$method=|void|drawPixmap,drawPixmap2|const QRect &,const QPixmap &,const QRect &

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
*/
$method=|void|drawPixmap,drawPixmap3|const QPointF &,const QPixmap &,const QRectF &

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
*/
$method=|void|drawPixmap,drawPixmap4|const QPoint &,const QPixmap &,const QRect &

/*
void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
*/
$method=|void|drawPixmap,drawPixmap5|const QPointF &,const QPixmap &

/*
void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
*/
$method=|void|drawPixmap,drawPixmap6|const QPoint &,const QPixmap &

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap )
*/
$method=|void|drawPixmap,drawPixmap7|int,int,const QPixmap &

/*
void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
*/
$method=|void|drawPixmap,drawPixmap8|const QRect &,const QPixmap &

/*
void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
*/
$method=|void|drawPixmap,drawPixmap9|int,int,int,int,const QPixmap &

/*
void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
$method=|void|drawPixmap,drawPixmap10|int,int,int,int,const QPixmap &,int,int,int,int

/*
void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
*/
$method=|void|drawPixmap,drawPixmap11|int,int,const QPixmap &,int,int,int,int

//[01]void drawPixmap ( const QRectF & target, const QPixmap & pixmap, const QRectF & source )
//[02]void drawPixmap ( const QRect & target, const QPixmap & pixmap, const QRect & source )
//[03]void drawPixmap ( const QPointF & point, const QPixmap & pixmap, const QRectF & source )
//[04]void drawPixmap ( const QPoint & point, const QPixmap & pixmap, const QRect & source )
//[05]void drawPixmap ( const QPointF & point, const QPixmap & pixmap )
//[06]void drawPixmap ( const QPoint & point, const QPixmap & pixmap )
//[07]void drawPixmap ( int x, int y, const QPixmap & pixmap )
//[08]void drawPixmap ( const QRect & rectangle, const QPixmap & pixmap )
//[09]void drawPixmap ( int x, int y, int width, int height, const QPixmap & pixmap )
//[10]void drawPixmap ( int x, int y, int w, int h, const QPixmap & pixmap, int sx, int sy, int sw, int sh )
//[11]void drawPixmap ( int x, int y, const QPixmap & pixmap, int sx, int sy, int sw, int sh )

HB_FUNC_STATIC( QPAINTER_DRAWPIXMAP )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISQPIXMAP(2) && ISQRECTF(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP1 );
  }
  else if( ISNUMPAR(3) && ISQRECT(1) && ISQPIXMAP(2) && ISQRECT(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP2 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPIXMAP(2) && ISQRECTF(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP3 );
  }
  else if( ISNUMPAR(3) && ISQPOINT(1) && ISQPIXMAP(2) && ISQRECT(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP4 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP5 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP6 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQPIXMAP(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP7 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP8 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP9 );
  }
  else if( ISNUMPAR(9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP10 );
  }
  else if( ISNUMPAR(7) && ISNUM(1) && ISNUM(2) && ISQPIXMAP(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPIXMAP11 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPoint ( const QPointF & position )
*/
$method=|void|drawPoint,drawPoint1|const QPointF &

/*
void drawPoint ( const QPoint & position )
*/
$method=|void|drawPoint,drawPoint2|const QPoint &

/*
void drawPoint ( int x, int y )
*/
$method=|void|drawPoint,drawPoint3|int,int

//[1]void drawPoint ( const QPointF & position )
//[2]void drawPoint ( const QPoint & position )
//[3]void drawPoint ( int x, int y )

HB_FUNC_STATIC( QPAINTER_DRAWPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINT1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINT2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPoints ( const QPolygonF & points )
*/
$method=|void|drawPoints,drawPoints3|const QPolygonF &

/*
void drawPoints ( const QPolygon & points )
*/
$method=|void|drawPoints,drawPoints4|const QPolygon &

//[1]void drawPoints ( const QPointF * points, int pointCount )
//[2]void drawPoints ( const QPoint * points, int pointCount )
//[3]void drawPoints ( const QPolygonF & points )
//[4]void drawPoints ( const QPolygon & points )

HB_FUNC_STATIC( QPAINTER_DRAWPOINTS )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINTS3 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOINTS4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
$method=|void|drawPolygon,drawPolygon3|const QPolygonF &,Qt::FillRule=Qt::OddEvenFill

/*
void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
$method=|void|drawPolygon,drawPolygon4|const QPolygon &,Qt::FillRule=Qt::OddEvenFill

//[1]void drawPolygon ( const QPointF * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[2]void drawPolygon ( const QPoint * points, int pointCount, Qt::FillRule fillRule = Qt::OddEvenFill )
//[3]void drawPolygon ( const QPolygonF & points, Qt::FillRule fillRule = Qt::OddEvenFill )
//[4]void drawPolygon ( const QPolygon & points, Qt::FillRule fillRule = Qt::OddEvenFill )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYGON )
{
  if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYGON3 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYGON4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPolyline ( const QPolygonF & points )
*/
$method=|void|drawPolyline,drawPolyline3|const QPolygonF &

/*
void drawPolyline ( const QPolygon & points )
*/
$method=|void|drawPolyline,drawPolyline4|const QPolygon &

//[1]void drawPolyline ( const QPointF * points, int pointCount )
//[2]void drawPolyline ( const QPoint * points, int pointCount )
//[3]void drawPolyline ( const QPolygonF & points )
//[4]void drawPolyline ( const QPolygon & points )

HB_FUNC_STATIC( QPAINTER_DRAWPOLYLINE )
{
  if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYLINE3 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWPOLYLINE4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawRect ( const QRectF & rectangle )
*/
$method=|void|drawRect,drawRect1|const QRectF &

/*
void drawRect ( const QRect & rectangle )
*/
$method=|void|drawRect,drawRect2|const QRect &

/*
void drawRect ( int x, int y, int width, int height )
*/
$method=|void|drawRect,drawRect3|int,int,int,int

//[1]void drawRect ( const QRectF & rectangle )
//[2]void drawRect ( const QRect & rectangle )
//[3]void drawRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_DRAWRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWRECT1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWRECT2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWRECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawRects ( const QVector<QRectF> & rectangles )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECTS3 )
{
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QRectF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->drawRects ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawRects ( const QVector<QRect> & rectangles )
*/
HB_FUNC_STATIC( QPAINTER_DRAWRECTS4 )
{
  QPainter * obj = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QRect> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QRect *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->drawRects ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void drawRects ( const QRectF * rectangles, int rectCount )
//[2]void drawRects ( const QRect * rectangles, int rectCount )
//[3]void drawRects ( const QVector<QRectF> & rectangles )
//[4]void drawRects ( const QVector<QRect> & rectangles )

HB_FUNC_STATIC( QPAINTER_DRAWRECTS ) // TODO: implementar reconhecimento de parâmetros
{
}

/*
void drawRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$method=|void|drawRoundedRect,drawRoundedRect1|const QRectF &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

/*
void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$method=|void|drawRoundedRect,drawRoundedRect2|const QRect &,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

/*
void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
$method=|void|drawRoundedRect,drawRoundedRect3|int,int,int,int,qreal,qreal,Qt::SizeMode=Qt::AbsoluteSize

//[1]void drawRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void drawRoundedRect ( const QRect & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[3]void drawRoundedRect ( int x, int y, int w, int h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTER_DRAWROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWROUNDEDRECT1 );
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWROUNDEDRECT2 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISNUM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWROUNDEDRECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawStaticText ( const QPointF & topLeftPosition, const QStaticText & staticText )
*/
$method=|void|drawStaticText,drawStaticText1|const QPointF &,const QStaticText &

/*
void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
*/
$method=|void|drawStaticText,drawStaticText2|const QPoint &,const QStaticText &

/*
void drawStaticText ( int left, int top, const QStaticText & staticText )
*/
$method=|void|drawStaticText,drawStaticText3|int,int,const QStaticText &

//[1]void drawStaticText ( const QPointF & topLeftPosition, const QStaticText & staticText )
//[2]void drawStaticText ( const QPoint & topLeftPosition, const QStaticText & staticText )
//[3]void drawStaticText ( int left, int top, const QStaticText & staticText )

HB_FUNC_STATIC( QPAINTER_DRAWSTATICTEXT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSTATICTEXT(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWSTATICTEXT1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSTATICTEXT(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWSTATICTEXT2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTATICTEXT(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWSTATICTEXT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawText ( const QPointF & position, const QString & text )
*/
$method=|void|drawText,drawText1|const QPointF &,const QString &

/*
void drawText ( const QPoint & position, const QString & text )
*/
$method=|void|drawText,drawText2|const QPoint &,const QString &

/*
void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
*/
$method=|void|drawText,drawText3|const QRectF &,int,const QString &,QRectF *=0

/*
void drawText ( const QRect & rectangle, int flags, const QString & text, QRect * boundingRect = 0 )
*/
$method=|void|drawText,drawText4|const QRect &,int,const QString &,QRect *=0

/*
void drawText ( int x, int y, const QString & text )
*/
$method=|void|drawText,drawText5|int,int,const QString &

/*
void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
*/
$method=|void|drawText,drawText6|int,int,int,int,int,const QString &,QRect *=0

/*
void drawText ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )
*/
$method=|void|drawText,drawText7|const QRectF &,const QString &,const QTextOption &=QTextOption()

//[1]void drawText ( const QPointF & position, const QString & text )
//[2]void drawText ( const QPoint & position, const QString & text )
//[3]void drawText ( const QRectF & rectangle, int flags, const QString & text, QRectF * boundingRect = 0 )
//[4]void drawText ( const QRect & rectangle, int flags, const QString & text, QRect * boundingRect = 0 )
//[5]void drawText ( int x, int y, const QString & text )
//[6]void drawText ( int x, int y, int width, int height, int flags, const QString & text, QRect * boundingRect = 0 )
//[7]void drawText ( const QRectF & rectangle, const QString & text, const QTextOption & option = QTextOption() )

HB_FUNC_STATIC( QPAINTER_DRAWTEXT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT2 );
  }
  else if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISQRECTF(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT3 );
  }
  else if( ISBETWEEN(3,4) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISQRECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT4 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT5 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISQRECT(7)||ISNUM(7)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT6 );
  }
  else if( ISBETWEEN(2,3) && ISQRECT(1) && ISCHAR(2) && (ISQTEXTOPTION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTEXT7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawTiledPixmap ( const QRectF & rectangle, const QPixmap & pixmap, const QPointF & position = QPointF() )
*/
$method=|void|drawTiledPixmap,drawTiledPixmap1|const QRectF &,const QPixmap &,const QPointF &=QPointF()

/*
void drawTiledPixmap ( const QRect & rectangle, const QPixmap & pixmap, const QPoint & position = QPoint() )
*/
$method=|void|drawTiledPixmap,drawTiledPixmap2|const QRect &,const QPixmap &,const QPoint &=QPoint()

/*
void drawTiledPixmap ( int x, int y, int width, int height, const QPixmap & pixmap, int sx = 0, int sy = 0 )
*/
$method=|void|drawTiledPixmap,drawTiledPixmap3|int,int,int,int,const QPixmap &,int=0,int=0

//[1]void drawTiledPixmap ( const QRectF & rectangle, const QPixmap & pixmap, const QPointF & position = QPointF() )
//[2]void drawTiledPixmap ( const QRect & rectangle, const QPixmap & pixmap, const QPoint & position = QPoint() )
//[3]void drawTiledPixmap ( int x, int y, int width, int height, const QPixmap & pixmap, int sx = 0, int sy = 0 )

HB_FUNC_STATIC( QPAINTER_DRAWTILEDPIXMAP )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISQPIXMAP(2) && (ISQPOINTF(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTILEDPIXMAP1 );
  }
  else if( ISBETWEEN(2,3) && ISQRECT(1) && ISQPIXMAP(2) && (ISQPOINT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTILEDPIXMAP2 );
  }
  else if( ISBETWEEN(5,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQPIXMAP(5) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTER_DRAWTILEDPIXMAP3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool end ()
*/
$method=|bool|end|

/*
void endNativePainting ()
*/
$method=|void|endNativePainting|

/*
void eraseRect ( const QRectF & rectangle )
*/
$method=|void|eraseRect,eraseRect1|const QRectF &

/*
void eraseRect ( const QRect & rectangle )
*/
$method=|void|eraseRect,eraseRect2|const QRect &

/*
void eraseRect ( int x, int y, int width, int height )
*/
$method=|void|eraseRect,eraseRect3|int,int,int,int

//[1]void eraseRect ( const QRectF & rectangle )
//[2]void eraseRect ( const QRect & rectangle )
//[3]void eraseRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_ERASERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_ERASERECT1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_ERASERECT2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_ERASERECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void fillPath ( const QPainterPath & path, const QBrush & brush )
*/
$method=|void|fillPath|const QPainterPath &,const QBrush &

/*
void fillRect ( const QRectF & rectangle, const QBrush & brush )
*/
$method=|void|fillRect,fillRect1|const QRectF &,const QBrush &

/*
void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
*/
$method=|void|fillRect,fillRect2|int,int,int,int,Qt::BrushStyle

/*
void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
*/
$method=|void|fillRect,fillRect3|const QRect &,Qt::BrushStyle

/*
void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
*/
$method=|void|fillRect,fillRect4|const QRectF &,Qt::BrushStyle

/*
void fillRect ( const QRect & rectangle, const QBrush & brush )
*/
$method=|void|fillRect,fillRect5|const QRect &,const QBrush &

/*
void fillRect ( const QRect & rectangle, const QColor & color )
*/
$method=|void|fillRect,fillRect6|const QRect &,const QColor &

/*
void fillRect ( const QRectF & rectangle, const QColor & color )
*/
$method=|void|fillRect,fillRect7|const QRectF &,const QColor &

/*
void fillRect ( int x, int y, int width, int height, const QBrush & brush )
*/
$method=|void|fillRect,fillRect8|int,int,int,int,const QBrush &

/*
void fillRect ( int x, int y, int width, int height, const QColor & color )
*/
$method=|void|fillRect,fillRect9|int,int,int,int,const QColor &

/*
void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
*/
$method=|void|fillRect,fillRect10|int,int,int,int,Qt::GlobalColor

/*
void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
*/
$method=|void|fillRect,fillRect11|const QRect &,Qt::GlobalColor

/*
void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )
*/
$method=|void|fillRect,fillRect12|const QRectF &,Qt::GlobalColor

//[01]void fillPath ( const QPainterPath & path, const QBrush & brush )
//[02]void fillRect ( int x, int y, int width, int height, Qt::BrushStyle style )
//[03]void fillRect ( const QRect & rectangle, Qt::BrushStyle style )
//[04]void fillRect ( const QRectF & rectangle, Qt::BrushStyle style )
//[05]void fillRect ( const QRect & rectangle, const QBrush & brush )
//[06]void fillRect ( const QRect & rectangle, const QColor & color )
//[07]void fillRect ( const QRectF & rectangle, const QColor & color )
//[08]void fillRect ( int x, int y, int width, int height, const QBrush & brush )
//[09]void fillRect ( int x, int y, int width, int height, const QColor & color )
//[10]void fillRect ( int x, int y, int width, int height, Qt::GlobalColor color )
//[11]void fillRect ( const QRect & rectangle, Qt::GlobalColor color )
//[12]void fillRect ( const QRectF & rectangle, Qt::GlobalColor color )

HB_FUNC_STATIC( QPAINTER_FILLRECT )
{
  if( ISNUMPAR(2) && ISQPAINTERPATH(1) && ISQBRUSH(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT1 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT2 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT3 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT4 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISQBRUSH(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT5 );
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT6 );
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT7 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQBRUSH(5) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT8 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQCOLOR(5)||ISCHAR(5)) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT9 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT10 ); // TODO: resolver conflito entre [10] e [02]
  }
  else if( ISNUMPAR(2) && ISQRECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT11 ); // TODO: resolver conflito entre [11] e [03]
  }
  else if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_FILLRECT12 ); // TODO: resolver conflito entre [12] e [04]
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QFont & font () const
*/
$method=|const QFont &|font|

/*
QFontInfo fontInfo () const
*/
$method=|QFontInfo|fontInfo|

/*
QFontMetrics fontMetrics () const
*/
$method=|QFontMetrics|fontMetrics|

/*
bool hasClipping () const
*/
$method=|bool|hasClipping|

/*
void initFrom ( const QWidget * widget )
*/
$method=|void|initFrom|const QWidget *

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
Qt::LayoutDirection layoutDirection () const
*/
$method=|Qt::LayoutDirection|layoutDirection|

/*
qreal opacity () const
*/
$method=|qreal|opacity|

/*
QPaintEngine * paintEngine () const
*/
$method=|QPaintEngine *|paintEngine|

/*
const QPen & pen () const
*/
$method=|const QPen &|pen|

/*
RenderHints renderHints () const
*/
$method=|QPainter::RenderHints|renderHints|

/*
void resetTransform ()
*/
$method=|void|resetTransform|

/*
void restore ()
*/
$method=|void|restore|

/*
void rotate ( qreal angle )
*/
$method=|void|rotate|qreal

/*
void save ()
*/
$method=|void|save|

/*
void scale ( qreal sx, qreal sy )
*/
$method=|void|scale|qreal,qreal

/*
void setBackground ( const QBrush & brush )
*/
$method=|void|setBackground|const QBrush &

/*
void setBackgroundMode ( Qt::BGMode mode )
*/
$method=|void|setBackgroundMode|Qt::BGMode

/*
void setBrush ( const QBrush & brush )
*/
$method=|void|setBrush,setBrush1|const QBrush &

/*
void setBrush ( Qt::BrushStyle style )
*/
$method=|void|setBrush,setBrush2|Qt::BrushStyle

//[1]void setBrush ( const QBrush & brush )
//[2]void setBrush ( Qt::BrushStyle style )

HB_FUNC_STATIC( QPAINTER_SETBRUSH )
{
  if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSH1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBrushOrigin ( const QPointF & position )
*/
$method=|void|setBrushOrigin,setBrushOrigin1|const QPointF &

/*
void setBrushOrigin ( const QPoint & position )
*/
$method=|void|setBrushOrigin,setBrushOrigin2|const QPoint &

/*
void setBrushOrigin ( int x, int y )
*/
$method=|void|setBrushOrigin,setBrushOrigin3|int,int

//[1]void setBrushOrigin ( const QPointF & position )
//[2]void setBrushOrigin ( const QPoint & position )
//[3]void setBrushOrigin ( int x, int y )

HB_FUNC_STATIC( QPAINTER_SETBRUSHORIGIN )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSHORIGIN1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSHORIGIN2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_SETBRUSHORIGIN3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setClipPath ( const QPainterPath & path, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$method=|void|setClipPath|const QPainterPath &,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$method=|void|setClipRect,setClipRect1|const QRectF &,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$method=|void|setClipRect,setClipRect2|int,int,int,int,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$method=|void|setClipRect,setClipRect3|const QRect &,Qt::ClipOperation=Qt::ReplaceClip

//[1]void setClipRect ( const QRectF & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )
//[2]void setClipRect ( int x, int y, int width, int height, Qt::ClipOperation operation = Qt::ReplaceClip )
//[3]void setClipRect ( const QRect & rectangle, Qt::ClipOperation operation = Qt::ReplaceClip )

HB_FUNC_STATIC( QPAINTER_SETCLIPRECT )
{
  if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETCLIPRECT1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETCLIPRECT2 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETCLIPRECT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setClipRegion ( const QRegion & region, Qt::ClipOperation operation = Qt::ReplaceClip )
*/
$method=|void|setClipRegion|const QRegion &,Qt::ClipOperation=Qt::ReplaceClip

/*
void setClipping ( bool enable )
*/
$method=|void|setClipping|bool

/*
void setCompositionMode ( CompositionMode mode )
*/
$method=|void|setCompositionMode|QPainter::CompositionMode

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
$method=|void|setLayoutDirection|Qt::LayoutDirection

/*
void setOpacity ( qreal opacity )
*/
$method=|void|setOpacity|qreal

/*
void setPen ( const QPen & pen )
*/
$method=|void|setPen,setPen1|const QPen &

/*
void setPen ( const QColor & color )
*/
$method=|void|setPen,setPen2|const QColor &

/*
void setPen ( Qt::PenStyle style )
*/
$method=|void|setPen,setPen3|Qt::PenStyle

//[1]void setPen ( const QPen & pen )
//[2]void setPen ( const QColor & color )
//[3]void setPen ( Qt::PenStyle style )

HB_FUNC_STATIC( QPAINTER_SETPEN )
{
  if( ISNUMPAR(1) && ISQPEN(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETPEN1 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPAINTER_SETPEN2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETPEN3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setRenderHint ( RenderHint hint, bool on = true )
*/
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

/*
void setRenderHints ( RenderHints hints, bool on = true )
*/
$method=|void|setRenderHints|QPainter::RenderHints,bool=true

/*
void setTransform ( const QTransform & transform, bool combine = false )
*/
$method=|void|setTransform|const QTransform &,bool=false

/*
void setViewTransformEnabled ( bool enable )
*/
$method=|void|setViewTransformEnabled|bool

/*
void setViewport ( const QRect & rectangle )
*/
$method=|void|setViewport,setViewport1|const QRect &

/*
void setViewport ( int x, int y, int width, int height )
*/
$method=|void|setViewport,setViewport2|int,int,int,int

//[1]void setViewport ( const QRect & rectangle )
//[2]void setViewport ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETVIEWPORT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETVIEWPORT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_SETVIEWPORT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWindow ( const QRect & rectangle )
*/
$method=|void|setWindow,setWindow1|const QRect &

/*
void setWindow ( int x, int y, int width, int height )
*/
$method=|void|setWindow,setWindow2|int,int,int,int

//[1]void setWindow ( const QRect & rectangle )
//[2]void setWindow ( int x, int y, int width, int height )

HB_FUNC_STATIC( QPAINTER_SETWINDOW )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_SETWINDOW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTER_SETWINDOW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWorldMatrixEnabled ( bool enable )
*/
$method=|void|setWorldMatrixEnabled|bool

/*
void setWorldTransform ( const QTransform & matrix, bool combine = false )
*/
$method=|void|setWorldTransform|const QTransform &,bool=false

/*
void shear ( qreal sh, qreal sv )
*/
$method=|void|shear|qreal,qreal

/*
void strokePath ( const QPainterPath & path, const QPen & pen )
*/
$method=|void|strokePath|const QPainterPath &,const QPen &

/*
bool testRenderHint ( RenderHint hint ) const
*/
$method=|bool|testRenderHint|QPainter::RenderHint

/*
const QTransform & transform () const
*/
$method=|const QTransform &|transform|

/*
void translate ( const QPointF & offset )
*/
$method=|void|translate,translate1|const QPointF &

/*
void translate ( const QPoint & offset )
*/
$method=|void|translate,translate2|const QPoint &

/*
void translate ( qreal dx, qreal dy )
*/
$method=|void|translate,translate3|qreal,qreal

//[1]void translate ( const QPointF & offset )
//[2]void translate ( const QPoint & offset )
//[3]void translate ( qreal dx, qreal dy )

HB_FUNC_STATIC( QPAINTER_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTER_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPAINTER_TRANSLATE2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTER_TRANSLATE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool viewTransformEnabled () const
*/
$method=|bool|viewTransformEnabled|

/*
QRect viewport () const
*/
$method=|QRect|viewport|

/*
QRect window () const
*/
$method=|QRect|window|

/*
bool worldMatrixEnabled () const
*/
$method=|bool|worldMatrixEnabled|

/*
const QTransform & worldTransform () const
*/
$method=|const QTransform &|worldTransform|

$extraMethods

#pragma ENDDUMP
