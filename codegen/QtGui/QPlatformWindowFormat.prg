%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlatformWindowFormat ()
$internalConstructor=|new1|

$prototype=QPlatformWindowFormat ( FormatOptions options )
$internalConstructor=|new2|QPlatformWindowFormat::FormatOptions

$prototype=QPlatformWindowFormat ( const QPlatformWindowFormat & other )
$internalConstructor=|new3|const QPlatformWindowFormat &

/*
[1]QPlatformWindowFormat ()
[2]QPlatformWindowFormat ( FormatOptions options )
[3]QPlatformWindowFormat ( const QPlatformWindowFormat & other )
*/

HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlatformWindowFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPlatformWindowFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQPLATFORMWINDOWFORMAT(1) )
  {
    QPlatformWindowFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool accum() const

$prototypeV2=int accumBufferSize() const

$prototypeV2=bool alpha() const

$prototypeV2=int alphaBufferSize() const

$prototypeV2=int blueBufferSize() const

$prototypeV2=bool depth() const

$prototypeV2=int depthBufferSize() const

$prototypeV2=bool directRendering() const

$prototypeV2=bool doubleBuffer() const

$prototypeV2=int greenBufferSize() const

$prototypeV2=bool hasWindowSurface() const

$prototypeV2=int redBufferSize() const

$prototypeV2=bool rgba() const

$prototypeV2=bool sampleBuffers() const

$prototypeV2=int samples() const

$prototypeV2=void setAccum( bool enable )

$prototypeV2=void setAccumBufferSize( int size )

$prototypeV2=void setAlpha( bool enable )

$prototypeV2=void setAlphaBufferSize( int size )

$prototypeV2=void setBlueBufferSize( int size )

$prototypeV2=void setDepth( bool enable )

$prototypeV2=void setDepthBufferSize( int size )

$prototypeV2=void setDirectRendering( bool enable )

$prototypeV2=void setDoubleBuffer( bool enable )

$prototypeV2=void setGreenBufferSize( int size )

$prototypeV2=void setOption( QPlatformWindowFormat::FormatOptions opt )

$prototypeV2=void setRedBufferSize( int size )

$prototypeV2=void setRgba( bool enable )

$prototypeV2=void setSampleBuffers( bool enable )

$prototypeV2=void setSamples( int numSamples )

$prototypeV2=void setSharedContext( QPlatformGLContext * context )

$prototypeV2=void setStencil( bool enable )

$prototypeV2=void setStencilBufferSize( int size )

$prototypeV2=void setStereo( bool enable )

$prototypeV2=void setSwapInterval( int interval )

$prototypeV2=void setWindowApi( QPlatformWindowFormat::WindowApi api )

$prototypeV2=void setWindowSurface( bool enable )

$prototypeV2=QPlatformGLContext * sharedGLContext() const

$prototypeV2=bool stencil() const

$prototypeV2=int stencilBufferSize() const

$prototypeV2=bool stereo() const

$prototypeV2=int swapInterval() const

$prototypeV2=bool testOption( QPlatformWindowFormat::FormatOptions opt ) const

$prototypeV2=QPlatformWindowFormat::WindowApi windowApi() const

$prototypeV2=static QPlatformWindowFormat defaultFormat()

$prototypeV2=static void setDefaultFormat( const QPlatformWindowFormat & f )

$extraMethods

#pragma ENDDUMP
