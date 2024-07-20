//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QRECT
#endif

CLASS QPolygon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD containsPoint
   METHOD intersected
   METHOD point
   METHOD putPoints
   METHOD setPoint
   METHOD subtracted
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD united

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPolygon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QPolygon>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QPOLYGON_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QPolygon()
    */
    QPolygon *obj = new QPolygon();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QPolygon( int size )
    */
    QPolygon *obj = new QPolygon(PINT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPOLYGON(1))
  {
    /*
    QPolygon( const QPolygon &polygon )
    */
    QPolygon *obj = new QPolygon(*PQPOLYGON(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
    /*
    QPolygon( const QVector<QPoint> &points )
    */
    QVector<QPoint> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    const int nLen1 = hb_arrayLen(aList1);
    for (int i1 = 0; i1 < nLen1; i1++)
    {
      par1 << *static_cast<QPoint *>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0)));
    }
    QPolygon *obj = new QPolygon(par1);
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && ISQRECT(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
  {
    /*
    QPolygon( const QRect &rectangle, bool closed = false )
    */
    QPolygon *obj = new QPolygon(*PQRECT(1), OPBOOL(2, false));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPOLYGON_DELETE)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

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
QRect boundingRect() const
*/
HB_FUNC_STATIC(QPOLYGON_BOUNDINGRECT)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRect *ptr = new QRect(obj->boundingRect());
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
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
bool containsPoint( const QPoint &point, Qt::FillRule fillRule ) const
*/
HB_FUNC_STATIC(QPOLYGON_CONTAINSPOINT)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQPOINT(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->containsPoint(*PQPOINT(1), (Qt::FillRule)hb_parni(2)));
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
QPolygon intersected( const QPolygon &r ) const
*/
HB_FUNC_STATIC(QPOLYGON_INTERSECTED)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOLYGON(1))
    {
#endif
      QPolygon *ptr = new QPolygon(obj->intersected(*PQPOLYGON(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPOLYGON_POINT)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void point( int index, int * x, int * y ) const
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      int par2;
      int par3;
      obj->point(PINT(1), &par2, &par3);
      hb_storni(par2, 2);
      hb_storni(par3, 3);
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QPoint point( int index ) const
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPoint *ptr = new QPoint(obj->point(PINT(1)));
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void putPoints( int index, int nPoints, const QPolygon &fromPolygon, int fromIndex = 0 )
*/
HB_FUNC_STATIC(QPOLYGON_PUTPOINTS)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ISQPOLYGON(3) && (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      obj->putPoints(PINT(1), PINT(2), *PQPOLYGON(3), OPINT(4, 0));
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

HB_FUNC_STATIC(QPOLYGON_SETPOINT)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void setPoint( int index, int x, int y )
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setPoint(PINT(1), PINT(2), PINT(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && ISQPOINT(2))
  {
    /*
    void setPoint( int index, const QPoint &point )
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setPoint(PINT(1), *PQPOINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPolygon subtracted( const QPolygon &r ) const
*/
HB_FUNC_STATIC(QPOLYGON_SUBTRACTED)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOLYGON(1))
    {
#endif
      QPolygon *ptr = new QPolygon(obj->subtracted(*PQPOLYGON(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
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
void swap( QPolygon &other )
*/
HB_FUNC_STATIC(QPOLYGON_SWAP)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOLYGON(1))
    {
#endif
      obj->swap(*PQPOLYGON(1));
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

HB_FUNC_STATIC(QPOLYGON_TRANSLATE)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void translate( int dx, int dy )
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->translate(PINT(1), PINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    void translate( const QPoint &offset )
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->translate(*PQPOINT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPOLYGON_TRANSLATED)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QPolygon translated( int dx, int dy ) const
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPolygon *ptr = new QPolygon(obj->translated(PINT(1), PINT(2)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    QPolygon translated( const QPoint &offset ) const
    */
    QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPolygon *ptr = new QPolygon(obj->translated(*PQPOINT(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPolygon united( const QPolygon &r ) const
*/
HB_FUNC_STATIC(QPOLYGON_UNITED)
{
  QPolygon *obj = static_cast<QPolygon *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOLYGON(1))
    {
#endif
      QPolygon *ptr = new QPolygon(obj->united(*PQPOLYGON(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPOLYGON_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
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

HB_FUNC_STATIC(QPOLYGON_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPOLYGON_NEWFROM);
}

HB_FUNC_STATIC(QPOLYGON_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPOLYGON_NEWFROM);
}

HB_FUNC_STATIC(QPOLYGON_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPOLYGON_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
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
