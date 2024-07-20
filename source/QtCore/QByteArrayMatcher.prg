//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QByteArrayMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD indexIn
   METHOD pattern
   METHOD setPattern

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QByteArrayMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QByteArrayMatcher>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QBYTEARRAYMATCHER_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QByteArrayMatcher()
    */
    QByteArrayMatcher *obj = new QByteArrayMatcher();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    QByteArrayMatcher( const QByteArray &pattern )
    */
    QByteArrayMatcher *obj = new QByteArrayMatcher(*PQBYTEARRAY(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
  {
    /*
    QByteArrayMatcher( const char * pattern, int length )
    */
    QByteArrayMatcher *obj = new QByteArrayMatcher(PCONSTCHAR(1), PINT(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAYMATCHER(1))
  {
    /*
    QByteArrayMatcher( const QByteArrayMatcher &other )
    */
    QByteArrayMatcher *obj = new QByteArrayMatcher(*PQBYTEARRAYMATCHER(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBYTEARRAYMATCHER_DELETE)
{
  QByteArrayMatcher *obj = static_cast<QByteArrayMatcher *>(Qt4xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC(QBYTEARRAYMATCHER_INDEXIN)
{
  if (ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    int indexIn( const QByteArray &ba, int from = 0 ) const
    */
    QByteArrayMatcher *obj = static_cast<QByteArrayMatcher *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RINT(obj->indexIn(*PQBYTEARRAY(1), OPINT(2, 0)));
    }
  }
  else if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    int indexIn( const char * str, int len, int from = 0 ) const
    */
    QByteArrayMatcher *obj = static_cast<QByteArrayMatcher *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RINT(obj->indexIn(PCONSTCHAR(1), PINT(2), OPINT(3, 0)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QByteArray pattern() const
*/
HB_FUNC_STATIC(QBYTEARRAYMATCHER_PATTERN)
{
  QByteArrayMatcher *obj = static_cast<QByteArrayMatcher *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->pattern());
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
void setPattern( const QByteArray &pattern )
*/
HB_FUNC_STATIC(QBYTEARRAYMATCHER_SETPATTERN)
{
  QByteArrayMatcher *obj = static_cast<QByteArrayMatcher *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      obj->setPattern(*PQBYTEARRAY(1));
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

HB_FUNC_STATIC(QBYTEARRAYMATCHER_NEWFROM)
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

HB_FUNC_STATIC(QBYTEARRAYMATCHER_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QBYTEARRAYMATCHER_NEWFROM);
}

HB_FUNC_STATIC(QBYTEARRAYMATCHER_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QBYTEARRAYMATCHER_NEWFROM);
}

HB_FUNC_STATIC(QBYTEARRAYMATCHER_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QBYTEARRAYMATCHER_SETSELFDESTRUCTION)
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
