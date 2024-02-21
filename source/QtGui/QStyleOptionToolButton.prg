/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QICON
REQUEST QPOINT
REQUEST QSIZE
#endif

CLASS QStyleOptionToolButton INHERIT QStyleOptionComplex

   METHOD new
   METHOD features
   METHOD setFeatures
   METHOD icon
   METHOD setIcon
   METHOD iconSize
   METHOD setIconSize
   METHOD text
   METHOD setText
   METHOD arrowType
   METHOD setArrowType
   METHOD toolButtonStyle
   METHOD setToolButtonStyle
   METHOD pos
   METHOD setPos
   METHOD font
   METHOD setFont

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionToolButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionToolButton>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionToolButton()
    */
    QStyleOptionToolButton * obj = new QStyleOptionToolButton();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBUTTON(1) )
  {
    /*
    QStyleOptionToolButton( const QStyleOptionToolButton & other )
    */
    QStyleOptionToolButton * obj = new QStyleOptionToolButton( *PQSTYLEOPTIONTOOLBUTTON(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
ToolButtonFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_FEATURES )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETFEATURES )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->features= ( QStyleOptionToolButton::ToolButtonFeatures ) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_ICON )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      Qt4xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETICON )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_ICONSIZE )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize );
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETICONSIZE )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_TEXT )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETTEXT )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::ArrowType arrowType
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_ARROWTYPE )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->arrowType );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETARROWTYPE )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->arrowType= ( Qt::ArrowType ) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::ToolButtonStyle toolButtonStyle
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_TOOLBUTTONSTYLE )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->toolButtonStyle );
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETTOOLBUTTONSTYLE )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->toolButtonStyle= ( Qt::ToolButtonStyle ) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QPoint pos
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_POS )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->pos );
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETPOS )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->pos= *PQPOINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_FONT )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font );
      Qt4xHb::createReturnClass(ptr, "QFONT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBUTTON_SETFONT )
{
  QStyleOptionToolButton * obj = static_cast<QStyleOptionToolButton*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font= *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
