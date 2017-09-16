$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QPOINT
REQUEST QSIZE
#endif

CLASS QRect

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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
   METHOD contains4
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

#include <QRect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QRect ()
*/
$constructor=|new1|

/*
QRect ( const QPoint & topLeft, const QPoint & bottomRight )
*/
$constructor=|new2|const QPoint &,const QPoint &

/*
QRect ( const QPoint & topLeft, const QSize & size )
*/
$constructor=|new3|const QPoint &,const QSize &

/*
QRect ( int x, int y, int width, int height )
*/
$constructor=|new4|int,int,int,int

//[1]QRect ()
//[2]QRect ( const QPoint & topLeft, const QPoint & bottomRight )
//[3]QRect ( const QPoint & topLeft, const QSize & size )
//[4]QRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRECT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QRECT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSIZE(2) )
  {
    HB_FUNC_EXEC( QRECT_NEW3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRECT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void adjust ( int dx1, int dy1, int dx2, int dy2 )
*/
$method=|void|adjust|int,int,int,int

/*
QRect adjusted ( int dx1, int dy1, int dx2, int dy2 ) const
*/
$method=|QRect|adjusted|int,int,int,int

/*
int bottom () const
*/
$method=|int|bottom|

/*
QPoint bottomLeft () const
*/
$method=|QPoint|bottomLeft|

/*
QPoint bottomRight () const
*/
$method=|QPoint|bottomRight|

/*
QPoint center () const
*/
$method=|QPoint|center|

/*
bool contains ( const QPoint & point, bool proper = false ) const
*/
$method=|bool|contains,contains1|const QPoint &,bool=false

/*
bool contains ( int x, int y, bool proper ) const
*/
$method=|bool|contains,contains2|int,int,bool

/*
bool contains ( int x, int y ) const
*/
$method=|bool|contains,contains3|int,int

/*
bool contains ( const QRect & rectangle, bool proper = false ) const
*/
$method=|bool|contains,contains4|const QRect &,bool=false

//[1]bool contains ( const QPoint & point, bool proper = false ) const
//[2]bool contains ( int x, int y, bool proper ) const
//[3]bool contains ( int x, int y ) const
//[4]bool contains ( const QRect & rectangle, bool proper = false ) const

HB_FUNC_STATIC( QRECT_CONTAINS )
{
  if( ISBETWEEN(1,2) && ISQPOINT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISLOG(3) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS3 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void getCoords ( int * x1, int * y1, int * x2, int * y2 ) const
*/
$method=|void|getCoords|int *,int *,int *,int *

/*
void getRect ( int * x, int * y, int * width, int * height ) const
*/
$method=|void|getRect|int *,int *,int *,int *

/*
int height () const
*/
$method=|int|height|

/*
QRect intersected ( const QRect & rectangle ) const
*/
$method=|QRect|intersected|const QRect &

/*
bool intersects ( const QRect & rectangle ) const
*/
$method=|bool|intersects|const QRect &

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
int left () const
*/
$method=|int|left|

/*
void moveBottom ( int y )
*/
$method=|void|moveBottom|int

/*
void moveBottomLeft ( const QPoint & position )
*/
$method=|void|moveBottomLeft|const QPoint &

/*
void moveBottomRight ( const QPoint & position )
*/
$method=|void|moveBottomRight|const QPoint &

/*
void moveCenter ( const QPoint & position )
*/
$method=|void|moveCenter|const QPoint &

/*
void moveLeft ( int x )
*/
$method=|void|moveLeft|int

/*
void moveRight ( int x )
*/
$method=|void|moveRight|int

/*
void moveTo ( int x, int y )
*/
$method=|void|moveTo,moveTo1|int,int

/*
void moveTo ( const QPoint & position )
*/
$method=|void|moveTo,moveTo2|const QPoint &

//[1]void moveTo ( int x, int y )
//[2]void moveTo ( const QPoint & position )

HB_FUNC_STATIC( QRECT_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_MOVETO1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRECT_MOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTop ( int y )
*/
$method=|void|moveTop|int

/*
void moveTopLeft ( const QPoint & position )
*/
$method=|void|moveTopLeft|const QPoint &

/*
void moveTopRight ( const QPoint & position )
*/
$method=|void|moveTopRight|const QPoint &

/*
QRect normalized () const
*/
$method=|QRect|normalized|

/*
int right () const
*/
$method=|int|right|

/*
void setBottom ( int y )
*/
$method=|void|setBottom|int

/*
void setBottomLeft ( const QPoint & position )
*/
$method=|void|setBottomLeft|const QPoint &

/*
void setBottomRight ( const QPoint & position )
*/
$method=|void|setBottomRight|const QPoint &

/*
void setCoords ( int x1, int y1, int x2, int y2 )
*/
$method=|void|setCoords|int,int,int,int

/*
void setHeight ( int height )
*/
$method=|void|setHeight|int

/*
void setLeft ( int x )
*/
$method=|void|setLeft|int

/*
void setRect ( int x, int y, int width, int height )
*/
$method=|void|setRect|int,int,int,int

/*
void setRight ( int x )
*/
$method=|void|setRight|int

/*
void setSize ( const QSize & size )
*/
$method=|void|setSize|const QSize &

/*
void setTop ( int y )
*/
$method=|void|setTop|int

/*
void setTopLeft ( const QPoint & position )
*/
$method=|void|setTopLeft|const QPoint &

/*
void setTopRight ( const QPoint & position )
*/
$method=|void|setTopRight|const QPoint &

/*
void setWidth ( int width )
*/
$method=|void|setWidth|int

/*
void setX ( int x )
*/
$method=|void|setX|int

/*
void setY ( int y )
*/
$method=|void|setY|int

/*
QSize size () const
*/
$method=|QSize|size|

/*
int top () const
*/
$method=|int|top|

/*
QPoint topLeft () const
*/
$method=|QPoint|topLeft|

/*
QPoint topRight () const
*/
$method=|QPoint|topRight|

/*
void translate ( int dx, int dy )
*/
$method=|void|translate,translate1|int,int

/*
void translate ( const QPoint & offset )
*/
$method=|void|translate,translate2|const QPoint &

//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & offset )

HB_FUNC_STATIC( QRECT_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect translated ( int dx, int dy ) const
*/
$method=|QRect|translated,translated1|int,int

/*
QRect translated ( const QPoint & offset ) const
*/
$method=|QRect|translated,translated2|const QPoint &

//[1]QRect translated ( int dx, int dy ) const
//[2]QRect translated ( const QPoint & offset ) const

HB_FUNC_STATIC( QRECT_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect united ( const QRect & rectangle ) const
*/
$method=|QRect|united|const QRect &

/*
int width () const
*/
$method=|int|width|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

$extraMethods

#pragma ENDDUMP
