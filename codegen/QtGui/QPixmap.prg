$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QBITMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD cacheKey
   METHOD convertFromImage
   METHOD copy1
   METHOD copy2
   METHOD copy
   METHOD createHeuristicMask
   METHOD createMaskFromColor1
   METHOD createMaskFromColor2
   METHOD createMaskFromColor
   METHOD depth
   METHOD detach
   METHOD fill1
   METHOD fill2
   METHOD fill3
   METHOD fill
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD height
   METHOD isNull
   METHOD isQBitmap
   METHOD load
   METHOD loadFromData1
   METHOD loadFromData2
   METHOD loadFromData
   METHOD mask
   METHOD rect
   METHOD save1
   METHOD save2
   METHOD save
   METHOD scaled1
   METHOD scaled2
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD scroll1
   METHOD scroll2
   METHOD scroll
   METHOD setMask
   METHOD size
   METHOD swap
   METHOD toImage
   METHOD transformed1
   METHOD transformed2
   METHOD transformed
   METHOD width
   METHOD defaultDepth
   METHOD fromImage
   METHOD fromImageReader
   METHOD grabWidget1
   METHOD grabWidget2
   METHOD grabWidget
   METHOD grabWindow
   METHOD trueMatrix1
   METHOD trueMatrix

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPixmap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QBitmap>

/*
QPixmap ()
*/
$constructor=|new1|

/*
QPixmap ( int width, int height )
*/
$constructor=|new2|int,int

/*
QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$constructor=|new3|const QString &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

/*
QPixmap ( const char * const[] xpm )
*/
%% TODO: implementar ?

/*
QPixmap ( const QPixmap & pixmap )
*/
$constructor=|new5|const QPixmap &

/*
QPixmap ( const QSize & size )
*/
$constructor=|new6|const QSize &

//[1]QPixmap ()
//[2]QPixmap ( int width, int height )
//[3]QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[4]QPixmap ( const char * const[] xpm )
//[5]QPixmap ( const QPixmap & pixmap )
//[6]QPixmap ( const QSize & size )

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW3 );
  }
%%  else if( ISNUMPAR(1) && ISCHAR(1) )
%%  {
%%    HB_FUNC_EXEC( QPIXMAP_NEW4 );
%%  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qint64 cacheKey () const
*/
$method=|qint64|cacheKey|

/*
bool convertFromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|bool|convertFromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

/*
QPixmap copy ( const QRect & rectangle = QRect() ) const
*/
$method=|QPixmap|copy,copy1|const QRect &=QRect()

/*
QPixmap copy ( int x, int y, int width, int height ) const
*/
$method=|QPixmap|copy,copy2|int,int,int,int

//[1]QPixmap copy ( const QRect & rectangle = QRect() ) const
//[2]QPixmap copy ( int x, int y, int width, int height ) const

HB_FUNC_STATIC( QPIXMAP_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_COPY1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPIXMAP_COPY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBitmap createHeuristicMask ( bool clipTight = true ) const
*/
$method=|QBitmap|createHeuristicMask|bool=true

/*
QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
*/
$method=|QBitmap|createMaskFromColor,createMaskFromColor1|const QColor &,Qt::MaskMode

/*
QBitmap createMaskFromColor ( const QColor & maskColor ) const
*/
$method=|QBitmap|createMaskFromColor,createMaskFromColor2|const QColor &

//[1]QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
//[2]QBitmap createMaskFromColor ( const QColor & maskColor ) const

HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_CREATEMASKFROMCOLOR1 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_CREATEMASKFROMCOLOR2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int depth () const
*/
$method=|int|depth|

/*
void detach ()
*/
$method=|void|detach|

/*
void fill ( const QColor & color = Qt::white )
*/
$method=|void|fill,fill1|const QColor &=Qt::white

/*
void fill ( const QWidget * widget, const QPoint & offset )
*/
$method=|void|fill,fill2|const QWidget *,const QPoint &

/*
void fill ( const QWidget * widget, int x, int y )
*/
$method=|void|fill,fill3|const QWidget *,int,int

//[1]void fill ( const QColor & color = Qt::white )
//[2]void fill ( const QWidget * widget, const QPoint & offset )
//[3]void fill ( const QWidget * widget, int x, int y )

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISCHAR(1)||ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL2 );
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasAlpha () const
*/
$method=|bool|hasAlpha|

/*
bool hasAlphaChannel () const
*/
$method=|bool|hasAlphaChannel|

/*
int height () const
*/
$method=|int|height|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isQBitmap () const
*/
$method=|bool|isQBitmap|

/*
bool load ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|bool|load|const QString &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

/*
bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|bool|loadFromData,loadFromData1|const uchar *,uint,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

/*
bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$method=|bool|loadFromData,loadFromData2|const QByteArray &,const char *=0,Qt::ImageConversionFlags=Qt::AutoColor

//[1]bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[2]bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_LOADFROMDATA1 );
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_LOADFROMDATA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBitmap mask () const
*/
$method=|QBitmap|mask|

/*
QRect rect () const
*/
$method=|QRect|rect|

/*
bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
$method=|bool|save,save1|const QString &,const char *=0,int=-1

/*
bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
$method=|bool|save,save2|QIODevice *,const char *=0,int=-1

//[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
//[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SAVE1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SAVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
$method=|QPixmap|scaled,scaled1|const QSize &,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

/*
QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
$method=|QPixmap|scaled,scaled2|int,int,Qt::AspectRatioMode=Qt::IgnoreAspectRatio,Qt::TransformationMode=Qt::FastTransformation

//[1]QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
//[2]QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCALED1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCALED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$method=|QPixmap|scaledToHeight|int,Qt::TransformationMode=Qt::FastTransformation

/*
QPixmap scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$method=|QPixmap|scaledToWidth|int,Qt::TransformationMode=Qt::FastTransformation

/*
void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
*/
$method=|void|scroll,scroll1|int,int,int,int,int,int,QRegion *=0

/*
void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
*/
$method=|void|scroll,scroll2|int,int,const QRect &,QRegion *=0

//[1]void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
//[2]void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCROLL1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCROLL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMask ( const QBitmap & mask )
*/
$method=|void|setMask|const QBitmap &

/*
QSize size () const
*/
$method=|QSize|size|

/*
void swap ( QPixmap & other )
*/
$method=|void|swap|QPixmap &

/*
QImage toImage () const
*/
$method=|QImage|toImage|

/*
QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$method=|QPixmap|transformed,transformed1|const QTransform &,Qt::TransformationMode=Qt::FastTransformation

/*
QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
$method=|QPixmap|transformed,transformed2|const QMatrix &,Qt::TransformationMode=Qt::FastTransformation

//[1]QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
//[2]QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRANSFORMED1 );
  }
  else if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRANSFORMED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int width () const
*/
$method=|int|width|

/*
static int defaultDepth ()
*/
$staticMethod=|int|defaultDepth|

/*
static QPixmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$staticMethod=|QPixmap|fromImage|const QImage &,Qt::ImageConversionFlags=Qt::AutoColor

/*
static QPixmap fromImageReader ( QImageReader * imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
$staticMethod=|QPixmap|fromImageReader|QImageReader *,Qt::ImageConversionFlags=Qt::AutoColor

/*
static QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
*/
$staticMethod=|QPixmap|grabWidget,grabWidget1|QWidget *,const QRect &

/*
static QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )
*/
$staticMethod=|QPixmap|grabWidget,grabWidget2|QWidget *,int=0,int=0,int=-1,int=-1

//[1]QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
//[2]QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQRECT(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_GRABWIDGET1 );
  }
  else if( ISBETWEEN(1,5) && ISQWIDGET(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QPIXMAP_GRABWIDGET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap grabWindow ( WId window, int x = 0, int y = 0, int width = -1, int height = -1 )
*/
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
  WId par1 = (WId) hb_parptr(1);
  QPixmap * ptr = new QPixmap( QPixmap::grabWindow ( par1, OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
static QTransform trueMatrix ( const QTransform & matrix, int width, int height )
*/
HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX1 )
{
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QTransform * ptr = new QTransform( QPixmap::trueMatrix ( *PQTRANSFORM(1), par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}

//[1]QTransform trueMatrix ( const QTransform & matrix, int width, int height )
//[2]QMatrix trueMatrix ( const QMatrix & m, int w, int h )

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRUEMATRIX1 );
  }
  //else if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  //{
  //  HB_FUNC_EXEC( QPIXMAP_TRUEMATRIX2 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
