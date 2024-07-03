//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// clang-format off

#include "hbclass.ch"

CLASS Qt4xHbBase

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

END CLASS

// clang-format on

#pragma BEGINDUMP

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QT4XHBBASE_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *)hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *)hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QT4XHBBASE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QT4XHBBASE_NEWFROM);
}

HB_FUNC_STATIC(QT4XHBBASE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QT4XHBBASE_NEWFROM);
}

HB_FUNC_STATIC(QT4XHBBASE_SELFDESTRUCTION)
{
  hb_retl((bool)hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QT4XHBBASE_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
