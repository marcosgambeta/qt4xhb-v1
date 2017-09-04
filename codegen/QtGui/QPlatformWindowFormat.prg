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

PROCEDURE destroyObject () CLASS QPlatformWindowFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPlatformWindowFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPlatformWindowFormat ()
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW1 )
{
  QPlatformWindowFormat * o = new QPlatformWindowFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPlatformWindowFormat ( FormatOptions options )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW2 )
{
  int par1 = hb_parni(1);
  QPlatformWindowFormat * o = new QPlatformWindowFormat ( (QPlatformWindowFormat::FormatOptions) par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPlatformWindowFormat ( const QPlatformWindowFormat & other )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW3 )
{
  QPlatformWindowFormat * o = new QPlatformWindowFormat ( *PQPLATFORMWINDOWFORMAT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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

HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DELETE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool accum () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_ACCUM )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->accum () );
  }
}

/*
int accumBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_ACCUMBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->accumBufferSize () );
  }
}

/*
bool alpha () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_ALPHA )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->alpha () );
  }
}

/*
int alphaBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_ALPHABUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->alphaBufferSize () );
  }
}

/*
int blueBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_BLUEBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->blueBufferSize () );
  }
}

/*
bool depth () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DEPTH )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->depth () );
  }
}

/*
int depthBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DEPTHBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->depthBufferSize () );
  }
}

/*
bool directRendering () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DIRECTRENDERING )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->directRendering () );
  }
}

/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DOUBLEBUFFER )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->doubleBuffer () );
  }
}

/*
int greenBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_GREENBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->greenBufferSize () );
  }
}

/*
bool hasWindowSurface () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_HASWINDOWSURFACE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasWindowSurface () );
  }
}

/*
int redBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_REDBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->redBufferSize () );
  }
}

/*
bool rgba () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_RGBA )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rgba () );
  }
}

/*
bool sampleBuffers () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SAMPLEBUFFERS )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->sampleBuffers () );
  }
}

/*
int samples () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SAMPLES )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->samples () );
  }
}

/*
void setAccum ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETACCUM )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAccum ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccumBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETACCUMBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAccumBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlpha ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETALPHA )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlpha ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlphaBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETALPHABUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAlphaBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBlueBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETBLUEBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBlueBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDepth ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETDEPTH )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDepth ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDepthBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETDEPTHBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDepthBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirectRendering ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETDIRECTRENDERING )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDirectRendering ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleBuffer ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETDOUBLEBUFFER )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDoubleBuffer ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGreenBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETGREENBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGreenBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption ( QPlatformWindowFormat::FormatOptions opt )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETOPTION )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QPlatformWindowFormat::FormatOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRedBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETREDBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRedBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRgba ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETRGBA )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRgba ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSampleBuffers ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSAMPLEBUFFERS )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSampleBuffers ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSamples ( int numSamples )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSAMPLES )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSamples ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSharedContext ( QPlatformGLContext * context )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSHAREDCONTEXT )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPlatformGLContext * par1 = (QPlatformGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSharedContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStencil ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSTENCIL )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStencil ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStencilBufferSize ( int size )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSTENCILBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStencilBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStereo ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSTEREO )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStereo ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSwapInterval ( int interval )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETSWAPINTERVAL )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSwapInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowApi ( QPlatformWindowFormat::WindowApi api )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETWINDOWAPI )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowApi ( (QPlatformWindowFormat::WindowApi) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowSurface ( bool enable )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETWINDOWSURFACE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWindowSurface ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPlatformGLContext * sharedGLContext () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SHAREDGLCONTEXT )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPlatformGLContext * ptr = obj->sharedGLContext ();
    _qt4xhb_createReturnClass ( ptr, "QPLATFORMGLCONTEXT" );
  }
}

/*
bool stencil () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_STENCIL )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->stencil () );
  }
}

/*
int stencilBufferSize () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_STENCILBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->stencilBufferSize () );
  }
}

/*
bool stereo () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_STEREO )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->stereo () );
  }
}

/*
int swapInterval () const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SWAPINTERVAL )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->swapInterval () );
  }
}

/*
bool testOption ( QPlatformWindowFormat::FormatOptions opt ) const
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_TESTOPTION )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption ( (QPlatformWindowFormat::FormatOptions) par1 ) );
  }
}

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
QPlatformWindowFormat defaultFormat ()
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DEFAULTFORMAT )
{
  QPlatformWindowFormat * ptr = new QPlatformWindowFormat( QPlatformWindowFormat::defaultFormat () );
  _qt4xhb_createReturnClass ( ptr, "QPLATFORMWINDOWFORMAT" );
}

/*
void setDefaultFormat ( const QPlatformWindowFormat & f )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETDEFAULTFORMAT )
{
  QPlatformWindowFormat::setDefaultFormat ( *PQPLATFORMWINDOWFORMAT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
