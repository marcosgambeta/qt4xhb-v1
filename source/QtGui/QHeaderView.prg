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
REQUEST QSIZE
#endif

CLASS QHeaderView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD cascadingSectionResizes
   METHOD count
   METHOD defaultAlignment
   METHOD defaultSectionSize
   METHOD hiddenSectionCount
   METHOD hideSection
   METHOD highlightSections
   METHOD isClickable
   METHOD isMovable
   METHOD isSectionHidden
   METHOD isSortIndicatorShown
   METHOD length
   METHOD logicalIndex
   METHOD logicalIndexAt
   METHOD minimumSectionSize
   METHOD moveSection
   METHOD offset
   METHOD orientation
   METHOD resizeMode
   METHOD resizeSection
   METHOD resizeSections
   METHOD restoreState
   METHOD saveState
   METHOD sectionPosition
   METHOD sectionSize
   METHOD sectionSizeHint
   METHOD sectionViewportPosition
   METHOD sectionsHidden
   METHOD sectionsMoved
   METHOD setCascadingSectionResizes
   METHOD setClickable
   METHOD setDefaultAlignment
   METHOD setDefaultSectionSize
   METHOD setHighlightSections
   METHOD setMinimumSectionSize
   METHOD setMovable
   METHOD setResizeMode
   METHOD setSectionHidden
   METHOD setSortIndicator
   METHOD setSortIndicatorShown
   METHOD setStretchLastSection
   METHOD showSection
   METHOD sortIndicatorOrder
   METHOD sortIndicatorSection
   METHOD stretchLastSection
   METHOD stretchSectionCount
   METHOD swapSections
   METHOD visualIndex
   METHOD visualIndexAt
   METHOD reset
   METHOD setModel
   METHOD sizeHint
   METHOD headerDataChanged
   METHOD setOffset
   METHOD setOffsetToLastSection
   METHOD setOffsetToSectionPosition

   METHOD onGeometriesChanged
   METHOD onSectionAutoResize
   METHOD onSectionClicked
   METHOD onSectionCountChanged
   METHOD onSectionDoubleClicked
   METHOD onSectionEntered
   METHOD onSectionHandleDoubleClicked
   METHOD onSectionMoved
   METHOD onSectionPressed
   METHOD onSectionResized
   METHOD onSortIndicatorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHeaderView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QHeaderView>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    // QHeaderView(Qt::Orientation orientation, QWidget *parent = 0)
HB_FUNC_STATIC(QHEADERVIEW_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    QHeaderView *obj = new QHeaderView((Qt::Orientation)hb_parni(1), OPQWIDGET(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QHEADERVIEW_DELETE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// bool cascadingSectionResizes() const
HB_FUNC_STATIC(QHEADERVIEW_CASCADINGSECTIONRESIZES)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->cascadingSectionResizes());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int count() const
HB_FUNC_STATIC(QHEADERVIEW_COUNT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// Qt::Alignment defaultAlignment() const
HB_FUNC_STATIC(QHEADERVIEW_DEFAULTALIGNMENT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->defaultAlignment());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int defaultSectionSize() const
HB_FUNC_STATIC(QHEADERVIEW_DEFAULTSECTIONSIZE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->defaultSectionSize());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int hiddenSectionCount() const
HB_FUNC_STATIC(QHEADERVIEW_HIDDENSECTIONCOUNT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->hiddenSectionCount());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void hideSection(int logicalIndex)
HB_FUNC_STATIC(QHEADERVIEW_HIDESECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->hideSection(PINT(1));
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

// bool highlightSections() const
HB_FUNC_STATIC(QHEADERVIEW_HIGHLIGHTSECTIONS)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->highlightSections());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isClickable() const
HB_FUNC_STATIC(QHEADERVIEW_ISCLICKABLE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isClickable());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isMovable() const
HB_FUNC_STATIC(QHEADERVIEW_ISMOVABLE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isMovable());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isSectionHidden(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_ISSECTIONHIDDEN)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isSectionHidden(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isSortIndicatorShown() const
HB_FUNC_STATIC(QHEADERVIEW_ISSORTINDICATORSHOWN)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSortIndicatorShown());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int length() const
HB_FUNC_STATIC(QHEADERVIEW_LENGTH)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->length());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int logicalIndex(int visualIndex) const
HB_FUNC_STATIC(QHEADERVIEW_LOGICALINDEX)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->logicalIndex(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QHEADERVIEW_LOGICALINDEXAT)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // int logicalIndexAt(int position) const
    QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->logicalIndexAt(PINT(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    // int logicalIndexAt(int x, int y) const
    QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->logicalIndexAt(PINT(1), PINT(2)));
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    // int logicalIndexAt(const QPoint &pos) const
    QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->logicalIndexAt(*PQPOINT(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// int minimumSectionSize() const
HB_FUNC_STATIC(QHEADERVIEW_MINIMUMSECTIONSIZE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->minimumSectionSize());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void moveSection(int from, int to)
HB_FUNC_STATIC(QHEADERVIEW_MOVESECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->moveSection(PINT(1), PINT(2));
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

// int offset() const
HB_FUNC_STATIC(QHEADERVIEW_OFFSET)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->offset());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// Qt::Orientation orientation() const
HB_FUNC_STATIC(QHEADERVIEW_ORIENTATION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->orientation());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QHeaderView::ResizeMode resizeMode(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_RESIZEMODE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RENUM(obj->resizeMode(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void resizeSection(int logicalIndex, int size)
HB_FUNC_STATIC(QHEADERVIEW_RESIZESECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->resizeSection(PINT(1), PINT(2));
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

// void resizeSections(QHeaderView::ResizeMode mode)
HB_FUNC_STATIC(QHEADERVIEW_RESIZESECTIONS)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->resizeSections((QHeaderView::ResizeMode)hb_parni(1));
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

// bool restoreState(const QByteArray &state)
HB_FUNC_STATIC(QHEADERVIEW_RESTORESTATE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      RBOOL(obj->restoreState(*PQBYTEARRAY(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QByteArray saveState() const
HB_FUNC_STATIC(QHEADERVIEW_SAVESTATE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->saveState());
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

// int sectionPosition(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_SECTIONPOSITION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->sectionPosition(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int sectionSize(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_SECTIONSIZE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->sectionSize(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int sectionSizeHint(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_SECTIONSIZEHINT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->sectionSizeHint(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int sectionViewportPosition(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_SECTIONVIEWPORTPOSITION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->sectionViewportPosition(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool sectionsHidden() const
HB_FUNC_STATIC(QHEADERVIEW_SECTIONSHIDDEN)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->sectionsHidden());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool sectionsMoved() const
HB_FUNC_STATIC(QHEADERVIEW_SECTIONSMOVED)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->sectionsMoved());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setCascadingSectionResizes(bool enable)
HB_FUNC_STATIC(QHEADERVIEW_SETCASCADINGSECTIONRESIZES)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setCascadingSectionResizes(PBOOL(1));
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

// void setClickable(bool clickable)
HB_FUNC_STATIC(QHEADERVIEW_SETCLICKABLE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setClickable(PBOOL(1));
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

// void setDefaultAlignment(Qt::Alignment alignment)
HB_FUNC_STATIC(QHEADERVIEW_SETDEFAULTALIGNMENT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDefaultAlignment((Qt::Alignment)hb_parni(1));
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

// void setDefaultSectionSize(int size)
HB_FUNC_STATIC(QHEADERVIEW_SETDEFAULTSECTIONSIZE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDefaultSectionSize(PINT(1));
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

// void setHighlightSections(bool highlight)
HB_FUNC_STATIC(QHEADERVIEW_SETHIGHLIGHTSECTIONS)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setHighlightSections(PBOOL(1));
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

// void setMinimumSectionSize(int size)
HB_FUNC_STATIC(QHEADERVIEW_SETMINIMUMSECTIONSIZE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMinimumSectionSize(PINT(1));
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

// void setMovable(bool movable)
HB_FUNC_STATIC(QHEADERVIEW_SETMOVABLE)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setMovable(PBOOL(1));
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

HB_FUNC_STATIC(QHEADERVIEW_SETRESIZEMODE)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // void setResizeMode(QHeaderView::ResizeMode mode)
    QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setResizeMode((QHeaderView::ResizeMode)hb_parni(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    // void setResizeMode(int logicalIndex, QHeaderView::ResizeMode mode)
    QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setResizeMode(PINT(1), (QHeaderView::ResizeMode)hb_parni(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void setSectionHidden(int logicalIndex, bool hide)
HB_FUNC_STATIC(QHEADERVIEW_SETSECTIONHIDDEN)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      obj->setSectionHidden(PINT(1), PBOOL(2));
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

// void setSortIndicator(int logicalIndex, Qt::SortOrder order)
HB_FUNC_STATIC(QHEADERVIEW_SETSORTINDICATOR)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setSortIndicator(PINT(1), (Qt::SortOrder)hb_parni(2));
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

// void setSortIndicatorShown(bool show)
HB_FUNC_STATIC(QHEADERVIEW_SETSORTINDICATORSHOWN)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setSortIndicatorShown(PBOOL(1));
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

// void setStretchLastSection(bool stretch)
HB_FUNC_STATIC(QHEADERVIEW_SETSTRETCHLASTSECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setStretchLastSection(PBOOL(1));
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

// void showSection(int logicalIndex)
HB_FUNC_STATIC(QHEADERVIEW_SHOWSECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->showSection(PINT(1));
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

// Qt::SortOrder sortIndicatorOrder() const
HB_FUNC_STATIC(QHEADERVIEW_SORTINDICATORORDER)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->sortIndicatorOrder());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int sortIndicatorSection() const
HB_FUNC_STATIC(QHEADERVIEW_SORTINDICATORSECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->sortIndicatorSection());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool stretchLastSection() const
HB_FUNC_STATIC(QHEADERVIEW_STRETCHLASTSECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->stretchLastSection());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int stretchSectionCount() const
HB_FUNC_STATIC(QHEADERVIEW_STRETCHSECTIONCOUNT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->stretchSectionCount());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void swapSections(int first, int second)
HB_FUNC_STATIC(QHEADERVIEW_SWAPSECTIONS)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->swapSections(PINT(1), PINT(2));
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

// int visualIndex(int logicalIndex) const
HB_FUNC_STATIC(QHEADERVIEW_VISUALINDEX)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->visualIndex(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int visualIndexAt(int position) const
HB_FUNC_STATIC(QHEADERVIEW_VISUALINDEXAT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->visualIndexAt(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void reset()
HB_FUNC_STATIC(QHEADERVIEW_RESET)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reset();
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

// virtual void setModel(QAbstractItemModel *model)
HB_FUNC_STATIC(QHEADERVIEW_SETMODEL)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1))
    {
#endif
      obj->setModel(PQABSTRACTITEMMODEL(1));
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

// virtual QSize sizeHint() const
HB_FUNC_STATIC(QHEADERVIEW_SIZEHINT)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint());
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void headerDataChanged(Qt::Orientation orientation, int logicalFirst, int logicalLast)
HB_FUNC_STATIC(QHEADERVIEW_HEADERDATACHANGED)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->headerDataChanged((Qt::Orientation)hb_parni(1), PINT(2), PINT(3));
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

// void setOffset(int offset)
HB_FUNC_STATIC(QHEADERVIEW_SETOFFSET)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOffset(PINT(1));
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

// void setOffsetToLastSection()
HB_FUNC_STATIC(QHEADERVIEW_SETOFFSETTOLASTSECTION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->setOffsetToLastSection();
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

// void setOffsetToSectionPosition(int visualIndex)
HB_FUNC_STATIC(QHEADERVIEW_SETOFFSETTOSECTIONPOSITION)
{
  QHeaderView *obj = qobject_cast<QHeaderView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOffsetToSectionPosition(PINT(1));
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

void QHeaderViewSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QHEADERVIEW_ONGEOMETRIESCHANGED)
{
  QHeaderViewSlots_connect_signal("geometriesChanged()", "geometriesChanged()");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONAUTORESIZE)
{
  QHeaderViewSlots_connect_signal("sectionAutoResize(int,QHeaderView::ResizeMode)",
                                  "sectionAutoResize(int,QHeaderView::ResizeMode)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONCLICKED)
{
  QHeaderViewSlots_connect_signal("sectionClicked(int)", "sectionClicked(int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONCOUNTCHANGED)
{
  QHeaderViewSlots_connect_signal("sectionCountChanged(int,int)", "sectionCountChanged(int,int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONDOUBLECLICKED)
{
  QHeaderViewSlots_connect_signal("sectionDoubleClicked(int)", "sectionDoubleClicked(int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONENTERED)
{
  QHeaderViewSlots_connect_signal("sectionEntered(int)", "sectionEntered(int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONHANDLEDOUBLECLICKED)
{
  QHeaderViewSlots_connect_signal("sectionHandleDoubleClicked(int)", "sectionHandleDoubleClicked(int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONMOVED)
{
  QHeaderViewSlots_connect_signal("sectionMoved(int,int,int)", "sectionMoved(int,int,int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONPRESSED)
{
  QHeaderViewSlots_connect_signal("sectionPressed(int)", "sectionPressed(int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSECTIONRESIZED)
{
  QHeaderViewSlots_connect_signal("sectionResized(int,int,int)", "sectionResized(int,int,int)");
}

HB_FUNC_STATIC(QHEADERVIEW_ONSORTINDICATORCHANGED)
{
  QHeaderViewSlots_connect_signal("sortIndicatorChanged(int,Qt::SortOrder)", "sortIndicatorChanged(int,Qt::SortOrder)");
}

#pragma ENDDUMP
