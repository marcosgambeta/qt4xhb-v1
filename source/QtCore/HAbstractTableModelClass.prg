//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS HAbstractTableModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB

   METHOD setCB
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
   METHOD setCheckStateRoleCB
   METHOD setAccessibleTextRoleCB
   METHOD setAccessibleDescriptionRoleCB

   METHOD setHorizontalHeaderCB
   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderToolTipRoleCB
   METHOD setHorizontalHeaderSizeHintRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderCB
   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderToolTipRoleCB
   METHOD setVerticalHeaderSizeHintRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFTableModel INHERIT HAbstractTableModel
END CLASS

CLASS HArrayTableModel INHERIT HAbstractTableModel
END CLASS

// clang-format on

#pragma BEGINDUMP

#include "HAbstractTableModel.hpp"

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p)                                                                                           \
  HAbstractTableModel *p = qobject_cast<HAbstractTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem())

// HAbstractTableModel(QObject * parent = NULL)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    HAbstractTableModel *obj = new HAbstractTableModel(OPQOBJECT(1, NULL));
    Qt4xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual ~HAbstractTableModel()
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_DELETE)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
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

// linhas e colunas

// void setRowCountCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETROWCOUNTCB)
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

// void setColumnCountCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETCOLUMNCOUNTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setColumnCountCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// células

// void setCB(int role, PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISBLOCKORSYMBOL(2)) {
#endif
      obj->setCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETDISPLAYROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETDECORATIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setEditRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETEDITROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setEditRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETTOOLTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setStatusTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETSTATUSTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setStatusTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setWhatsThisRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETWHATSTHISROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setWhatsThisRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETSIZEHINTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETFONTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETTEXTALIGNMENTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETBACKGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETFOREGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setCheckStateRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETCHECKSTATEROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setCheckStateRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setAccessibleTextRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETACCESSIBLETEXTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setAccessibleTextRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setAccessibleDescriptionRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETACCESSIBLEDESCRIPTIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setAccessibleDescriptionRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// horizontal header

// void setHorizontalHeaderCB(int role, PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISBLOCKORSYMBOL(2)) {
#endif
      obj->setHorizontalHeaderCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDISPLAYROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDECORATIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERTOOLTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERSIZEHINTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFONTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setHorizontalHeaderForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setHorizontalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// vertical header

// void setVerticalHeaderCB(int role, PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISBLOCKORSYMBOL(2)) {
#endif
      obj->setVerticalHeaderCB(PINT(1), PBLOCKORSYMBOL(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderDisplayRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERDISPLAYROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderDisplayRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderDecorationRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERDECORATIONROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderDecorationRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderToolTipRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERTOOLTIPROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderToolTipRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderSizeHintRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERSIZEHINTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderSizeHintRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderFontRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERFONTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderFontRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderTextAlignmentRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderBackgroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERBACKGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderBackgroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setVerticalHeaderForegroundRoleCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETVERTICALHEADERFOREGROUNDROLECB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISBLOCKORSYMBOL(1)) {
#endif
      obj->setVerticalHeaderForegroundRoleCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setFlagsCB(PHB_ITEM block)
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETFLAGSCB)
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
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_SETSETDATACB)
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

// QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const

// QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const

// int rowCount(const QModelIndex &parent = QModelIndex()) const

// int columnCount(const QModelIndex &parent = QModelIndex()) const

// Qt::ItemFlags flags(const QModelIndex &index) const

// bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)

// void reloadData()
HB_FUNC_STATIC(HABSTRACTTABLEMODEL_RELOADDATA)
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

// QModelIndex createIndex(int row, int column)
// HB_FUNC_STATIC(HABSTRACTTABLEMODEL_CREATEINDEX)
// {
//   GET_PTR_FROM_SELF(obj);
//   if (obj) {
//     RQMODELINDEX(obj->createIndex(hb_parni(1), hb_parni(2)));
//   }
// }

#pragma ENDDUMP
