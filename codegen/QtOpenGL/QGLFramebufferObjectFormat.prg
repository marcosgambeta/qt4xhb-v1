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

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFramebufferObjectFormat ()
$internalConstructor=|new1|

$prototype=QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
$internalConstructor=|new2|const QGLFramebufferObjectFormat &

/*
[1]QGLFramebufferObjectFormat ()
[2]QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
*/

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFramebufferObjectFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    QGLFramebufferObjectFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QGLFramebufferObject::Attachment attachment() const

$prototypeV2=GLenum internalTextureFormat() const

$prototypeV2=int samples() const

$prototypeV2=void setAttachment( QGLFramebufferObject::Attachment attachment )

$prototypeV2=void setInternalTextureFormat( GLenum internalTextureFormat )

$prototypeV2=void setSamples( int samples )

$prototypeV2=void setTextureTarget( GLenum target )

$prototypeV2=GLenum textureTarget() const

#pragma ENDDUMP
