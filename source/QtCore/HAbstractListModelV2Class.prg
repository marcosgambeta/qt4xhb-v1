//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS HAbstractListModelV2 INHERIT QAbstractListModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setDataCB
   METHOD setHeaderDataCB
   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractListModelV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HAbstractListModelV2.hpp"

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p)                                                                                           \
  HAbstractListModelV2 *p = qobject_cast<HAbstractListModelV2 *>(Qt4xHb::getQObjectPointerFromSelfItem())

// HAbstractListModelV2(QObject * parent = NULL)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    HAbstractListModelV2 *obj = new HAbstractListModelV2(OPQOBJECT(1, NULL));
    Qt4xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual ~HAbstractListModelV2()
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_DELETE)
{
  GET_PTR_FROM_SELF(obj);

  DELETE_QOBJECT(obj);

  hb_itemReturn(hb_stackSelfItem());
}

// void setRowCountCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETROWCOUNTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setRowCountCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setDataCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETDATACB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDataCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHeaderDataCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETHEADERDATACB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHeaderDataCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setFlagsCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETFLAGSCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setFlagsCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setSetDataCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETSETDATACB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setSetDataCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// int rowCount(const QModelIndex &parent = QModelIndex()) const

// int columnCount(const QModelIndex &parent = QModelIndex()) const

// QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const

// QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const

// Qt::ItemFlags flags(const QModelIndex &index) const

// bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)

// void reloadData()
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_RELOADDATA)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0)) {
#endif
      obj->reloadData();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
