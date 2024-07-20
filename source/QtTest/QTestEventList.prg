//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTestEventList

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addDelay
   METHOD addKeyClick1
   METHOD addKeyClick2
   METHOD addKeyClick
   METHOD addKeyClicks
   METHOD addKeyPress1
   METHOD addKeyPress2
   METHOD addKeyPress
   METHOD addKeyRelease1
   METHOD addKeyRelease2
   METHOD addKeyRelease
   METHOD addMouseClick
   METHOD addMouseDClick
   METHOD addMouseMove
   METHOD addMousePress
   METHOD addMouseRelease
   METHOD clear
   METHOD simulate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTestEventList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtTest/QTestEventList>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QTESTEVENTLIST_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QTestEventList()
    */
    QTestEventList *obj = new QTestEventList();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTESTEVENTLIST(1))
  {
    /*
    QTestEventList( const QTestEventList &other )
    */
    QTestEventList *obj = new QTestEventList(*PQTESTEVENTLIST(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTESTEVENTLIST_DELETE)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

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
void addDelay( int msecs )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDDELAY)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->addDelay(PINT(1));
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
void addKeyClick( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYCLICK1)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyClick((Qt::Key)hb_parni(1),
                       HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                       OPINT(3, -1));
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
void addKeyClick( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYCLICK2)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyClick(PCHAR(1),
                       HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                       OPINT(3, -1));
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

HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYCLICK)
{
  if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QTESTEVENTLIST_ADDKEYCLICK1);
  }
  else if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QTESTEVENTLIST_ADDKEYCLICK2);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addKeyClicks( const QString &keys, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYCLICKS)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyClicks(PQSTRING(1),
                        HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                        OPINT(3, -1));
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
void addKeyPress( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYPRESS1)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyPress((Qt::Key)hb_parni(1),
                       HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                       OPINT(3, -1));
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
void addKeyPress( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYPRESS2)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyPress(PCHAR(1),
                       HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                       OPINT(3, -1));
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

HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYPRESS)
{
  if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QTESTEVENTLIST_ADDKEYPRESS1);
  }
  else if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QTESTEVENTLIST_ADDKEYPRESS2);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addKeyRelease( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYRELEASE1)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyRelease((Qt::Key)hb_parni(1),
                         HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                         OPINT(3, -1));
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
void addKeyRelease( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYRELEASE2)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addKeyRelease(PCHAR(1),
                         HB_ISNIL(2) ? (Qt::KeyboardModifiers)Qt::NoModifier : (Qt::KeyboardModifiers)hb_parni(2),
                         OPINT(3, -1));
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

HB_FUNC_STATIC(QTESTEVENTLIST_ADDKEYRELEASE)
{
  if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QTESTEVENTLIST_ADDKEYRELEASE1);
  }
  else if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    HB_FUNC_EXEC(QTESTEVENTLIST_ADDKEYRELEASE2);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addMouseClick( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDMOUSECLICK)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQPOINT(3) || HB_ISNIL(3)) &&
        (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      obj->addMouseClick((Qt::MouseButton)hb_parni(1),
                         HB_ISNIL(2) ? (Qt::KeyboardModifiers)0 : (Qt::KeyboardModifiers)hb_parni(2),
                         HB_ISNIL(3) ? QPoint() : *static_cast<QPoint *>(Qt4xHb::itemGetPtr(3)), OPINT(4, -1));
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
void addMouseDClick( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1
)
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDMOUSEDCLICK)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQPOINT(3) || HB_ISNIL(3)) &&
        (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      obj->addMouseDClick((Qt::MouseButton)hb_parni(1),
                          HB_ISNIL(2) ? (Qt::KeyboardModifiers)0 : (Qt::KeyboardModifiers)hb_parni(2),
                          HB_ISNIL(3) ? QPoint() : *static_cast<QPoint *>(Qt4xHb::itemGetPtr(3)), OPINT(4, -1));
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
void addMouseMove( QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDMOUSEMOVE)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && (ISQPOINT(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      obj->addMouseMove(HB_ISNIL(1) ? QPoint() : *static_cast<QPoint *>(Qt4xHb::itemGetPtr(1)), OPINT(2, -1));
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
void addMousePress( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDMOUSEPRESS)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQPOINT(3) || HB_ISNIL(3)) &&
        (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      obj->addMousePress((Qt::MouseButton)hb_parni(1),
                         HB_ISNIL(2) ? (Qt::KeyboardModifiers)0 : (Qt::KeyboardModifiers)hb_parni(2),
                         HB_ISNIL(3) ? QPoint() : *static_cast<QPoint *>(Qt4xHb::itemGetPtr(3)), OPINT(4, -1));
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
void addMouseRelease( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1
)
*/
HB_FUNC_STATIC(QTESTEVENTLIST_ADDMOUSERELEASE)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQPOINT(3) || HB_ISNIL(3)) &&
        (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      obj->addMouseRelease((Qt::MouseButton)hb_parni(1),
                           HB_ISNIL(2) ? (Qt::KeyboardModifiers)0 : (Qt::KeyboardModifiers)hb_parni(2),
                           HB_ISNIL(3) ? QPoint() : *static_cast<QPoint *>(Qt4xHb::itemGetPtr(3)), OPINT(4, -1));
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
void clear()
*/
HB_FUNC_STATIC(QTESTEVENTLIST_CLEAR)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
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
void simulate( QWidget * w )
*/
HB_FUNC_STATIC(QTESTEVENTLIST_SIMULATE)
{
  QTestEventList *obj = static_cast<QTestEventList *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      obj->simulate(PQWIDGET(1));
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

HB_FUNC_STATIC(QTESTEVENTLIST_NEWFROM)
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

HB_FUNC_STATIC(QTESTEVENTLIST_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QTESTEVENTLIST_NEWFROM);
}

HB_FUNC_STATIC(QTESTEVENTLIST_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QTESTEVENTLIST_NEWFROM);
}

HB_FUNC_STATIC(QTESTEVENTLIST_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QTESTEVENTLIST_SETSELFDESTRUCTION)
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
