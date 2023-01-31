/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QStyleOptionTabWidgetFrame INHERIT QStyleOption

   METHOD new
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth
   METHOD shape
   METHOD setShape
   METHOD tabBarSize
   METHOD setTabBarSize
   METHOD rightCornerWidgetSize
   METHOD setRightCornerWidgetSize
   METHOD leftCornerWidgetSize
   METHOD setLeftCornerWidgetSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTabWidgetFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionTabWidgetFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionTabWidgetFrame()
    */
    QStyleOptionTabWidgetFrame * obj = new QStyleOptionTabWidgetFrame();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABWIDGETFRAME(1) )
  {
    /*
    QStyleOptionTabWidgetFrame( const QStyleOptionTabWidgetFrame & other )
    */
    QStyleOptionTabWidgetFrame * obj = new QStyleOptionTabWidgetFrame( *PQSTYLEOPTIONTABWIDGETFRAME(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_LINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineWidth );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETLINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->lineWidth= PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_MIDLINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->midLineWidth );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETMIDLINEWIDTH )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->midLineWidth= PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SHAPE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETSHAPE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->shape= ( QTabBar::Shape ) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize tabBarSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_TABBARSIZE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->tabBarSize );
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETTABBARSIZE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->tabBarSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize rightCornerWidgetSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_RIGHTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->rightCornerWidgetSize );
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETRIGHTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->rightCornerWidgetSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize leftCornerWidgetSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_LEFTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->leftCornerWidgetSize );
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABWIDGETFRAME_SETLEFTCORNERWIDGETSIZE )
{
  QStyleOptionTabWidgetFrame * obj = static_cast<QStyleOptionTabWidgetFrame*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->leftCornerWidgetSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
