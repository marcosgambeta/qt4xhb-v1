%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
$internalConstructor=|new1|const QSize &,const QGLFormat &=QGLFormat::defaultFormat(),QGLWidget *=0

$prototype=QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
$internalConstructor=|new2|int,int,const QGLFormat &=QGLFormat::defaultFormat(),QGLWidget *=0

/*
[1]QGLPixelBuffer ( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
[2]QGLPixelBuffer ( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
*/

HB_FUNC_STATIC( QGLPIXELBUFFER_NEW )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISQGLFORMAT(2)||ISNIL(2)) && (ISQGLWIDGET(3)||ISNIL(3)) )
  {
    QGLPixelBuffer_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISQGLFORMAT(3)||ISNIL(3)) && (ISQGLWIDGET(4)||ISNIL(4)) )
  {
    QGLPixelBuffer_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
$internalMethod=|GLuint|bindTexture,bindTexture1|const QImage &,GLenum=GL_TEXTURE_2D

$prototype=GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
$internalMethod=|GLuint|bindTexture,bindTexture2|const QPixmap &,GLenum=GL_TEXTURE_2D

$prototype=GLuint bindTexture ( const QString & fileName )
$internalMethod=|GLuint|bindTexture,bindTexture3|const QString &

/*
[1]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D )
[2]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
[3]GLuint bindTexture ( const QString & fileName )
*/

HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE )
{
  if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGLPixelBuffer_bindTexture1();
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QGLPixelBuffer_bindTexture2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLPixelBuffer_bindTexture3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindTexture

$prototypeV2=bool bindToDynamicTexture( GLuint texture_id )

$prototypeV2=void deleteTexture( GLuint texture_id )

$prototypeV2=bool doneCurrent()

$prototype=void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture1|const QRectF &,GLuint,GLenum=GL_TEXTURE_2D

$prototype=void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
$internalMethod=|void|drawTexture,drawTexture2|const QPointF &,GLuint,GLenum=GL_TEXTURE_2D

/*
[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/

HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLPixelBuffer_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGLPixelBuffer_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=drawTexture

$prototypeV2=QGLFormat format() const

$prototypeV2=GLuint generateDynamicTexture() const

$prototypeV2=bool isValid() const

$prototypeV2=bool makeCurrent()

$prototypeV2=void releaseFromDynamicTexture()

$prototypeV2=QSize size() const

$prototypeV2=QImage toImage() const

$prototypeV2=void updateDynamicTexture( GLuint texture_id ) const

$prototypeV2=virtual QPaintEngine * paintEngine() const

$prototypeV2=static bool hasOpenGLPbuffers()

#pragma ENDDUMP
