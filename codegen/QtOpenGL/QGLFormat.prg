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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFormat ()
$internalConstructor=|new1|

$prototype=QGLFormat ( QGL::FormatOptions options, int plane = 0 )
$internalConstructor=|new2|QGL::FormatOptions,int=0

$prototype=QGLFormat ( const QGLFormat & other )
$internalConstructor=|new3|const QGLFormat &

/*
[1]QGLFormat ()
[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
[3]QGLFormat ( const QGLFormat & other )
*/

HB_FUNC_STATIC( QGLFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQGLFORMAT(1) )
  {
    QGLFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototype=~QGLFormat()
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

$prototypeV2=bool hasOverlay() const

$prototypeV2=int majorVersion() const

$prototypeV2=int minorVersion() const

$prototypeV2=int plane() const

$prototypeV2=QGLFormat::OpenGLContextProfile profile() const

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

$prototypeV2=void setOption( QGL::FormatOptions opt )

$prototypeV2=void setOverlay( bool enable )

$prototypeV2=void setPlane( int plane )

$prototypeV2=void setProfile( QGLFormat::OpenGLContextProfile profile )

$prototypeV2=void setRedBufferSize( int size )

$prototypeV2=void setRgba( bool enable )

$prototypeV2=void setSampleBuffers( bool enable )

$prototypeV2=void setSamples( int numSamples )

$prototypeV2=void setStencil( bool enable )

$prototypeV2=void setStencilBufferSize( int size )

$prototypeV2=void setStereo( bool enable )

$prototypeV2=void setSwapInterval( int interval )

$prototypeV2=void setVersion( int major, int minor )

$prototypeV2=bool stencil() const

$prototypeV2=int stencilBufferSize() const

$prototypeV2=bool stereo() const

$prototypeV2=int swapInterval() const

$prototypeV2=bool testOption( QGL::FormatOptions opt ) const

$prototypeV2=static QGLFormat defaultFormat()

$prototypeV2=static QGLFormat defaultOverlayFormat()

$prototypeV2=static bool hasOpenGL()

$prototypeV2=static bool hasOpenGLOverlays()

$prototypeV2=static QGLFormat::OpenGLVersionFlags openGLVersionFlags()

$prototypeV2=static void setDefaultFormat( const QGLFormat & f )

$prototypeV2=static void setDefaultOverlayFormat( const QGLFormat & f )

%% #if defined(Q_WS_QPA)

$prototype=static QGLFormat fromPlatformWindowFormat(const QPlatformWindowFormat &format)
$staticMethod=|QGLFormat|fromPlatformWindowFormat|const QPlatformWindowFormat &|#if defined(Q_WS_QPA)

$prototype=static QPlatformWindowFormat toPlatformWindowFormat(const QGLFormat &format)
$staticMethod=|QPlatformWindowFormat|toPlatformWindowFormat|const QGLFormat &|#if defined(Q_WS_QPA)

%% #endif

$prototype=void detach() (private)

$extraMethods

#pragma ENDDUMP
