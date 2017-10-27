$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLFORMAT
#endif

CLASS QGLFormat

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
   METHOD hasOverlay
   METHOD majorVersion
   METHOD minorVersion
   METHOD plane
   METHOD profile
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
   METHOD setOverlay
   METHOD setPlane
   METHOD setProfile
   METHOD setRedBufferSize
   METHOD setRgba
   METHOD setSampleBuffers
   METHOD setSamples
   METHOD setStencil
   METHOD setStencilBufferSize
   METHOD setStereo
   METHOD setSwapInterval
   METHOD setVersion
   METHOD stencil
   METHOD stencilBufferSize
   METHOD stereo
   METHOD swapInterval
   METHOD testOption
   METHOD defaultFormat
   METHOD defaultOverlayFormat
   METHOD hasOpenGL
   METHOD hasOpenGLOverlays
   METHOD openGLVersionFlags
   METHOD setDefaultFormat
   METHOD setDefaultOverlayFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_NEW1 )
{
  QGLFormat * o = new QGLFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW2 )
{
  int par1 = hb_parni(1);
  QGLFormat * o = new QGLFormat ( (QGL::FormatOptions) par1, OPINT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFormat ( const QGLFormat & other )
*/
HB_FUNC_STATIC( QGLFORMAT_NEW3 )
{
  QGLFormat * o = new QGLFormat ( *PQGLFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    HB_FUNC_EXEC( QGLFORMAT_NEW3 );
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
bool hasOverlay () const
*/
$method=|bool|hasOverlay|

/*
int majorVersion () const
*/
$method=|int|majorVersion|

/*
int minorVersion () const
*/
$method=|int|minorVersion|

/*
int plane () const
*/
$method=|int|plane|

/*
OpenGLContextProfile profile () const
*/
$method=|QGLFormat::OpenGLContextProfile|profile|

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
void setOption ( QGL::FormatOptions opt )
*/
$method=|void|setOption|QGL::FormatOptions

/*
void setOverlay ( bool enable )
*/
$method=|void|setOverlay|bool

/*
void setPlane ( int plane )
*/
$method=|void|setPlane|int

/*
void setProfile ( OpenGLContextProfile profile )
*/
$method=|void|setProfile|QGLFormat::OpenGLContextProfile

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
void setVersion ( int major, int minor )
*/
$method=|void|setVersion|int,int

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
bool testOption ( QGL::FormatOptions opt ) const
*/
$method=|bool|testOption|QGL::FormatOptions

/*
QGLFormat defaultFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultFormat () );
  _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
}


/*
QGLFormat defaultOverlayFormat ()
*/
HB_FUNC_STATIC( QGLFORMAT_DEFAULTOVERLAYFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultOverlayFormat () );
  _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );
}

/*
static bool hasOpenGL ()
*/
$staticMethod=|bool|hasOpenGL|

/*
static bool hasOpenGLOverlays ()
*/
$staticMethod=|bool|hasOpenGLOverlays|

/*
static OpenGLVersionFlags openGLVersionFlags ()
*/
HB_FUNC_STATIC( QGLFORMAT_OPENGLVERSIONFLAGS )
{
  hb_retni( (int) QGLFormat::openGLVersionFlags () );
}


/*
void setDefaultFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTFORMAT )
{
  QGLFormat::setDefaultFormat ( *PQGLFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultOverlayFormat ( const QGLFormat & f )
*/
HB_FUNC_STATIC( QGLFORMAT_SETDEFAULTOVERLAYFORMAT )
{
  QGLFormat::setDefaultOverlayFormat ( *PQGLFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
