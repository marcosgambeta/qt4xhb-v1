/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGLCOLORMAP
REQUEST QGLCONTEXT
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPIXMAP

CLASS QGLWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QGLWidget
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD bindTexture1
   METHOD bindTexture2
   METHOD bindTexture3
   METHOD bindTexture4
   METHOD bindTexture5
   METHOD bindTexture
   METHOD colormap
   METHOD context
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD doubleBuffer
   METHOD drawTexture1
   METHOD drawTexture2
   METHOD drawTexture
   METHOD format
   METHOD grabFrameBuffer
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD makeOverlayCurrent
   METHOD overlayContext
   METHOD qglClearColor
   METHOD qglColor
   METHOD renderPixmap
   METHOD renderText1
   METHOD renderText2
   METHOD renderText
   METHOD setColormap
   METHOD setMouseTracking
   METHOD swapBuffers
   METHOD updateGL
   METHOD updateOverlayGL
   METHOD convertToGLFormat
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGLWidget>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QGLWIDGET_NEW1 )
{
  QGLWidget * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const QGLWidget * par2 = ISNIL(2)? 0 : (const QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  o = new QGLWidget ( par1, par2,  (Qt::WindowFlags) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QGLWIDGET_NEW2 )
{
  QGLWidget * o = NULL;
  QGLContext * par1 = (QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  const QGLWidget * par3 = ISNIL(3)? 0 : (const QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  o = new QGLWidget ( par1, par2, par3,  (Qt::WindowFlags) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QGLWIDGET_NEW3 )
{
  QGLWidget * o = NULL;
  QGLFormat * par1 = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  const QGLWidget * par3 = ISNIL(3)? 0 : (const QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
  o = new QGLWidget ( *par1, par2, par3,  (Qt::WindowFlags) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QGLWidget ( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
//[2]QGLWidget ( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
//[3]QGLWidget ( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QGLWIDGET_NEW )
{
  if( ISBETWEEN(0,3) && (ISQWIDGET(1)||ISNIL(1)) && (ISQGLWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_NEW1 );
  }
  else if( ISBETWEEN(1,4) && ISQGLCONTEXT(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISQGLWIDGET(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_NEW2 );
  }
  else if( ISBETWEEN(1,4) && ISQGLFORMAT(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISQGLWIDGET(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QGLWIDGET_DELETE )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE1 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLenum par2 = ISNIL(2)? GL_TEXTURE_2D : hb_parni(2);
    GLint par3 = ISNIL(3)? GL_RGBA : hb_parni(3);
    hb_retni( (GLuint) obj->bindTexture ( *par1, par2, par3 ) );
  }
}


/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE2 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLenum par2 = ISNIL(2)? GL_TEXTURE_2D : hb_parni(2);
    GLint par3 = ISNIL(3)? GL_RGBA : hb_parni(3);
    hb_retni( (GLuint) obj->bindTexture ( *par1, par2, par3 ) );
  }
}


/*
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE3 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLenum par2 = hb_parni(2);
    GLint par3 = hb_parni(3);
    int par4 = hb_parni(4);
    hb_retni( (GLuint) obj->bindTexture ( *par1, par2, par3,  (QGLContext::BindOptions) par4 ) );
  }
}


/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE4 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLenum par2 = hb_parni(2);
    GLint par3 = hb_parni(3);
    int par4 = hb_parni(4);
    hb_retni( (GLuint) obj->bindTexture ( *par1, par2, par3,  (QGLContext::BindOptions) par4 ) );
  }
}


/*
GLuint bindTexture ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE5 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retni( (GLuint) obj->bindTexture ( par1 ) );
  }
}


//[1]GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[2]GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
//[3]GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
//[4]GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
//[5]GLuint bindTexture ( const QString & fileName )

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE ) // TODO: resolver conflitos 1/2 com 3/4
{
  if( ISBETWEEN(1,3) && ISQIMAGE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE1 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE2 );
  }
  else if( ISBETWEEN(3,4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE3 );
  }
  else if( ISBETWEEN(3,4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLWIDGET_BINDTEXTURE5 );
  }
}

/*
const QGLColormap & colormap () const
*/
HB_FUNC_STATIC( QGLWIDGET_COLORMAP )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGLColormap * ptr = &obj->colormap (  );
    _qt4xhb_createReturnClass ( ptr, "QGLCOLORMAP" );
  }
}


/*
const QGLContext * context () const
*/
HB_FUNC_STATIC( QGLWIDGET_CONTEXT )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGLContext * ptr = obj->context (  );
    _qt4xhb_createReturnClass ( ptr, "QGLCONTEXT" );
  }
}


/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLWIDGET_DELETETEXTURE )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLuint par1 = hb_parni(1);
    obj->deleteTexture ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void doneCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_DONECURRENT )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->doneCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLWIDGET_DOUBLEBUFFER )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->doubleBuffer (  ) );
  }
}


/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE1 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    GLuint par2 = hb_parni(2);
    GLenum par3 = ISNIL(3)? GL_TEXTURE_2D : hb_parni(3);
    obj->drawTexture ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE2 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_DRAWTEXTURE1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_DRAWTEXTURE2 );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLWIDGET_FORMAT )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLFormat * ptr = new QGLFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
  }
}


/*
QImage grabFrameBuffer ( bool withAlpha = false )
*/
HB_FUNC_STATIC( QGLWIDGET_GRABFRAMEBUFFER )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = ISNIL(1)? false : hb_parl(1);
    QImage * ptr = new QImage( obj->grabFrameBuffer ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISSHARING )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSharing (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISVALID )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
void makeCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKECURRENT )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->makeCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void makeOverlayCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKEOVERLAYCURRENT )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->makeOverlayCurrent (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QGLContext * overlayContext () const
*/
HB_FUNC_STATIC( QGLWIDGET_OVERLAYCONTEXT )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGLContext * ptr = obj->overlayContext (  );
    _qt4xhb_createReturnClass ( ptr, "QGLCONTEXT" );
  }
}


/*
void qglClearColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCLEARCOLOR )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->qglClearColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void qglColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCOLOR )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->qglColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPixmap renderPixmap ( int w = 0, int h = 0, bool useContext = false )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERPIXMAP )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 0 : hb_parni(1);
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    bool par3 = ISNIL(3)? false : hb_parl(3);
    QPixmap * ptr = new QPixmap( obj->renderPixmap ( par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
void renderText ( int x, int y, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT1 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QString par3 = hb_parc(3);
    QFont par4 = ISNIL(4)? QFont() : *(QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par5 = ISNIL(5)? 2000 : hb_parni(5);
    obj->renderText ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void renderText ( double x, double y, double z, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT2 )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    QString par3 = hb_parc(3);
    QFont par4 = ISNIL(4)? QFont() : *(QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par5 = ISNIL(5)? 2000 : hb_parni(5);
    obj->renderText ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void renderText ( int x, int y, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
//[2]void renderText ( double x, double y, double z, const QString & str, const QFont & font = QFont(), int listBase = 2000 )

HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT )
{
  if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISQFONT(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT1 );
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISCHAR(4) && (ISQFONT(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QGLWIDGET_RENDERTEXT2 );
  }
}

/*
void setColormap ( const QGLColormap & cmap )
*/
HB_FUNC_STATIC( QGLWIDGET_SETCOLORMAP )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLColormap * par1 = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setColormap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMouseTracking ( bool enable )
*/
HB_FUNC_STATIC( QGLWIDGET_SETMOUSETRACKING )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setMouseTracking ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void swapBuffers ()
*/
HB_FUNC_STATIC( QGLWIDGET_SWAPBUFFERS )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->swapBuffers (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void updateGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEGL )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateGL (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void updateOverlayGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEOVERLAYGL )
{
  QGLWidget * obj = (QGLWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updateOverlayGL (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QImage convertToGLFormat ( const QImage & img )
*/
HB_FUNC_STATIC( QGLWIDGET_CONVERTTOGLFORMAT )
{
  QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QImage * ptr = new QImage( QGLWidget::convertToGLFormat ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
}




#pragma ENDDUMP
