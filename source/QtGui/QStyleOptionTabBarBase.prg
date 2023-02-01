/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QStyleOptionTabBarBase INHERIT QStyleOption

   METHOD new
   METHOD shape
   METHOD setShape
   METHOD tabBarRect
   METHOD setTabBarRect
   METHOD selectedTabRect
   METHOD setSelectedTabRect

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTabBarBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionTabBarBase>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionTabBarBase()
    */
    QStyleOptionTabBarBase * obj = new QStyleOptionTabBarBase();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTABBARBASE(1) )
  {
    /*
    QStyleOptionTabBarBase( const QStyleOptionTabBarBase & other )
    */
    QStyleOptionTabBarBase * obj = new QStyleOptionTabBarBase( *PQSTYLEOPTIONTABBARBASE(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SHAPE )
{
  QStyleOptionTabBarBase * obj = static_cast<QStyleOptionTabBarBase*>(Qt4xHb::itemGetPtrStackSelfItem());

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
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETSHAPE )
{
  QStyleOptionTabBarBase * obj = static_cast<QStyleOptionTabBarBase*>(Qt4xHb::itemGetPtrStackSelfItem());

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
QRect tabBarRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_TABBARRECT )
{
  QStyleOptionTabBarBase * obj = static_cast<QStyleOptionTabBarBase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->tabBarRect );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETTABBARRECT )
{
  QStyleOptionTabBarBase * obj = static_cast<QStyleOptionTabBarBase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->tabBarRect= *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect selectedTabRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SELECTEDTABRECT )
{
  QStyleOptionTabBarBase * obj = static_cast<QStyleOptionTabBarBase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->selectedTabRect );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTABBARBASE_SETSELECTEDTABRECT )
{
  QStyleOptionTabBarBase * obj = static_cast<QStyleOptionTabBarBase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->selectedTabRect= *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
