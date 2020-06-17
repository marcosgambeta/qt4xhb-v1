/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSITEM
REQUEST QMATRIX
REQUEST QPOINTF
REQUEST QTIMELINE
#endif

CLASS QGraphicsItemAnimation INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD horizontalScaleAt
   METHOD horizontalShearAt
   METHOD item
   METHOD matrixAt
   METHOD posAt
   METHOD rotationAt
   METHOD setItem
   METHOD setPosAt
   METHOD setRotationAt
   METHOD setScaleAt
   METHOD setShearAt
   METHOD setTimeLine
   METHOD setTranslationAt
   METHOD timeLine
   METHOD verticalScaleAt
   METHOD verticalShearAt
   METHOD xTranslationAt
   METHOD yTranslationAt
   METHOD setStep

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsItemAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsItemAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QMatrix>
#include <QtCore/QPointF>
#include <QtCore/QTimeLine>

/*
QGraphicsItemAnimation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGraphicsItemAnimation * obj = new QGraphicsItemAnimation( OPQOBJECT(1,0) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_DELETE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
void clear()
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_CLEAR )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal horizontalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->horizontalScaleAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal horizontalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_HORIZONTALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->horizontalShearAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QGraphicsItem * item() const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGraphicsItem * ptr = obj->item();
      Qt4xHb::createReturnClass( ptr, "QGRAPHICSITEM", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMatrix matrixAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_MATRIXAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QMatrix * ptr = new QMatrix( obj->matrixAt( PQREAL(1) ) );
      Qt4xHb::createReturnClass( ptr, "QMATRIX", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPointF posAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_POSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QPointF * ptr = new QPointF( obj->posAt( PQREAL(1) ) );
      Qt4xHb::createReturnClass( ptr, "QPOINTF", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal rotationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_ROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->rotationAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setItem ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETITEM )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
    {
#endif
      obj->setItem( PQGRAPHICSITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPosAt ( qreal step, const QPointF & point )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETPOSAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
    {
#endif
      obj->setPosAt( PQREAL(1), *PQPOINTF(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRotationAt ( qreal step, qreal angle )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETROTATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setRotationAt( PQREAL(1), PQREAL(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScaleAt ( qreal step, qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      obj->setScaleAt( PQREAL(1), PQREAL(2), PQREAL(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShearAt ( qreal step, qreal sh, qreal sv )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      obj->setShearAt( PQREAL(1), PQREAL(2), PQREAL(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTimeLine ( QTimeLine * timeLine )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIMELINE(1) )
    {
#endif
      obj->setTimeLine( PQTIMELINE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTranslationAt ( qreal step, qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      obj->setTranslationAt( PQREAL(1), PQREAL(2), PQREAL(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTimeLine * timeLine() const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_TIMELINE )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTimeLine * ptr = obj->timeLine();
      Qt4xHb::createReturnQObjectClass( ptr, "QTIMELINE" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal verticalScaleAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSCALEAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->verticalScaleAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal verticalShearAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_VERTICALSHEARAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->verticalShearAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal xTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_XTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->xTranslationAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal yTranslationAt ( qreal step ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_YTRANSLATIONAT )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->yTranslationAt( PQREAL(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setStep ( qreal step )
*/
HB_FUNC_STATIC( QGRAPHICSITEMANIMATION_SETSTEP )
{
  QGraphicsItemAnimation * obj = (QGraphicsItemAnimation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setStep( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
