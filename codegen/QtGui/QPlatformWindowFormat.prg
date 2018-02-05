%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPLATFORMGLCONTEXT
REQUEST QPLATFORMWINDOWFORMAT
#endif

CLASS QPlatformWindowFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accum
   METHOD accumBufferSize
   METHOD alpha
   METHOD alphaBufferSize
   METHOD blueBufferSize
   METHOD depth
   METHOD depthBufferSize
   METHOD directRendering
   METHOD doubleBuffer
   METHOD greenBufferSize
   METHOD hasWindowSurface
   METHOD redBufferSize
   METHOD rgba
   METHOD sampleBuffers
   METHOD samples
   METHOD setAccum
   METHOD setAccumBufferSize
   METHOD setAlpha
   METHOD setAlphaBufferSize
   METHOD setBlueBufferSize
   METHOD setDepth
   METHOD setDepthBufferSize
   METHOD setDirectRendering
   METHOD setDoubleBuffer
   METHOD setGreenBufferSize
   METHOD setOption
   METHOD setRedBufferSize
   METHOD setRgba
   METHOD setSampleBuffers
   METHOD setSamples
   METHOD setSharedContext
   METHOD setStencil
   METHOD setStencilBufferSize
   METHOD setStereo
   METHOD setSwapInterval
   METHOD setWindowApi
   METHOD setWindowSurface
   METHOD sharedGLContext
   METHOD stencil
   METHOD stencilBufferSize
   METHOD stereo
   METHOD swapInterval
   METHOD testOption
   METHOD windowApi
   METHOD defaultFormat
   METHOD setDefaultFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPlatformWindowFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QPlatformWindowFormat ()
$internalConstructor=|new1|

$prototype=QPlatformWindowFormat ( FormatOptions options )
$internalConstructor=|new2|QPlatformWindowFormat::FormatOptions

$prototype=QPlatformWindowFormat ( const QPlatformWindowFormat & other )
$internalConstructor=|new3|const QPlatformWindowFormat &

//[1]QPlatformWindowFormat ()
//[2]QPlatformWindowFormat ( FormatOptions options )
//[3]QPlatformWindowFormat ( const QPlatformWindowFormat & other )

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

$deleteMethod

$prototype=bool accum () const
$method=|bool|accum|

$prototype=int accumBufferSize () const
$method=|int|accumBufferSize|

$prototype=bool alpha () const
$method=|bool|alpha|

$prototype=int alphaBufferSize () const
$method=|int|alphaBufferSize|

$prototype=int blueBufferSize () const
$method=|int|blueBufferSize|

$prototype=bool depth () const
$method=|bool|depth|

$prototype=int depthBufferSize () const
$method=|int|depthBufferSize|

$prototype=bool directRendering () const
$method=|bool|directRendering|

$prototype=bool doubleBuffer () const
$method=|bool|doubleBuffer|

$prototype=int greenBufferSize () const
$method=|int|greenBufferSize|

$prototype=bool hasWindowSurface () const
$method=|bool|hasWindowSurface|

$prototype=int redBufferSize () const
$method=|int|redBufferSize|

$prototype=bool rgba () const
$method=|bool|rgba|

$prototype=bool sampleBuffers () const
$method=|bool|sampleBuffers|

$prototype=int samples () const
$method=|int|samples|

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

$prototype=int stencilBufferSize () const
$method=|int|stencilBufferSize|

$prototype=bool stereo () const
$method=|bool|stereo|

$prototype=int swapInterval () const
$method=|int|swapInterval|

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
