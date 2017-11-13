$header

#include "hbclass.ch"

CLASS QGLFramebufferObjectFormat INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD attachment
   METHOD internalTextureFormat
   METHOD samples
   METHOD setAttachment
   METHOD setInternalTextureFormat
   METHOD setSamples
   METHOD setTextureTarget
   METHOD textureTarget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLFramebufferObjectFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFramebufferObjectFormat ()
*/
$internalConstructor=|new1|

/*
QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
*/
$internalConstructor=|new2|const QGLFramebufferObjectFormat &

//[1]QGLFramebufferObjectFormat ()
//[2]QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFrameBufferObjectFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    QGLFrameBufferObjectFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QGLFramebufferObject::Attachment attachment () const
*/
$method=|QGLFramebufferObject::Attachment|attachment|

/*
GLenum internalTextureFormat () const
*/
$method=|GLenum|internalTextureFormat|

/*
int samples () const
*/
$method=|int|samples|

/*
void setAttachment ( QGLFramebufferObject::Attachment attachment )
*/
$method=|void|setAttachment|QGLFramebufferObject::Attachment

/*
void setInternalTextureFormat ( GLenum internalTextureFormat )
*/
$method=|void|setInternalTextureFormat|GLenum

/*
void setSamples ( int samples )
*/
$method=|void|setSamples|int

/*
void setTextureTarget ( GLenum target )
*/
$method=|void|setTextureTarget|GLenum

/*
GLenum textureTarget () const
*/
$method=|GLenum|textureTarget|

#pragma ENDDUMP
