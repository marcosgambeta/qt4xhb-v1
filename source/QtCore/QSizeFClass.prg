/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QSizeF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QSIZEF_DELETE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

HB_FUNC_STATIC( QSIZEF_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSIZEF_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
