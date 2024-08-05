//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCURSOR
REQUEST QTEXTTABLECELL
REQUEST QTEXTTABLEFORMAT
#endif

CLASS QTextTable INHERIT QTextFrame

   METHOD delete
   METHOD appendColumns
   METHOD appendRows
   METHOD cellAt
   METHOD columns
   METHOD format
   METHOD insertColumns
   METHOD insertRows
   METHOD mergeCells
   METHOD removeColumns
   METHOD removeRows
   METHOD resize
   METHOD rowEnd
   METHOD rowStart
   METHOD rows
   METHOD setFormat
   METHOD splitCell

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextTable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTextTable>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QTextCursor>

HB_FUNC_STATIC(QTEXTTABLE_DELETE)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// void appendColumns(int count)
HB_FUNC_STATIC(QTEXTTABLE_APPENDCOLUMNS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->appendColumns(PINT(1));
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

// void appendRows(int count)
HB_FUNC_STATIC(QTEXTTABLE_APPENDROWS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->appendRows(PINT(1));
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

HB_FUNC_STATIC(QTEXTTABLE_CELLAT)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    // QTextTableCell cellAt(int row, int column) const
    QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QTextTableCell *ptr = new QTextTableCell(obj->cellAt(PINT(1), PINT(2)));
      Qt4xHb::createReturnClass(ptr, "QTEXTTABLECELL", true);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // QTextTableCell cellAt(int position) const
    QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QTextTableCell *ptr = new QTextTableCell(obj->cellAt(PINT(1)));
      Qt4xHb::createReturnClass(ptr, "QTEXTTABLECELL", true);
    }
  }
  else if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
  {
    // QTextTableCell cellAt(const QTextCursor &cursor) const
    QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      QTextTableCell *ptr = new QTextTableCell(obj->cellAt(*PQTEXTCURSOR(1)));
      Qt4xHb::createReturnClass(ptr, "QTEXTTABLECELL", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// int columns() const
HB_FUNC_STATIC(QTEXTTABLE_COLUMNS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->columns());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextTableFormat format() const
HB_FUNC_STATIC(QTEXTTABLE_FORMAT)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextTableFormat *ptr = new QTextTableFormat(obj->format());
      Qt4xHb::createReturnClass(ptr, "QTEXTTABLEFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void insertColumns(int index, int columns)
HB_FUNC_STATIC(QTEXTTABLE_INSERTCOLUMNS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->insertColumns(PINT(1), PINT(2));
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

// void insertRows(int index, int rows)
HB_FUNC_STATIC(QTEXTTABLE_INSERTROWS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->insertRows(PINT(1), PINT(2));
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

HB_FUNC_STATIC(QTEXTTABLE_MERGECELLS)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    // void mergeCells(int row, int column, int numRows, int numCols)
    QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->mergeCells(PINT(1), PINT(2), PINT(3), PINT(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
  {
    // void mergeCells(const QTextCursor &cursor)
    QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->mergeCells(*PQTEXTCURSOR(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void removeColumns(int index, int columns)
HB_FUNC_STATIC(QTEXTTABLE_REMOVECOLUMNS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->removeColumns(PINT(1), PINT(2));
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

// void removeRows(int index, int rows)
HB_FUNC_STATIC(QTEXTTABLE_REMOVEROWS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->removeRows(PINT(1), PINT(2));
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

// void resize(int rows, int columns)
HB_FUNC_STATIC(QTEXTTABLE_RESIZE)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->resize(PINT(1), PINT(2));
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

// QTextCursor rowEnd(const QTextCursor &cursor) const
HB_FUNC_STATIC(QTEXTTABLE_ROWEND)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
    {
#endif
      QTextCursor *ptr = new QTextCursor(obj->rowEnd(*PQTEXTCURSOR(1)));
      Qt4xHb::createReturnClass(ptr, "QTEXTCURSOR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextCursor rowStart(const QTextCursor &cursor) const
HB_FUNC_STATIC(QTEXTTABLE_ROWSTART)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
    {
#endif
      QTextCursor *ptr = new QTextCursor(obj->rowStart(*PQTEXTCURSOR(1)));
      Qt4xHb::createReturnClass(ptr, "QTEXTCURSOR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int rows() const
HB_FUNC_STATIC(QTEXTTABLE_ROWS)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->rows());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setFormat(const QTextTableFormat &format)
HB_FUNC_STATIC(QTEXTTABLE_SETFORMAT)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTTABLEFORMAT(1))
    {
#endif
      obj->setFormat(*PQTEXTTABLEFORMAT(1));
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

// void splitCell(int row, int column, int numRows, int numCols)
HB_FUNC_STATIC(QTEXTTABLE_SPLITCELL)
{
  QTextTable *obj = qobject_cast<QTextTable *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      obj->splitCell(PINT(1), PINT(2), PINT(3), PINT(4));
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
