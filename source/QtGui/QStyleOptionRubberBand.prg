/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStyleOptionRubberBand INHERIT QStyleOption

   METHOD new
   METHOD shape
   METHOD setShape
   METHOD opaque
   METHOD setOpaque

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionRubberBand
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionRubberBand>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionRubberBand()
*/
void QStyleOptionRubberBand_new1()
{
  QStyleOptionRubberBand * obj = new QStyleOptionRubberBand();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QStyleOptionRubberBand( const QStyleOptionRubberBand & other )
*/
void QStyleOptionRubberBand_new2()
{
  QStyleOptionRubberBand * obj = new QStyleOptionRubberBand( *PQSTYLEOPTIONRUBBERBAND(1) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionRubberBand_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONRUBBERBAND(1) )
  {
    QStyleOptionRubberBand_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRubberBand::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SHAPE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SETSHAPE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->shape= (QRubberBand::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool opaque
*/
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_OPAQUE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->opaque );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_SETOPAQUE )
{
  QStyleOptionRubberBand * obj = (QStyleOptionRubberBand *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->opaque= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
