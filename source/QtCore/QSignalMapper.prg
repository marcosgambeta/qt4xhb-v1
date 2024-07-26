//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   METHOD new
   METHOD delete
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping
   METHOD map

   METHOD onMapped1
   METHOD onMapped2
   METHOD onMapped3
   METHOD onMapped4

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSignalMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QSignalMapper>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

// QSignalMapper(QObject *parent = 0)
HB_FUNC_STATIC(QSIGNALMAPPER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QSignalMapper *obj = new QSignalMapper(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSIGNALMAPPER_DELETE)
{
  QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QSIGNALMAPPER_SETMAPPING)
{
  if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2))
  {
    /*
    void setMapping(QObject *sender, int id)
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setMapping(PQOBJECT(1), PINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2))
  {
    /*
    void setMapping(QObject *sender, const QString &text)
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setMapping(PQOBJECT(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2))
  {
    /*
    void setMapping(QObject *sender, QWidget *widget)
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setMapping(PQOBJECT(1), PQWIDGET(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2))
  {
    /*
    void setMapping(QObject *sender, QObject *object)
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setMapping(PQOBJECT(1), PQOBJECT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void removeMappings(QObject *sender)
*/
HB_FUNC_STATIC(QSIGNALMAPPER_REMOVEMAPPINGS)
{
  QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->removeMappings(PQOBJECT(1));
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

HB_FUNC_STATIC(QSIGNALMAPPER_MAPPING)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QObject *mapping(int id) const
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QObject *ptr = obj->mapping(PINT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QObject *mapping(const QString &text) const
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QObject *ptr = obj->mapping(PQSTRING(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
    }
  }
  else if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    /*
    QObject *mapping(QWidget *widget) const
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QObject *ptr = obj->mapping(PQWIDGET(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
    }
  }
  else if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    /*
    QObject *mapping(QObject *object) const
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QObject *ptr = obj->mapping(PQOBJECT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSIGNALMAPPER_MAP)
{
  if (ISNUMPAR(0))
  {
    /*
    void map()
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->map();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    /*
    void map(QObject *sender)
    */
    QSignalMapper *obj = qobject_cast<QSignalMapper *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->map(PQOBJECT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QSignalMapperSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSIGNALMAPPER_ONMAPPED1)
{
  QSignalMapperSlots_connect_signal("mapped(int)", "mapped(int)");
}

HB_FUNC_STATIC(QSIGNALMAPPER_ONMAPPED2)
{
  QSignalMapperSlots_connect_signal("mapped(QString)", "mapped(QString)");
}

HB_FUNC_STATIC(QSIGNALMAPPER_ONMAPPED3)
{
  QSignalMapperSlots_connect_signal("mapped(QWidget*)", "mapped(QWidget*)");
}

HB_FUNC_STATIC(QSIGNALMAPPER_ONMAPPED4)
{
  QSignalMapperSlots_connect_signal("mapped(QObject*)", "mapped(QObject*)");
}

#pragma ENDDUMP
