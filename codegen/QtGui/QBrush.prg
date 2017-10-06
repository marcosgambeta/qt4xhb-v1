$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QGRADIENT
REQUEST QMATRIX
REQUEST QPIXMAP
REQUEST QIMAGE
REQUEST QTRANSFORM
#endif

CLASS QBrush

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD color
   METHOD gradient
   METHOD isOpaque
   METHOD matrix
   METHOD setColor1
   METHOD setColor2
   METHOD setColor
   METHOD setMatrix
   METHOD setStyle
   METHOD setTexture
   METHOD setTextureImage
   METHOD setTransform
   METHOD style
   METHOD texture
   METHOD textureImage
   METHOD transform

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QBrush>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBrush ()
*/
$constructor=|new1|

/*
QBrush ( Qt::BrushStyle style )
*/
$constructor=|new2|Qt::BrushStyle

/*
QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
*/
$constructor=|new3|const QColor &,Qt::BrushStyle=Qt::SolidPattern

/*
QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
*/
$constructor=|new4|Qt::GlobalColor,Qt::BrushStyle=Qt::SolidPattern

/*
QBrush ( const QColor & color, const QPixmap & pixmap )
*/
$constructor=|new5|const QColor &,const QPixmap &

/*
QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
*/
$constructor=|new6|Qt::GlobalColor,const QPixmap &

/*
QBrush ( const QPixmap & pixmap )
*/
$constructor=|new7|const QPixmap &

/*
QBrush ( const QImage & image )
*/
$constructor=|new8|const QImage &

/*
QBrush ( const QBrush & other )
*/
$constructor=|new9|const QBrush &

/*
QBrush ( const QGradient & gradient )
*/
$constructor=|new10|const QGradient &

//[01]QBrush ()
//[02]QBrush ( Qt::BrushStyle style )
//[03]QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
//[04]QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
//[05]QBrush ( const QColor & color, const QPixmap & pixmap )
//[06]QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
//[07]QBrush ( const QPixmap & pixmap )
//[08]QBrush ( const QImage & image )
//[09]QBrush ( const QBrush & other )
//[10]QBrush ( const QGradient & gradient )

%% TODO: resolver conflito entre [2] e [4] quando for 1 parâmetro

HB_FUNC_STATIC( QBRUSH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW2 );
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW4 );
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW8 );
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW9 );
  }
  else if( ISNUMPAR(1) && ISQGRADIENT(1) )
  {
    HB_FUNC_EXEC( QBRUSH_NEW10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QColor & color () const
*/
$method=|const QColor &|color|

/*
const QGradient * gradient () const
*/
$method=|const QGradient *|gradient|

/*
bool isOpaque () const
*/
$method=|bool|isOpaque|

/*
const QMatrix & matrix () const
*/
$method=|const QMatrix &|matrix|

/*
void setColor ( const QColor & color )
*/
$method=|void|setColor,setColor1|const QColor &

/*
void setColor ( Qt::GlobalColor color )
*/
$method=|void|setColor,setColor2|Qt::GlobalColor

//[1]void setColor ( const QColor & color )
//[2]void setColor ( Qt::GlobalColor color )

HB_FUNC_STATIC( QBRUSH_SETCOLOR )
{
  if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QBRUSH_SETCOLOR1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBRUSH_SETCOLOR2 );
  }
}

/*
void setMatrix ( const QMatrix & matrix )
*/
$method=|void|setMatrix|const QMatrix &

/*
void setStyle ( Qt::BrushStyle style )
*/
$method=|void|setStyle|Qt::BrushStyle

/*
void setTexture ( const QPixmap & pixmap )
*/
$method=|void|setTexture|const QPixmap &

/*
void setTextureImage ( const QImage & image )
*/
$method=|void|setTextureImage|const QImage &

/*
void setTransform ( const QTransform & matrix )
*/
$method=|void|setTransform|const QTransform &

/*
Qt::BrushStyle style () const
*/
$method=|Qt::BrushStyle|style|

/*
QPixmap texture () const
*/
$method=|QPixmap|texture|

/*
QImage textureImage () const
*/
$method=|QImage|textureImage|

/*
QTransform transform () const
*/
$method=|QTransform|transform|

$extraMethods

#pragma ENDDUMP
