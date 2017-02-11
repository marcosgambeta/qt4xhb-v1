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
HB_FUNC( QPLATFORMWINDOWFORMAT_NEW1 )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_NEW2 )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_NEW3 )
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

HB_FUNC( QPLATFORMWINDOWFORMAT_NEW )
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

HB_FUNC( QPLATFORMWINDOWFORMAT_DELETE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_ACCUM )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->accum (  );
    hb_retl( b );
  }
}


/*
int accumBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_ACCUMBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->accumBufferSize (  );
    hb_retni( i );
  }
}


/*
bool alpha () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_ALPHA )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->alpha (  );
    hb_retl( b );
  }
}


/*
int alphaBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_ALPHABUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->alphaBufferSize (  );
    hb_retni( i );
  }
}


/*
int blueBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_BLUEBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->blueBufferSize (  );
    hb_retni( i );
  }
}


/*
bool depth () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_DEPTH )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->depth (  );
    hb_retl( b );
  }
}


/*
int depthBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_DEPTHBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->depthBufferSize (  );
    hb_retni( i );
  }
}


/*
bool directRendering () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_DIRECTRENDERING )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->directRendering (  );
    hb_retl( b );
  }
}


/*
bool doubleBuffer () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_DOUBLEBUFFER )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->doubleBuffer (  );
    hb_retl( b );
  }
}


/*
int greenBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_GREENBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->greenBufferSize (  );
    hb_retni( i );
  }
}


/*
bool hasWindowSurface () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_HASWINDOWSURFACE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasWindowSurface (  );
    hb_retl( b );
  }
}


/*
int redBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_REDBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->redBufferSize (  );
    hb_retni( i );
  }
}


/*
bool rgba () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_RGBA )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->rgba (  );
    hb_retl( b );
  }
}


/*
bool sampleBuffers () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_SAMPLEBUFFERS )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->sampleBuffers (  );
    hb_retl( b );
  }
}


/*
int samples () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_SAMPLES )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->samples (  );
    hb_retni( i );
  }
}


/*
void setAccum ( bool enable )
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_SETACCUM )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETACCUMBUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETALPHA )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETALPHABUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETBLUEBUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETDEPTH )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETDEPTHBUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETDIRECTRENDERING )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETDOUBLEBUFFER )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETGREENBUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETOPTION )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETREDBUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETRGBA )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSAMPLEBUFFERS )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSAMPLES )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSHAREDCONTEXT )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSTENCIL )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSTENCILBUFFERSIZE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSTEREO )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETSWAPINTERVAL )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETWINDOWAPI )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SETWINDOWSURFACE )
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
HB_FUNC( QPLATFORMWINDOWFORMAT_SHAREDGLCONTEXT )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPlatformGLContext * ptr = obj->sharedGLContext (  );
    _qt4xhb_createReturnClass ( ptr, "QPLATFORMGLCONTEXT" );  }
}


/*
bool stencil () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_STENCIL )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->stencil (  );
    hb_retl( b );
  }
}


/*
int stencilBufferSize () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_STENCILBUFFERSIZE )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->stencilBufferSize (  );
    hb_retni( i );
  }
}


/*
bool stereo () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_STEREO )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->stereo (  );
    hb_retl( b );
  }
}


/*
int swapInterval () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_SWAPINTERVAL )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->swapInterval (  );
    hb_retni( i );
  }
}


/*
bool testOption ( QPlatformWindowFormat::FormatOptions opt ) const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_TESTOPTION )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testOption (  (QPlatformWindowFormat::FormatOptions) par1 );
    hb_retl( b );
  }
}


/*
WindowApi windowApi () const
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_WINDOWAPI )
{
  QPlatformWindowFormat * obj = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->windowApi (  );
    hb_retni( i );
  }
}



/*
QPlatformWindowFormat defaultFormat ()
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_DEFAULTFORMAT )
{
  QPlatformWindowFormat * ptr = new QPlatformWindowFormat( QPlatformWindowFormat::defaultFormat (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPLATFORMWINDOWFORMAT" );}


/*
void setDefaultFormat ( const QPlatformWindowFormat & f )
*/
HB_FUNC( QPLATFORMWINDOWFORMAT_SETDEFAULTFORMAT )
{
  QPlatformWindowFormat * par1 = (QPlatformWindowFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPlatformWindowFormat::setDefaultFormat ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



