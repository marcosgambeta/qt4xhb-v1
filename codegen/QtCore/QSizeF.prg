$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
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
   METHOD toSize
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

#include <QSizeF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSizeF ()
*/
HB_FUNC_STATIC( QSIZEF_NEW1 )
{
  QSizeF * o = new QSizeF ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSizeF ( const QSize & size )
*/
HB_FUNC_STATIC( QSIZEF_NEW2 )
{
  QSizeF * o = new QSizeF ( *PQSIZE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSizeF ( qreal width, qreal height )
*/
HB_FUNC_STATIC( QSIZEF_NEW3 )
{
  QSizeF * o = new QSizeF ( PQREAL(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSizeF ()
//[2]QSizeF ( const QSize & size )
//[3]QSizeF ( qreal width, qreal height )

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSizeF boundedTo ( const QSizeF & otherSize ) const
*/
HB_FUNC_STATIC( QSIZEF_BOUNDEDTO )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->boundedTo ( *PQSIZEF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QSizeF expandedTo ( const QSizeF & otherSize ) const
*/
HB_FUNC_STATIC( QSIZEF_EXPANDEDTO )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->expandedTo ( *PQSIZEF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal height () const
*/
HB_FUNC_STATIC( QSIZEF_HEIGHT )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->height () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QSIZEF_ISEMPTY )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSIZEF_ISNULL )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QSIZEF_ISVALID )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}




/*
void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
*/
HB_FUNC_STATIC( QSIZEF_SCALE1 )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( PQREAL(1), PQREAL(2), (Qt::AspectRatioMode) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scale ( const QSizeF & size, Qt::AspectRatioMode mode )
*/
HB_FUNC_STATIC( QSIZEF_SCALE2 )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->scale ( *PQSIZEF(1), (Qt::AspectRatioMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSizeF & size, Qt::AspectRatioMode mode )

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE2 );
  }
}

/*
void setHeight ( qreal height )
*/
HB_FUNC_STATIC( QSIZEF_SETHEIGHT )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QSIZEF_SETWIDTH )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize toSize () const
*/
HB_FUNC_STATIC( QSIZEF_TOSIZE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void transpose ()
*/
HB_FUNC_STATIC( QSIZEF_TRANSPOSE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->transpose ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width () const
*/
HB_FUNC_STATIC( QSIZEF_WIDTH )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->width () );
  }
}

$extraMethods

#pragma ENDDUMP
