//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLINEF
REQUEST QPAINTERPATH
REQUEST QPEN
REQUEST QRECTF
#endif

CLASS QGraphicsLineItem INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD line
   METHOD pen
   METHOD setLine
   METHOD setPen
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsLineItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QGraphicsLineItem>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtGui/QPen>

HB_FUNC_STATIC(QGRAPHICSLINEITEM_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQGRAPHICSITEM(1) || HB_ISNIL(1)))
  {
    /*
    QGraphicsLineItem( QGraphicsItem * parent = 0 )
    */
    QGraphicsLineItem *obj =
        new QGraphicsLineItem(HB_ISNIL(1) ? 0 : static_cast<QGraphicsItem *>(Qt4xHb::itemGetPtr(1)));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && ISQLINEF(1) && (ISQGRAPHICSITEM(2) || HB_ISNIL(2)))
  {
    /*
    QGraphicsLineItem( const QLineF & line, QGraphicsItem * parent = 0 )
    */
    QGraphicsLineItem *obj =
        new QGraphicsLineItem(*PQLINEF(1), HB_ISNIL(2) ? 0 : static_cast<QGraphicsItem *>(Qt4xHb::itemGetPtr(2)));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(4, 5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) &&
           (ISQGRAPHICSITEM(5) || HB_ISNIL(5)))
  {
    /*
    QGraphicsLineItem( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )
    */
    QGraphicsLineItem *obj =
        new QGraphicsLineItem(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4),
                              HB_ISNIL(5) ? 0 : static_cast<QGraphicsItem *>(Qt4xHb::itemGetPtr(5)));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSLINEITEM_DELETE)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
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
QLineF line() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_LINE)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QLineF *ptr = new QLineF(obj->line());
      Qt4xHb::createReturnClass(ptr, "QLINEF", true);
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
QPen pen() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_PEN)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPen *ptr = new QPen(obj->pen());
      Qt4xHb::createReturnClass(ptr, "QPEN", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QGRAPHICSLINEITEM_SETLINE)
{
  if (ISNUMPAR(1) && ISQLINEF(1))
  {
    /*
    void setLine( const QLineF & line )
    */
    QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setLine(*PQLINEF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void setLine( qreal x1, qreal y1, qreal x2, qreal y2 )
    */
    QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setLine(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_SETPEN)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPEN(1))
    {
#endif
      obj->setPen(*PQPEN(1));
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
virtual QRectF boundingRect() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_BOUNDINGRECT)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->boundingRect());
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
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
virtual bool contains( const QPointF & point ) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_CONTAINS)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINTF(1))
    {
#endif
      RBOOL(obj->contains(*PQPOINTF(1)));
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
virtual bool isObscuredBy( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_ISOBSCUREDBY)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQGRAPHICSITEM(1))
    {
#endif
      RBOOL(obj->isObscuredBy(PQGRAPHICSITEM(1)));
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
virtual QPainterPath opaqueArea() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_OPAQUEAREA)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->opaqueArea());
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
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_PAINT)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      obj->paint(PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3, 0));
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
virtual QPainterPath shape() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_SHAPE)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->shape());
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
virtual int type() const
*/
HB_FUNC_STATIC(QGRAPHICSLINEITEM_TYPE)
{
  QGraphicsLineItem *obj = static_cast<QGraphicsLineItem *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->type());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
