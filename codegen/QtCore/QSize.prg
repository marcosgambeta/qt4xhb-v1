$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSize

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD boundedTo
   METHOD expandedTo
   METHOD height
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD scale1
   METHOD scale2
   METHOD scale
   METHOD setHeight
   METHOD setWidth
   METHOD transpose
   METHOD width
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSize>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSize ()
*/
HB_FUNC_STATIC( QSIZE_NEW1 )
{
  QSize * o = new QSize ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSize ( int width, int height )
*/
HB_FUNC_STATIC( QSIZE_NEW2 )
{
  QSize * o = new QSize ( PINT(1), PINT(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSize ()
//[2]QSize ( int width, int height )

HB_FUNC_STATIC( QSIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSize boundedTo ( const QSize & otherSize ) const
*/
HB_FUNC_STATIC( QSIZE_BOUNDEDTO )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->boundedTo ( *PQSIZE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize expandedTo ( const QSize & otherSize ) const
*/
HB_FUNC_STATIC( QSIZE_EXPANDEDTO )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->expandedTo ( *PQSIZE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QSIZE_HEIGHT )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QSIZE_ISEMPTY )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSIZE_ISNULL )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSIZE_ISVALID )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}




/*
void scale ( int width, int height, Qt::AspectRatioMode mode )
*/
HB_FUNC_STATIC( QSIZE_SCALE1 )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( PINT(1), PINT(2), (Qt::AspectRatioMode) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scale ( const QSize & size, Qt::AspectRatioMode mode )
*/
HB_FUNC_STATIC( QSIZE_SCALE2 )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( *PQSIZE(1), (Qt::AspectRatioMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void scale ( int width, int height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSize & size, Qt::AspectRatioMode mode )

HB_FUNC_STATIC( QSIZE_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZE_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZE_SCALE2 );
  }
}

/*
void setHeight ( int height )
*/
HB_FUNC_STATIC( QSIZE_SETHEIGHT )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( int width )
*/
HB_FUNC_STATIC( QSIZE_SETWIDTH )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void transpose ()
*/
HB_FUNC_STATIC( QSIZE_TRANSPOSE )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->transpose ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int width () const
*/
HB_FUNC_STATIC( QSIZE_WIDTH )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}

$extraMethods

#pragma ENDDUMP
