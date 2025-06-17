//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// clang-format off

#include "hbclass.ch"

CLASS HAbstractListModel INHERIT QAbstractListModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB

   METHOD setDisplayRoleCB
   METHOD setDecorationRoleCB
   METHOD setEditRoleCB
   METHOD setToolTipRoleCB
   METHOD setStatusTipRoleCB
   METHOD setWhatsThisRoleCB
   METHOD setSizeHintRoleCB
   METHOD setFontRoleCB
   METHOD setTextAlignmentRoleCB
   METHOD setBackgroundRoleCB
   METHOD setForegroundRoleCB

   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

METHOD destroyObject() CLASS HAbstractListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN NIL

CLASS HDBFListModel INHERIT HAbstractListModel
END CLASS

CLASS HArrayListModel INHERIT HAbstractListModel
END CLASS

// clang-format on

#pragma BEGINDUMP

#include <HAbstractListModel.hpp>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

// HAbstractListModel(QObject *parent = 0)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    HAbstractListModel *obj = new HAbstractListModel(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual ~HAbstractListModel()
HB_FUNC_STATIC(HABSTRACTLISTMODEL_DELETE)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// linhas

// void setRowCountCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETROWCOUNTCB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setRowCountCB(PBLOCKORSYMBOL(1));
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

// células

// void setDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETDISPLAYROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setDisplayRoleCB(PBLOCKORSYMBOL(1));
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

// void setDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETDECORATIONROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setDecorationRoleCB(PBLOCKORSYMBOL(1));
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

// void setEditRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETEDITROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setEditRoleCB(PBLOCKORSYMBOL(1));
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

// void setToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETTOOLTIPROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setToolTipRoleCB(PBLOCKORSYMBOL(1));
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

// void setStatusTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSTATUSTIPROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setStatusTipRoleCB(PBLOCKORSYMBOL(1));
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

// void setWhatsThisRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETWHATSTHISROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setWhatsThisRoleCB(PBLOCKORSYMBOL(1));
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

// void setSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETSIZEHINTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setSizeHintRoleCB(PBLOCKORSYMBOL(1));
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

// void setFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFONTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setFontRoleCB(PBLOCKORSYMBOL(1));
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

// void setTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETTEXTALIGNMENTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
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

// void setBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETBACKGROUNDROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setBackgroundRoleCB(PBLOCKORSYMBOL(1));
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

// void setForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETFOREGROUNDROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setForegroundRoleCB(PBLOCKORSYMBOL(1));
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

// cabeçalho horizontal

// void setHorizontalHeaderDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERDISPLAYROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setHorizontalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
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

// void setHorizontalHeaderDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERDECORATIONROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setHorizontalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
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

// void setHorizontalHeaderFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERFONTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setHorizontalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
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

// void setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setHorizontalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
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

// void setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setHorizontalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
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

// void setHorizontalHeaderForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setHorizontalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
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

// cabeçalho vertical

// void setVerticalHeaderDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERDISPLAYROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setVerticalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
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

// void setVerticalHeaderDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERDECORATIONROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setVerticalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
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

// void setVerticalHeaderFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERFONTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setVerticalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
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

// void setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setVerticalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
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

// void setVerticalHeaderBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERBACKGROUNDROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setVerticalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
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

// void setVerticalHeaderForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTLISTMODEL_SETVERTICALHEADERFOREGROUNDROLECB)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1))
    {
#endif
      obj->setVerticalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
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

// QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const

// QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const

// int rowCount(const QModelIndex &parent = QModelIndex()) const

// void reloadData()
HB_FUNC_STATIC(HABSTRACTLISTMODEL_RELOADDATA)
{
  HAbstractListModel *obj = static_cast<HAbstractListModel *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reloadData();
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

#pragma ENDDUMP
