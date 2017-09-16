$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECT
#endif

CLASS QRectF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD adjust
   METHOD adjusted
   METHOD bottom
   METHOD bottomLeft
   METHOD bottomRight
   METHOD center
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains
   METHOD getCoords
   METHOD getRect
   METHOD height
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD left
   METHOD moveBottom
   METHOD moveBottomLeft
   METHOD moveBottomRight
   METHOD moveCenter
   METHOD moveLeft
   METHOD moveRight
   METHOD moveTo1
   METHOD moveTo2
   METHOD moveTo
   METHOD moveTop
   METHOD moveTopLeft
   METHOD moveTopRight
   METHOD normalized
   METHOD right
   METHOD setBottom
   METHOD setBottomLeft
   METHOD setBottomRight
   METHOD setCoords
   METHOD setHeight
   METHOD setLeft
   METHOD setRect
   METHOD setRight
   METHOD setSize
   METHOD setTop
   METHOD setTopLeft
   METHOD setTopRight
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD size
   METHOD toAlignedRect
   METHOD toRect
   METHOD top
   METHOD topLeft
   METHOD topRight
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united
   METHOD width
   METHOD x
   METHOD y

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QRectF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QRectF ()
*/
$constructor=|new1|

/*
QRectF ( const QPointF & topLeft, const QSizeF & size )
*/
$constructor=|new2|const QPointF &,const QSizeF &

/*
QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
*/
$constructor=|new3|const QPointF &,const QPointF &

/*
QRectF ( qreal x, qreal y, qreal width, qreal height )
*/
$constructor=|new4|qreal,qreal,qreal,qreal

/*
QRectF ( const QRect & rectangle )
*/
$constructor=|new5|const QRect &

//[1]QRectF ()
//[2]QRectF ( const QPointF & topLeft, const QSizeF & size )
//[3]QRectF ( const QPointF & topLeft, const QPointF & bottomRight )
//[4]QRectF ( qreal x, qreal y, qreal width, qreal height )
//[5]QRectF ( const QRect & rectangle )

HB_FUNC_STATIC( QRECTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRECTF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQSIZEF(2) )
  {
    HB_FUNC_EXEC( QRECTF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QRECTF_NEW3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRECTF_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QRECTF_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void adjust ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 )
*/
$method=|void|adjust|qreal,qreal,qreal,qreal

/*
QRectF adjusted ( qreal dx1, qreal dy1, qreal dx2, qreal dy2 ) const
*/
$method=|QRectF|adjusted|qreal,qreal,qreal,qreal

/*
qreal bottom () const
*/
$method=|qreal|bottom|

/*
QPointF bottomLeft () const
*/
$method=|QPointF|bottomLeft|

/*
QPointF bottomRight () const
*/
$method=|QPointF|bottomRight|

/*
QPointF center () const
*/
$method=|QPointF|center|

/*
bool contains ( const QPointF & point ) const
*/
$method=|bool|contains,contains1|const QPointF &

/*
bool contains ( qreal x, qreal y ) const
*/
$method=|bool|contains,contains2|qreal,qreal

/*
bool contains ( const QRectF & rectangle ) const
*/
$method=|bool|contains,contains3|const QRectF &

//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( qreal x, qreal y ) const
//[3]bool contains ( const QRectF & rectangle ) const

HB_FUNC_STATIC( QRECTF_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_CONTAINS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_CONTAINS2 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_CONTAINS3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void getCoords ( qreal * x1, qreal * y1, qreal * x2, qreal * y2 ) const
*/
$method=|void|getCoords|qreal *,qreal *,qreal *,qreal *

/*
void getRect ( qreal * x, qreal * y, qreal * width, qreal * height ) const
*/
$method=|void|getRect|qreal *,qreal *,qreal *,qreal *

/*
qreal height () const
*/
$method=|qreal|height|

/*
QRectF intersected ( const QRectF & rectangle ) const
*/
$method=|QRectF|intersected|const QRectF &

/*
bool intersects ( const QRectF & rectangle ) const
*/
$method=|bool|intersects|const QRectF &

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qreal left () const
*/
$method=|qreal|left|

/*
void moveBottom ( qreal y )
*/
$method=|void|moveBottom|qreal

/*
void moveBottomLeft ( const QPointF & position )
*/
$method=|void|moveBottomLeft|const QPointF &

/*
void moveBottomRight ( const QPointF & position )
*/
$method=|void|moveBottomRight|const QPointF &

/*
void moveCenter ( const QPointF & position )
*/
$method=|void|moveCenter|const QPointF &

/*
void moveLeft ( qreal x )
*/
$method=|void|moveLeft|qreal

/*
void moveRight ( qreal x )
*/
$method=|void|moveRight|qreal

/*
void moveTo ( qreal x, qreal y )
*/
$method=|void|moveTo,moveTo1|qreal,qreal

/*
void moveTo ( const QPointF & position )
*/
$method=|void|moveTo,moveTo2|const QPointF &

//[1]void moveTo ( qreal x, qreal y )
//[2]void moveTo ( const QPointF & position )

HB_FUNC_STATIC( QRECTF_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_MOVETO1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_MOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTop ( qreal y )
*/
$method=|void|moveTop|qreal

/*
void moveTopLeft ( const QPointF & position )
*/
$method=|void|moveTopLeft|const QPointF &

/*
void moveTopRight ( const QPointF & position )
*/
$method=|void|moveTopRight|const QPointF &

/*
QRectF normalized () const
*/
$method=|QRectF|normalized|

/*
qreal right () const
*/
$method=|qreal|right|

/*
void setBottom ( qreal y )
*/
$method=|void|setBottom|qreal

/*
void setBottomLeft ( const QPointF & position )
*/
$method=|void|setBottomLeft|const QPointF &

/*
void setBottomRight ( const QPointF & position )
*/
$method=|void|setBottomRight|const QPointF &

/*
void setCoords ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
$method=|void|setCoords|qreal,qreal,qreal,qreal

/*
void setHeight ( qreal height )
*/
$method=|void|setHeight|qreal

/*
void setLeft ( qreal x )
*/
$method=|void|setLeft|qreal

/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
$method=|void|setRect|qreal,qreal,qreal,qreal

/*
void setRight ( qreal x )
*/
$method=|void|setRight|qreal

/*
void setSize ( const QSizeF & size )
*/
$method=|void|setSize|const QSizeF &

/*
void setTop ( qreal y )
*/
$method=|void|setTop|qreal

/*
void setTopLeft ( const QPointF & position )
*/
$method=|void|setTopLeft|const QPointF &

/*
void setTopRight ( const QPointF & position )
*/
$method=|void|setTopRight|const QPointF &

/*
void setWidth ( qreal width )
*/
$method=|void|setWidth|qreal

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
QSizeF size () const
*/
$method=|QSizeF|size|

/*
QRect toAlignedRect () const
*/
$method=|QRect|toAlignedRect|

/*
QRect toRect () const
*/
$method=|QRect|toRect|

/*
qreal top () const
*/
$method=|qreal|top|

/*
QPointF topLeft () const
*/
$method=|QPointF|topLeft|

/*
QPointF topRight () const
*/
$method=|QPointF|topRight|

/*
void translate ( qreal dx, qreal dy )
*/
$method=|void|translate,translate1|qreal,qreal

/*
void translate ( const QPointF & offset )
*/
$method=|void|translate,translate2|const QPointF &

//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QRECTF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF translated ( qreal dx, qreal dy ) const
*/
$method=|QRectF|translated,translated1|qreal,qreal

/*
QRectF translated ( const QPointF & offset ) const
*/
$method=|QRectF|translated,translated2|const QPointF &

//[1]QRectF translated ( qreal dx, qreal dy ) const
//[2]QRectF translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QRECTF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRECTF_TRANSLATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF united ( const QRectF & rectangle ) const
*/
$method=|QRectF|united|const QRectF &

/*
qreal width () const
*/
$method=|qreal|width|

/*
qreal x () const
*/
$method=|qreal|x|

/*
qreal y () const
*/
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
