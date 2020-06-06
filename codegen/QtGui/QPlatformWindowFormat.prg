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

$prototype=bool accum () const
$method=|bool|accum|

$prototypeV2=int accumBufferSize() const

$prototype=bool alpha () const
$method=|bool|alpha|

$prototypeV2=int alphaBufferSize() const

$prototypeV2=int blueBufferSize() const

$prototype=bool depth () const
$method=|bool|depth|

$prototypeV2=int depthBufferSize() const

$prototype=bool directRendering () const
$method=|bool|directRendering|

$prototype=bool doubleBuffer () const
$method=|bool|doubleBuffer|

$prototypeV2=int greenBufferSize() const

$prototype=bool hasWindowSurface () const
$method=|bool|hasWindowSurface|

$prototypeV2=int redBufferSize() const

$prototype=bool rgba () const
$method=|bool|rgba|

$prototype=bool sampleBuffers () const
$method=|bool|sampleBuffers|

$prototypeV2=int samples() const

$prototype=void setAccum ( bool enable )
$method=|void|setAccum|bool

$prototype=void setAccumBufferSize ( int size )
$method=|void|setAccumBufferSize|int

$prototype=void setAlpha ( bool enable )
$method=|void|setAlpha|bool

$prototype=void setAlphaBufferSize ( int size )
$method=|void|setAlphaBufferSize|int

$prototype=void setBlueBufferSize ( int size )
$method=|void|setBlueBufferSize|int

$prototype=void setDepth ( bool enable )
$method=|void|setDepth|bool

$prototype=void setDepthBufferSize ( int size )
$method=|void|setDepthBufferSize|int

$prototype=void setDirectRendering ( bool enable )
$method=|void|setDirectRendering|bool

$prototype=void setDoubleBuffer ( bool enable )
$method=|void|setDoubleBuffer|bool

$prototype=void setGreenBufferSize ( int size )
$method=|void|setGreenBufferSize|int

$prototype=void setOption ( QPlatformWindowFormat::FormatOptions opt )
$method=|void|setOption|QPlatformWindowFormat::FormatOptions

$prototype=void setRedBufferSize ( int size )
$method=|void|setRedBufferSize|int

$prototype=void setRgba ( bool enable )
$method=|void|setRgba|bool

$prototype=void setSampleBuffers ( bool enable )
$method=|void|setSampleBuffers|bool

$prototype=void setSamples ( int numSamples )
$method=|void|setSamples|int

$prototype=void setSharedContext ( QPlatformGLContext * context )
$method=|void|setSharedContext|QPlatformGLContext *

$prototype=void setStencil ( bool enable )
$method=|void|setStencil|bool

$prototype=void setStencilBufferSize ( int size )
$method=|void|setStencilBufferSize|int

$prototype=void setStereo ( bool enable )
$method=|void|setStereo|bool

$prototype=void setSwapInterval ( int interval )
$method=|void|setSwapInterval|int

$prototype=void setWindowApi ( QPlatformWindowFormat::WindowApi api )
$method=|void|setWindowApi|QPlatformWindowFormat::WindowApi

$prototype=void setWindowSurface ( bool enable )
$method=|void|setWindowSurface|bool

$prototype=QPlatformGLContext * sharedGLContext () const
$method=|QPlatformGLContext *|sharedGLContext|

$prototype=bool stencil () const
$method=|bool|stencil|

$prototypeV2=int stencilBufferSize() const

$prototype=bool stereo () const
$method=|bool|stereo|

$prototypeV2=int swapInterval() const

$prototype=bool testOption ( QPlatformWindowFormat::FormatOptions opt ) const
$method=|bool|testOption|QPlatformWindowFormat::FormatOptions

$prototype=WindowApi windowApi () const
$method=|QPlatformWindowFormat::WindowApi|windowApi|

$prototype=static QPlatformWindowFormat defaultFormat ()
$staticMethod=|QPlatformWindowFormat|defaultFormat|

$prototype=static void setDefaultFormat ( const QPlatformWindowFormat & f )
$staticMethod=|void|setDefaultFormat|const QPlatformWindowFormat &

$extraMethods

#pragma ENDDUMP
