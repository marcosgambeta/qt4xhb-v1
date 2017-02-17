/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPLATFORMGLCONTEXT
REQUEST QPLATFORMWINDOWFORMAT

CLASS QPlatformWindowFormat

   DATA pointer
   DATA class_id INIT Class_Id_QPlatformWindowFormat
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QPlatformWindowFormat
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPlatformWindowFormat
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPlatformWindowFormat
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPlatformWindowFormat
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPlatformWindowFormat
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPlatformWindowFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QPlatformWindowFormat>

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
QPlatformWindowFormat ()
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW1 )
{
  QPlatformWindowFormat * o = NULL;
  o = new QPlatformWindowFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlatformWindowFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QPlatformWindowFormat ( FormatOptions options )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW2 )
{
  QPlatformWindowFormat * o = NULL;
  int par1 = hb_parni(1);
  o = new QPlatformWindowFormat (  (QPlatformWindowFormat::FormatOptions) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlatformWindowFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QPlatformWindowFormat ( const QPlatformWindowFormat & other )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_NEW3 )
{
  QPlatformWindowFormat * o = NULL;
  QPlatformWindowFormat * par1 = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPlatformWindowFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlatformWindowFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retl( obj->accum (  ) );
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
    hb_retni( obj->accumBufferSize (  ) );
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
    hb_retl( obj->alpha (  ) );
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
    hb_retni( obj->alphaBufferSize (  ) );
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
    hb_retni( obj->blueBufferSize (  ) );
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
    hb_retl( obj->depth (  ) );
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
    hb_retni( obj->depthBufferSize (  ) );
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
    hb_retl( obj->directRendering (  ) );
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
    hb_retl( obj->doubleBuffer (  ) );
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
    hb_retni( obj->greenBufferSize (  ) );
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
    hb_retl( obj->hasWindowSurface (  ) );
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
    hb_retni( obj->redBufferSize (  ) );
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
    hb_retl( obj->rgba (  ) );
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
    hb_retl( obj->sampleBuffers (  ) );
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
    hb_retni( obj->samples (  ) );
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
    bool par1 = hb_parl(1);
    obj->setAccum ( par1 );
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
    int par1 = hb_parni(1);
    obj->setAccumBufferSize ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setAlpha ( par1 );
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
    int par1 = hb_parni(1);
    obj->setAlphaBufferSize ( par1 );
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
    int par1 = hb_parni(1);
    obj->setBlueBufferSize ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setDepth ( par1 );
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
    int par1 = hb_parni(1);
    obj->setDepthBufferSize ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setDirectRendering ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setDoubleBuffer ( par1 );
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
    int par1 = hb_parni(1);
    obj->setGreenBufferSize ( par1 );
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
    obj->setOption (  (QPlatformWindowFormat::FormatOptions) par1 );
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
    int par1 = hb_parni(1);
    obj->setRedBufferSize ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setRgba ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setSampleBuffers ( par1 );
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
    int par1 = hb_parni(1);
    obj->setSamples ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setStencil ( par1 );
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
    int par1 = hb_parni(1);
    obj->setStencilBufferSize ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setStereo ( par1 );
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
    int par1 = hb_parni(1);
    obj->setSwapInterval ( par1 );
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
    obj->setWindowApi (  (QPlatformWindowFormat::WindowApi) par1 );
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
    bool par1 = hb_parl(1);
    obj->setWindowSurface ( par1 );
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
    QPlatformGLContext * ptr = obj->sharedGLContext (  );
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
    hb_retl( obj->stencil (  ) );
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
    hb_retni( obj->stencilBufferSize (  ) );
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
    hb_retl( obj->stereo (  ) );
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
    hb_retni( obj->swapInterval (  ) );
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
    hb_retl( obj->testOption (  (QPlatformWindowFormat::FormatOptions) par1 ) );
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
    hb_retni( (int) obj->windowApi (  ) );
  }
}



/*
QPlatformWindowFormat defaultFormat ()
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_DEFAULTFORMAT )
{
  QPlatformWindowFormat * ptr = new QPlatformWindowFormat( QPlatformWindowFormat::defaultFormat (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPLATFORMWINDOWFORMAT" );
}


/*
void setDefaultFormat ( const QPlatformWindowFormat & f )
*/
HB_FUNC_STATIC( QPLATFORMWINDOWFORMAT_SETDEFAULTFORMAT )
{
  QPlatformWindowFormat * par1 = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPlatformWindowFormat::setDefaultFormat ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
