$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLPixelBuffer INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bindTexture1
   METHOD bindTexture2
   METHOD bindTexture3
   METHOD bindTexture
   METHOD bindToDynamicTexture
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD generateDynamicTexture
   METHOD isValid
   METHOD makeCurrent
   METHOD releaseFromDynamicTexture
   METHOD size
   METHOD toImage
   METHOD updateDynamicTexture
   METHOD paintEngine
   METHOD hasOpenGLPbuffers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLPixelBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_NEW1 )
{
  QGLFormat par2 = ISNIL(2)? QGLFormat::defaultFormat() : *(QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLWidget * par3 = ISNIL(3)? 0 : (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLPixelBuffer * o = new QGLPixelBuffer ( *PQSIZE(1), par2, par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_NEW2 )
{
  QGLFormat par3 = ISNIL(3)? QGLFormat::defaultFormat() : *(QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLWidget * par4 = ISNIL(4)? 0 : (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLPixelBuffer * o = new QGLPixelBuffer ( PINT(1), PINT(2), par3, par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
//[2]QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )

HB_FUNC_STATIC( QGLPIXELBUFFER_NEW )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISQGLFORMAT(2)||ISNIL(2)) && (ISQGLWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLPIXELBUFFER_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISQGLFORMAT(3)||ISNIL(3)) && (ISQGLWIDGET(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGLPIXELBUFFER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
*/
$method=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum=GL_TEXTURE_2D

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
*/
$method=|GLuint|bindTexture,bindTexture2|const QPixmap &,GLenum=GL_TEXTURE_2D

/*
GLuint bindTexture ( const QString & fileName )
*/
$method=|GLuint|bindTexture,bindTexture3|const QString &

//[1]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
//[2]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
//[3]GLuint bindTexture ( const QString & fileName )

HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE )
{
}

/*
bool bindToDynamicTexture ( GLuint texture_id )
*/
$method=|bool|bindToDynamicTexture|GLuint

/*
void deleteTexture ( GLuint texture_id )
*/
$method=|void|deleteTexture|GLuint

/*
bool doneCurrent ()
*/
$method=|bool|doneCurrent|

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
$method=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
$method=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

//[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
//[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )

HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE )
{
}

/*
QGLFormat format () const
*/
$method=|QGLFormat|format|

/*
GLuint generateDynamicTexture () const
*/
$method=|GLuint|generateDynamicTexture|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool makeCurrent ()
*/
$method=|bool|makeCurrent|

/*
void releaseFromDynamicTexture ()
*/
$method=|void|releaseFromDynamicTexture|

/*
QSize size () const
*/
$method=|QSize|size|

/*
QImage toImage () const
*/
$method=|QImage|toImage|

/*
void updateDynamicTexture ( GLuint texture_id ) const
*/
$method=|void|updateDynamicTexture|GLuint

/*
virtual QPaintEngine * paintEngine () const
*/
$virtualMethod=|QPaintEngine *|paintEngine|

/*
static bool hasOpenGLPbuffers ()
*/
$staticMethod=|bool|hasOpenGLPbuffers|

#pragma ENDDUMP
