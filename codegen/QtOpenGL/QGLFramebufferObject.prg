$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD attachment
   METHOD bind
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD handle
   METHOD isBound
   METHOD isValid
   METHOD release
   METHOD size
   METHOD texture
   METHOD toImage
   METHOD paintEngine
   METHOD blitFramebuffer
   METHOD hasOpenGLFramebufferBlit
   METHOD hasOpenGLFramebufferObjects

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLFramebufferObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW1 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), OPGLENUM(2,GL_TEXTURE_2D) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW2 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW3 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), *PQGLFRAMEBUFFEROBJECTFORMAT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW4 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), *PQGLFRAMEBUFFEROBJECTFORMAT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW5 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( PINT(1), PINT(2), (QGLFramebufferObject::Attachment) hb_parni(3), OPGLENUM(4,GL_TEXTURE_2D), OPGLENUM(5,GL_RGBA8) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW6 )
{
  QGLFramebufferObject * o = new QGLFramebufferObject ( *PQSIZE(1), (QGLFramebufferObject::Attachment) hb_parni(2), OPGLENUM(3,GL_TEXTURE_2D), OPGLENUM(4,GL_RGBA8) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFramebufferObject ( const QSize & size, GLenum target = GL_TEXTURE_2D )
//[2]QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
//[3]QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
//[4]QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
//[5]QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
//[6]QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW )
{
}

$deleteMethod

/*
Attachment attachment () const
*/
$method=|QGLFramebufferObject::Attachment|attachment|

/*
bool bind ()
*/
$method=|bool|bind|

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

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFramebufferObjectFormat format () const
*/
$method=|QGLFramebufferObjectFormat|format|

/*
GLuint handle () const
*/
$method=|GLuint|handle|

/*
bool isBound () const
*/
$method=|bool|isBound|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool release ()
*/
$method=|bool|release|

/*
QSize size () const
*/
$method=|QSize|size|

/*
GLuint texture () const
*/
$method=|GLuint|texture|

/*
QImage toImage () const
*/
$method=|QImage|toImage|

/*
virtual QPaintEngine * paintEngine () const
*/
$virtualMethod=|QPaintEngine *|paintEngine|

/*
static void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
*/
$staticMethod=|void|blitFramebuffer|QGLFramebufferObject *,const QRect &,QGLFramebufferObject *,const QRect &,GLbitfield=GL_COLOR_BUFFER_BIT,GLenum=GL_NEAREST

/*
static bool hasOpenGLFramebufferBlit ()
*/
$staticMethod=|bool|hasOpenGLFramebufferBlit|

/*
static bool hasOpenGLFramebufferObjects ()
*/
$staticMethod=|bool|hasOpenGLFramebufferObjects|

#pragma ENDDUMP
