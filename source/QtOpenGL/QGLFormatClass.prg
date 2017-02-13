/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGLFORMAT

CLASS QGLFormat

   DATA pointer
   DATA class_id INIT Class_Id_QGLFormat
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

METHOD newFrom (p) CLASS QGLFormat
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QGLFormat
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QGLFormat
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QGLFormat
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QGLFormat
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QGLFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGLFormat>

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
QGLFormat ()
*/
HB_FUNC( QGLFORMAT_NEW1 )
{
  QGLFormat * o = NULL;
  o = new QGLFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGLFormat ( QGL::FormatOptions options, int plane = 0 )
*/
HB_FUNC( QGLFORMAT_NEW2 )
{
  QGLFormat * o = NULL;
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? 0 : hb_parni(2);
  o = new QGLFormat (  (QGL::FormatOptions) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGLFormat ( const QGLFormat & other )
*/
HB_FUNC( QGLFORMAT_NEW3 )
{
  QGLFormat * o = NULL;
  QGLFormat * par1 = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGLFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QGLFormat ()
//[2]QGLFormat ( QGL::FormatOptions options, int plane = 0 )
//[3]QGLFormat ( const QGLFormat & other )

HB_FUNC( QGLFORMAT_NEW )
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

HB_FUNC( QGLFORMAT_DELETE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_ACCUM )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->accum (  );
    hb_retl( b );
  }
}


/*
int accumBufferSize () const
*/
HB_FUNC( QGLFORMAT_ACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->accumBufferSize (  );
    hb_retni( i );
  }
}


/*
bool alpha () const
*/
HB_FUNC( QGLFORMAT_ALPHA )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->alpha (  );
    hb_retl( b );
  }
}


/*
int alphaBufferSize () const
*/
HB_FUNC( QGLFORMAT_ALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->alphaBufferSize (  );
    hb_retni( i );
  }
}


/*
int blueBufferSize () const
*/
HB_FUNC( QGLFORMAT_BLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->blueBufferSize (  );
    hb_retni( i );
  }
}


/*
bool depth () const
*/
HB_FUNC( QGLFORMAT_DEPTH )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->depth (  );
    hb_retl( b );
  }
}


/*
int depthBufferSize () const
*/
HB_FUNC( QGLFORMAT_DEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->depthBufferSize (  );
    hb_retni( i );
  }
}


/*
bool directRendering () const
*/
HB_FUNC( QGLFORMAT_DIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->directRendering (  );
    hb_retl( b );
  }
}


/*
bool doubleBuffer () const
*/
HB_FUNC( QGLFORMAT_DOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->doubleBuffer (  );
    hb_retl( b );
  }
}


/*
int greenBufferSize () const
*/
HB_FUNC( QGLFORMAT_GREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->greenBufferSize (  );
    hb_retni( i );
  }
}


/*
bool hasOverlay () const
*/
HB_FUNC( QGLFORMAT_HASOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasOverlay (  );
    hb_retl( b );
  }
}


/*
int majorVersion () const
*/
HB_FUNC( QGLFORMAT_MAJORVERSION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->majorVersion (  );
    hb_retni( i );
  }
}


/*
int minorVersion () const
*/
HB_FUNC( QGLFORMAT_MINORVERSION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->minorVersion (  );
    hb_retni( i );
  }
}


/*
int plane () const
*/
HB_FUNC( QGLFORMAT_PLANE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->plane (  );
    hb_retni( i );
  }
}


/*
OpenGLContextProfile profile () const
*/
HB_FUNC( QGLFORMAT_PROFILE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->profile (  );
    hb_retni( i );
  }
}


/*
int redBufferSize () const
*/
HB_FUNC( QGLFORMAT_REDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->redBufferSize (  );
    hb_retni( i );
  }
}


/*
bool rgba () const
*/
HB_FUNC( QGLFORMAT_RGBA )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->rgba (  );
    hb_retl( b );
  }
}


/*
bool sampleBuffers () const
*/
HB_FUNC( QGLFORMAT_SAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->sampleBuffers (  );
    hb_retl( b );
  }
}


/*
int samples () const
*/
HB_FUNC( QGLFORMAT_SAMPLES )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->samples (  );
    hb_retni( i );
  }
}


/*
void setAccum ( bool enable )
*/
HB_FUNC( QGLFORMAT_SETACCUM )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETACCUMBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETALPHA )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETALPHABUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETBLUEBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETDEPTH )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETDEPTHBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETDIRECTRENDERING )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETDOUBLEBUFFER )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETGREENBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGreenBufferSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( QGL::FormatOptions opt )
*/
HB_FUNC( QGLFORMAT_SETOPTION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QGL::FormatOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverlay ( bool enable )
*/
HB_FUNC( QGLFORMAT_SETOVERLAY )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setOverlay ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlane ( int plane )
*/
HB_FUNC( QGLFORMAT_SETPLANE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPlane ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProfile ( OpenGLContextProfile profile )
*/
HB_FUNC( QGLFORMAT_SETPROFILE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProfile (  (QGLFormat::OpenGLContextProfile) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRedBufferSize ( int size )
*/
HB_FUNC( QGLFORMAT_SETREDBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETRGBA )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETSAMPLEBUFFERS )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETSAMPLES )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSamples ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStencil ( bool enable )
*/
HB_FUNC( QGLFORMAT_SETSTENCIL )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETSTENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETSTEREO )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QGLFORMAT_SETSWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSwapInterval ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVersion ( int major, int minor )
*/
HB_FUNC( QGLFORMAT_SETVERSION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setVersion ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool stencil () const
*/
HB_FUNC( QGLFORMAT_STENCIL )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->stencil (  );
    hb_retl( b );
  }
}


/*
int stencilBufferSize () const
*/
HB_FUNC( QGLFORMAT_STENCILBUFFERSIZE )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->stencilBufferSize (  );
    hb_retni( i );
  }
}


/*
bool stereo () const
*/
HB_FUNC( QGLFORMAT_STEREO )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->stereo (  );
    hb_retl( b );
  }
}


/*
int swapInterval () const
*/
HB_FUNC( QGLFORMAT_SWAPINTERVAL )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->swapInterval (  );
    hb_retni( i );
  }
}


/*
bool testOption ( QGL::FormatOptions opt ) const
*/
HB_FUNC( QGLFORMAT_TESTOPTION )
{
  QGLFormat * obj = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testOption (  (QGL::FormatOptions) par1 );
    hb_retl( b );
  }
}



/*
QGLFormat defaultFormat ()
*/
HB_FUNC( QGLFORMAT_DEFAULTFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultFormat (  ) );
  _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );}


/*
QGLFormat defaultOverlayFormat ()
*/
HB_FUNC( QGLFORMAT_DEFAULTOVERLAYFORMAT )
{
  QGLFormat * ptr = new QGLFormat( QGLFormat::defaultOverlayFormat (  ) );
  _qt4xhb_createReturnClass ( ptr, "QGLFORMAT" );}


/*
bool hasOpenGL ()
*/
HB_FUNC( QGLFORMAT_HASOPENGL )
{
  bool b = QGLFormat::hasOpenGL (  );
  hb_retl( b );
}


/*
bool hasOpenGLOverlays ()
*/
HB_FUNC( QGLFORMAT_HASOPENGLOVERLAYS )
{
  bool b = QGLFormat::hasOpenGLOverlays (  );
  hb_retl( b );
}


/*
OpenGLVersionFlags openGLVersionFlags ()
*/
HB_FUNC( QGLFORMAT_OPENGLVERSIONFLAGS )
{
  int i = QGLFormat::openGLVersionFlags (  );
  hb_retni( i );
}


/*
void setDefaultFormat ( const QGLFormat & f )
*/
HB_FUNC( QGLFORMAT_SETDEFAULTFORMAT )
{
  QGLFormat * par1 = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLFormat::setDefaultFormat ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultOverlayFormat ( const QGLFormat & f )
*/
HB_FUNC( QGLFORMAT_SETDEFAULTOVERLAYFORMAT )
{
  QGLFormat * par1 = (QGLFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLFormat::setDefaultOverlayFormat ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
