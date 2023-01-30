/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPAINTENGINE
REQUEST QSIZE
#endif

CLASS QGLPixelBuffer INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD bindToDynamicTexture
   METHOD deleteTexture
   METHOD doneCurrent
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

PROCEDURE destroyObject() CLASS QGLPixelBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtOpenGL/QGLPixelBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGLPIXELBUFFER_NEW )
{
  if( ISBETWEEN( 1, 3 ) && ISQSIZE( 1 ) && ( ISQGLFORMAT( 2 ) || HB_ISNIL( 2 ) ) && ( ISQGLWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
  {
    /*
    QGLPixelBuffer( const QSize & size, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
    */
    QGLPixelBuffer * obj = new QGLPixelBuffer( *PQSIZE( 1 ), HB_ISNIL( 2 ) ? QGLFormat::defaultFormat() : *static_cast< QGLFormat * >( Qt4xHb::itemGetPtr( 2 ) ), OPQGLWIDGET( 3, 0 ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISBETWEEN( 2, 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && ( ISQGLFORMAT( 3 ) || HB_ISNIL( 3 ) ) && ( ISQGLWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
  {
    /*
    QGLPixelBuffer( int width, int height, const QGLFormat & format = QGLFormat::defaultFormat(), QGLWidget * shareWidget = 0 )
    */
    QGLPixelBuffer * obj = new QGLPixelBuffer( PINT( 1 ), PINT( 2 ), HB_ISNIL( 3 ) ? QGLFormat::defaultFormat() : *static_cast< QGLFormat * >( Qt4xHb::itemGetPtr( 3 ) ), OPQGLWIDGET( 4, 0 ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLPIXELBUFFER_DELETE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTEXTURE )
{
  if( ISBETWEEN( 1, 2 ) && ISQIMAGE( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    /*
    GLuint bindTexture( const QImage & image, GLenum target = GL_TEXTURE_2D )
    */
    QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      RGLUINT( obj->bindTexture( *PQIMAGE( 1 ), OPGLENUM( 2, GL_TEXTURE_2D ) ) );
    }
  }
  else if( ISBETWEEN( 1, 2 ) && ISQPIXMAP( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    /*
    GLuint bindTexture( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D )
    */
    QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      RGLUINT( obj->bindTexture( *PQPIXMAP( 1 ), OPGLENUM( 2, GL_TEXTURE_2D ) ) );
    }
  }
  else if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
  {
    /*
    GLuint bindTexture( const QString & fileName )
    */
    QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      RGLUINT( obj->bindTexture( PQSTRING( 1 ) ) );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bindToDynamicTexture( GLuint texture_id )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_BINDTODYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->bindToDynamicTexture( PGLUINT( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void deleteTexture( GLuint texture_id )
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DELETETEXTURE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->deleteTexture( PGLUINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool doneCurrent()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_DONECURRENT )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->doneCurrent() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QGLPIXELBUFFER_DRAWTEXTURE )
{
  if( ISBETWEEN( 2, 3 ) && ISQRECTF( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    /*
    void drawTexture( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
    */
    QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      obj->drawTexture( *PQRECTF( 1 ), PGLUINT( 2 ), OPGLENUM( 3, GL_TEXTURE_2D ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISBETWEEN( 2, 3 ) && ISQPOINTF( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    /*
    void drawTexture( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
    */
    QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      obj->drawTexture( *PQPOINTF( 1 ), PGLUINT( 2 ), OPGLENUM( 3, GL_TEXTURE_2D ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_FORMAT )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QGLFormat * ptr = new QGLFormat( obj->format() );
      Qt4xHb::createReturnClass( ptr, "QGLFORMAT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
GLuint generateDynamicTexture() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_GENERATEDYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RGLUINT( obj->generateDynamicTexture() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_ISVALID )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool makeCurrent()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_MAKECURRENT )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->makeCurrent() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void releaseFromDynamicTexture()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_RELEASEFROMDYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->releaseFromDynamicTexture();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_SIZE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->size() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QImage toImage() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_TOIMAGE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QImage * ptr = new QImage( obj->toImage() );
      Qt4xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void updateDynamicTexture( GLuint texture_id ) const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_UPDATEDYNAMICTEXTURE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->updateDynamicTexture( PGLUINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPaintEngine * paintEngine() const
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_PAINTENGINE )
{
  QGLPixelBuffer * obj = static_cast< QGLPixelBuffer * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPaintEngine * ptr = obj->paintEngine();
      Qt4xHb::createReturnClass( ptr, "QPAINTENGINE", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static bool hasOpenGLPbuffers()
*/
HB_FUNC_STATIC( QGLPIXELBUFFER_HASOPENGLPBUFFERS )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RBOOL( QGLPixelBuffer::hasOpenGLPbuffers() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
