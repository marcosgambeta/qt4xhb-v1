/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFRAMEBUFFEROBJECTFORMAT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QPAINTENGINE
#endif

CLASS QGLFramebufferObject INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QGLFramebufferObject
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QGLFramebufferObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QGLFramebufferObject * o = NULL;
  QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  GLenum par2 = ISNIL(2)? GL_TEXTURE_2D : hb_parni(2);
  o = new QGLFramebufferObject ( *par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, GLenum target = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW2 )
{
  QGLFramebufferObject * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  o = new QGLFramebufferObject ( par1, par2, par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( const QSize & size, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW3 )
{
  QGLFramebufferObject * o = NULL;
  QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLFramebufferObjectFormat * par2 = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGLFramebufferObject ( *par1, *par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, const QGLFramebufferObjectFormat & format )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW4 )
{
  QGLFramebufferObject * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QGLFramebufferObjectFormat * par3 = (QGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGLFramebufferObject ( par1, par2, *par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( int width, int height, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW5 )
{
  QGLFramebufferObject * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  GLenum par4 = ISNIL(4)? GL_TEXTURE_2D : hb_parni(4);
  GLenum par5 = ISNIL(5)? GL_RGBA8 : hb_parni(5);
  o = new QGLFramebufferObject ( par1, par2,  (QGLFramebufferObject::Attachment) par3, par4, par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFramebufferObject ( const QSize & size, Attachment attachment, GLenum target = GL_TEXTURE_2D, GLenum internal_format = GL_RGBA8 )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_NEW6 )
{
  QGLFramebufferObject * o = NULL;
  QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
  GLenum par4 = ISNIL(4)? GL_RGBA8 : hb_parni(4);
  o = new QGLFramebufferObject ( *par1,  (QGLFramebufferObject::Attachment) par2, par3, par4 );
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

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DELETE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


/*
Attachment attachment () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ATTACHMENT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->attachment (  ) );
  }
}


/*
bool bind ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BIND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE1 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
    obj->drawTexture ( *par1, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_DRAWTEXTURE2 )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLuint par2 = hb_parni(2);
    GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
    obj->drawTexture ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
}

/*
QGLFramebufferObjectFormat format () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_FORMAT )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLFramebufferObjectFormat * ptr = new QGLFramebufferObjectFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QGLFRAMEBUFFEROBJECTFORMAT" );
  }
}


/*
GLuint handle () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HANDLE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (GLuint) obj->handle (  ) );
  }
}


/*
bool isBound () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISBOUND )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isBound (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_ISVALID )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool release ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_RELEASE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->release (  ) );
  }
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_SIZE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
GLuint texture () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TEXTURE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (GLuint) obj->texture (  ) );
  }
}


/*
QImage toImage () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_TOIMAGE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage (  ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
virtual QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_PAINTENGINE )
{
  QGLFramebufferObject * obj = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}



/*
void blitFramebuffer ( QGLFramebufferObject * target, const QRect & targetRect, QGLFramebufferObject * source, const QRect & sourceRect, GLbitfield buffers = GL_COLOR_BUFFER_BIT, GLenum filter = GL_NEAREST )
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_BLITFRAMEBUFFER )
{
  QGLFramebufferObject * par1 = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QRect * par2 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLFramebufferObject * par3 = (QGLFramebufferObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QRect * par4 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  GLenum par6 = ISNIL(6)? GL_NEAREST : hb_parni(6);
  QGLFramebufferObject::blitFramebuffer ( par1, *par2, par3, *par4, par6 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasOpenGLFramebufferBlit ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFERBLIT )
{
  hb_retl( QGLFramebufferObject::hasOpenGLFramebufferBlit (  ) );
}


/*
bool hasOpenGLFramebufferObjects ()
*/
HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECT_HASOPENGLFRAMEBUFFEROBJECTS )
{
  hb_retl( QGLFramebufferObject::hasOpenGLFramebufferObjects (  ) );
}




#pragma ENDDUMP
