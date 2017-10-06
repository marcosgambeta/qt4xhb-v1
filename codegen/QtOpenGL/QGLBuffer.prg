$header

#include "hbclass.ch"

CLASS QGLBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD allocate1
   METHOD allocate2
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD release1
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD release2
   METHOD release

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLBuffer ()
*/
HB_FUNC_STATIC( QGLBUFFER_NEW1 )
{
  QGLBuffer * o = new QGLBuffer ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLBuffer ( QGLBuffer::Type type )
*/
HB_FUNC_STATIC( QGLBUFFER_NEW2 )
{
  QGLBuffer * o = new QGLBuffer ( (QGLBuffer::Type) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLBuffer ( const QGLBuffer & other )
*/
HB_FUNC_STATIC( QGLBUFFER_NEW3 )
{
  QGLBuffer * o = new QGLBuffer ( *PQGLBUFFER(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLBuffer ()
//[2]QGLBuffer ( QGLBuffer::Type type )
//[3]QGLBuffer ( const QGLBuffer & other )

HB_FUNC_STATIC( QGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLBUFFER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGLBUFFER(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void allocate ( const void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_ALLOCATE1 )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const void * par1 = (const void *) hb_parptr(1);
    int par2 = hb_parni(2);
    obj->allocate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void allocate ( int count )
*/
HB_FUNC_STATIC( QGLBUFFER_ALLOCATE2 )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->allocate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void allocate ( const void * data, int count )
//[2]void allocate ( int count )

HB_FUNC_STATIC( QGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLBUFFER_ALLOCATE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_ALLOCATE2 );
  }
}

/*
bool bind ()
*/
$method=|bool|bind|

/*
GLuint bufferId () const
*/
HB_FUNC_STATIC( QGLBUFFER_BUFFERID )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RGLUINT( obj->bufferId () );
  }
}

/*
bool create ()
*/
$method=|bool|create|

/*
void destroy ()
*/
HB_FUNC_STATIC( QGLBUFFER_DESTROY )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->destroy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCreated () const
*/
$method=|bool|isCreated|

/*
void * map ( QGLBuffer::Access access )
*/
HB_FUNC_STATIC( QGLBUFFER_MAP )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    void * retptr = obj->map ( (QGLBuffer::Access) par1 );
  hb_retptr( (void *) retptr );
  }
}

/*
bool read ( int offset, void * data, int count )
*/
$method=|bool|read|int,void *,int

/*
void release ()
*/
HB_FUNC_STATIC( QGLBUFFER_RELEASE1 )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->release ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUsagePattern ( QGLBuffer::UsagePattern value )
*/
HB_FUNC_STATIC( QGLBUFFER_SETUSAGEPATTERN )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setUsagePattern ( (QGLBuffer::UsagePattern) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int size () const
*/
$method=|int|size|

/*
QGLBuffer::Type type () const
*/
HB_FUNC_STATIC( QGLBUFFER_TYPE )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

/*
bool unmap ()
*/
$method=|bool|unmap|

/*
QGLBuffer::UsagePattern usagePattern () const
*/
HB_FUNC_STATIC( QGLBUFFER_USAGEPATTERN )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->usagePattern () );
  }
}




/*
void release ( QGLBuffer::Type type )
*/
HB_FUNC_STATIC( QGLBUFFER_RELEASE2 )
{
  int par1 = hb_parni(1);
  QGLBuffer::release ( (QGLBuffer::Type) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void release ()
//[2]void release ( QGLBuffer::Type type )

HB_FUNC_STATIC( QGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLBUFFER_RELEASE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_RELEASE2 );
  }
}

$extraMethods

#pragma ENDDUMP
