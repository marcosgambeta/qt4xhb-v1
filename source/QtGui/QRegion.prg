//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QRegion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD contains
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD rectCount
   METHOD rects
   METHOD subtracted
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD united
   METHOD xored

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRegion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QRegion>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QVector>

HB_FUNC_STATIC(QREGION_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QRegion()
    */
    QRegion *obj = new QRegion();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(4, 5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && (HB_ISNUM(5) || HB_ISNIL(5)))
  {
    /*
    QRegion( int x, int y, int w, int h, QRegion::RegionType t = QRegion::Rectangle )
    */
    QRegion *obj =
        new QRegion(PINT(1), PINT(2), PINT(3), PINT(4),
                    HB_ISNIL(5) ? (QRegion::RegionType)QRegion::Rectangle : (QRegion::RegionType)hb_parni(5));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && ISQPOLYGON(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QRegion( const QPolygon &a, Qt::FillRule fillRule = Qt::OddEvenFill )
    */
    QRegion *obj = new QRegion(*PQPOLYGON(1), HB_ISNIL(2) ? (Qt::FillRule)Qt::OddEvenFill : (Qt::FillRule)hb_parni(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQREGION(1))
  {
    /*
    QRegion( const QRegion &r )
    */
    QRegion *obj = new QRegion(*PQREGION(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBITMAP(1))
  {
    /*
    QRegion( const QBitmap &bm )
    */
    QRegion *obj = new QRegion(*PQBITMAP(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && ISQRECT(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QRegion( const QRect &r, QRegion::RegionType t = QRegion::Rectangle )
    */
    QRegion *obj = new QRegion(*PQRECT(1), HB_ISNIL(2) ? (QRegion::RegionType)QRegion::Rectangle
                                                       : (QRegion::RegionType)hb_parni(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QREGION_DELETE)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

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
HB_FUNC_STATIC(QREGION_BOUNDINGRECT)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC(QREGION_CONTAINS)
{
  if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    bool contains( const QPoint &p ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->contains(*PQPOINT(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    bool contains( const QRect &r ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->contains(*PQRECT(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QREGION_INTERSECTED)
{
  if (ISNUMPAR(1) && ISQREGION(1))
  {
    /*
    QRegion intersected( const QRegion &r ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->intersected(*PQREGION(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    QRegion intersected( const QRect &rect ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->intersected(*PQRECT(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QREGION_INTERSECTS)
{
  if (ISNUMPAR(1) && ISQREGION(1))
  {
    /*
    bool intersects( const QRegion &region ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->intersects(*PQREGION(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    bool intersects( const QRect &rect ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->intersects(*PQRECT(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC(QREGION_ISEMPTY)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEmpty());
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
int rectCount() const
*/
HB_FUNC_STATIC(QREGION_RECTCOUNT)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->rectCount());
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
QVector<QRect> rects() const
*/
HB_FUNC_STATIC(QREGION_RECTS)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector<QRect> list = obj->rects();
      PHB_DYNS pDynSym = hb_dynsymFindName("QRECT");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        const int count = list.count();
        for (int i = 0; i < count; i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QRect(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QRECT", HB_ERR_ARGS_BASEPARAMS);
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
QRegion subtracted( const QRegion &r ) const
*/
HB_FUNC_STATIC(QREGION_SUBTRACTED)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQREGION(1))
    {
#endif
      QRegion *ptr = new QRegion(obj->subtracted(*PQREGION(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
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
void swap( QRegion &other )
*/
HB_FUNC_STATIC(QREGION_SWAP)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQREGION(1))
    {
#endif
      obj->swap(*PQREGION(1));
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

HB_FUNC_STATIC(QREGION_TRANSLATE)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void translate( int dx, int dy )
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->translate(PINT(1), PINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    void translate( const QPoint &point )
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC(QREGION_TRANSLATED)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QRegion translated( int dx, int dy ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->translated(PINT(1), PINT(2)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    QRegion translated( const QPoint &p ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->translated(*PQPOINT(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QREGION_UNITED)
{
  if (ISNUMPAR(1) && ISQREGION(1))
  {
    /*
    QRegion united( const QRegion &r ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->united(*PQREGION(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    QRegion united( const QRect &rect ) const
    */
    QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->united(*PQRECT(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRegion xored( const QRegion &r ) const
*/
HB_FUNC_STATIC(QREGION_XORED)
{
  QRegion *obj = static_cast<QRegion *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQREGION(1))
    {
#endif
      QRegion *ptr = new QRegion(obj->xored(*PQREGION(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QREGION_NEWFROM)
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

HB_FUNC_STATIC(QREGION_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QREGION_NEWFROM);
}

HB_FUNC_STATIC(QREGION_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QREGION_NEWFROM);
}

HB_FUNC_STATIC(QREGION_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QREGION_SETSELFDESTRUCTION)
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
