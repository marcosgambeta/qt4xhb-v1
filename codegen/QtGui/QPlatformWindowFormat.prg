$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPLATFORMGLCONTEXT
REQUEST QPLATFORMWINDOWFORMAT
#endif

CLASS QPlatformWindowFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*
QPlatformWindowFormat ()
*/
$constructor=|new1|

/*
QPlatformWindowFormat ( FormatOptions options )
*/
$constructor=|new2|QPlatformWindowFormat::FormatOptions

/*
QPlatformWindowFormat ( const QPlatformWindowFormat & other )
*/
$constructor=|new3|const QPlatformWindowFormat &

//[1]QPlatformWindowFormat ()
//[2]QPlatformWindowFormat ( FormatOptions options )
//[3]QPlatformWindowFormat ( const QPlatformWindowFormat & other )

HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPLATFORMWINDOWFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPLATFORMWINDOWFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPLATFORMWINDOWFORMAT(1) )
  {
    HB_FUNC_EXEC( QPLATFORMWINDOWFORMAT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool accum () const
*/
$method=|bool|accum|

/*
int accumBufferSize () const
*/
$method=|int|accumBufferSize|

/*
bool alpha () const
*/
$method=|bool|alpha|

/*
int alphaBufferSize () const
*/
$method=|int|alphaBufferSize|

/*
int blueBufferSize () const
*/
$method=|int|blueBufferSize|

/*
bool depth () const
*/
$method=|bool|depth|

/*
int depthBufferSize () const
*/
$method=|int|depthBufferSize|

/*
bool directRendering () const
*/
$method=|bool|directRendering|

/*
bool doubleBuffer () const
*/
$method=|bool|doubleBuffer|

/*
int greenBufferSize () const
*/
$method=|int|greenBufferSize|

/*
bool hasWindowSurface () const
*/
$method=|bool|hasWindowSurface|

/*
int redBufferSize () const
*/
$method=|int|redBufferSize|

/*
bool rgba () const
*/
$method=|bool|rgba|

/*
bool sampleBuffers () const
*/
$method=|bool|sampleBuffers|

/*
int samples () const
*/
$method=|int|samples|

/*
void setAccum ( bool enable )
*/
$method=|void|setAccum|bool

/*
void setAccumBufferSize ( int size )
*/
$method=|void|setAccumBufferSize|int

/*
void setAlpha ( bool enable )
*/
$method=|void|setAlpha|bool

/*
void setAlphaBufferSize ( int size )
*/
$method=|void|setAlphaBufferSize|int

/*
void setBlueBufferSize ( int size )
*/
$method=|void|setBlueBufferSize|int

/*
void setDepth ( bool enable )
*/
$method=|void|setDepth|bool

/*
void setDepthBufferSize ( int size )
*/
$method=|void|setDepthBufferSize|int

/*
void setDirectRendering ( bool enable )
*/
$method=|void|setDirectRendering|bool

/*
void setDoubleBuffer ( bool enable )
*/
$method=|void|setDoubleBuffer|bool

/*
void setGreenBufferSize ( int size )
*/
$method=|void|setGreenBufferSize|int

/*
void setOption ( QPlatformWindowFormat::FormatOptions opt )
*/
$method=|void|setOption|QPlatformWindowFormat::FormatOptions

/*
void setRedBufferSize ( int size )
*/
$method=|void|setRedBufferSize|int

/*
void setRgba ( bool enable )
*/
$method=|void|setRgba|bool

/*
void setSampleBuffers ( bool enable )
*/
$method=|void|setSampleBuffers|bool

/*
void setSamples ( int numSamples )
*/
$method=|void|setSamples|int

/*
void setSharedContext ( QPlatformGLContext * context )
*/
$method=|void|setSharedContext|QPlatformGLContext *

/*
void setStencil ( bool enable )
*/
$method=|void|setStencil|bool

/*
void setStencilBufferSize ( int size )
*/
$method=|void|setStencilBufferSize|int

/*
void setStereo ( bool enable )
*/
$method=|void|setStereo|bool

/*
void setSwapInterval ( int interval )
*/
$method=|void|setSwapInterval|int

/*
void setWindowApi ( QPlatformWindowFormat::WindowApi api )
*/
$method=|void|setWindowApi|QPlatformWindowFormat::WindowApi

/*
void setWindowSurface ( bool enable )
*/
$method=|void|setWindowSurface|bool

/*
QPlatformGLContext * sharedGLContext () const
*/
$method=|QPlatformGLContext *|sharedGLContext|

/*
bool stencil () const
*/
$method=|bool|stencil|

/*
int stencilBufferSize () const
*/
$method=|int|stencilBufferSize|

/*
bool stereo () const
*/
$method=|bool|stereo|

/*
int swapInterval () const
*/
$method=|int|swapInterval|

/*
bool testOption ( QPlatformWindowFormat::FormatOptions opt ) const
*/
$method=|bool|testOption|QPlatformWindowFormat::FormatOptions

/*
WindowApi windowApi () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_WINDOWAPI )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->windowApi () );
  }
}

/*
static QPlatformWindowFormat defaultFormat ()
*/
$staticMethod=|QPlatformWindowFormat|defaultFormat|

/*
static void setDefaultFormat ( const QPlatformWindowFormat & f )
*/
$staticMethod=|void|setDefaultFormat|const QPlatformWindowFormat &

$extraMethods

#pragma ENDDUMP
