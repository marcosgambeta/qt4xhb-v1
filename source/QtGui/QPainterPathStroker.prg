/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QPainterPathStroker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD capStyle
   METHOD createStroke
   METHOD curveThreshold
   METHOD dashOffset
   METHOD dashPattern
   METHOD joinStyle
   METHOD miterLimit
   METHOD setCapStyle
   METHOD setCurveThreshold
   METHOD setDashOffset
   METHOD setDashPattern
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setWidth
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPainterPathStroker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPainterPathStroker>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

/*
QPainterPathStroker()
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainterPathStroker * obj = new QPainterPathStroker();
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_DELETE )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::PenCapStyle capStyle() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CAPSTYLE )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->capStyle() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QPainterPath createStroke( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CREATESTROKE )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->createStroke( *PQPAINTERPATH(1)) );
      Qt4xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal curveThreshold() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CURVETHRESHOLD )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->curveThreshold() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal dashOffset() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHOFFSET )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dashOffset() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVector<qreal> dashPattern() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHPATTERN )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<qreal> list = obj->dashPattern();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      const int count = list.count();
      for( int i = 0; i < count; i++ )
      {
        PHB_ITEM pItem = hb_itemPutND( NULL, (qreal) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::PenJoinStyle joinStyle() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_JOINSTYLE )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->joinStyle() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal miterLimit() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_MITERLIMIT )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->miterLimit() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCapStyle( Qt::PenCapStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCAPSTYLE )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCapStyle( ( Qt::PenCapStyle ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCurveThreshold( qreal threshold )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCURVETHRESHOLD )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCurveThreshold( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDashOffset( qreal offset )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHOFFSET )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setDashOffset( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setDashPattern( Qt::PenStyle style )
    */
    QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->setDashPattern( ( Qt::PenStyle ) hb_parni(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void setDashPattern( const QVector<qreal> & dashPattern )
    */
    QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QVector<qreal> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      const int nLen1 = hb_arrayLen(aList1);
      qreal temp1;
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        temp1 = hb_arrayGetND(aList1, i1+1);
        par1 << temp1;
      }
      obj->setDashPattern( par1 );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setJoinStyle( Qt::PenJoinStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETJOINSTYLE )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setJoinStyle( ( Qt::PenJoinStyle ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setMiterLimit( qreal limit )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETMITERLIMIT )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMiterLimit( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setWidth( qreal width )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETWIDTH )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWidth( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
qreal width() const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_WIDTH )
{
  QPainterPathStroker * obj = static_cast<QPainterPathStroker*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->width() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTERPATHSTROKER_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTERPATHSTROKER_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
