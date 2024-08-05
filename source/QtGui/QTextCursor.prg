//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTFRAGMENT
REQUEST QTEXTFRAME
REQUEST QTEXTLIST
REQUEST QTEXTTABLE
#endif

CLASS QTextCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD anchor
   METHOD atBlockEnd
   METHOD atBlockStart
   METHOD atEnd
   METHOD atStart
   METHOD beginEditBlock
   METHOD block
   METHOD blockCharFormat
   METHOD blockFormat
   METHOD blockNumber
   METHOD charFormat
   METHOD clearSelection
   METHOD columnNumber
   METHOD createList
   METHOD currentFrame
   METHOD currentList
   METHOD currentTable
   METHOD deleteChar
   METHOD deletePreviousChar
   METHOD document
   METHOD endEditBlock
   METHOD hasComplexSelection
   METHOD hasSelection
   METHOD insertBlock
   METHOD insertFragment
   METHOD insertFrame
   METHOD insertHtml
   METHOD insertImage
   METHOD insertList
   METHOD insertTable
   METHOD insertText
   METHOD isCopyOf
   METHOD isNull
   METHOD joinPreviousEditBlock
   METHOD keepPositionOnInsert
   METHOD mergeBlockCharFormat
   METHOD mergeBlockFormat
   METHOD mergeCharFormat
   METHOD movePosition
   METHOD position
   METHOD positionInBlock
   METHOD removeSelectedText
   METHOD select
   METHOD selectedTableCells
   METHOD selectedText
   METHOD selection
   METHOD selectionEnd
   METHOD selectionStart
   METHOD setBlockCharFormat
   METHOD setBlockFormat
   METHOD setCharFormat
   METHOD setKeepPositionOnInsert
   METHOD setPosition
   METHOD setVerticalMovementX
   METHOD setVisualNavigation
   METHOD verticalMovementX
   METHOD visualNavigation

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTextCursor>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtGui/QTextBlock>
#include <QtGui/QTextDocumentFragment>
#include <QtGui/QTextList>
#include <QtGui/QTextTable>
#include <QtGui/QTextDocument>

HB_FUNC_STATIC(QTEXTCURSOR_NEW)
{
  if (ISNUMPAR(0))
  {
    // QTextCursor()
    QTextCursor *obj = new QTextCursor();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTEXTDOCUMENT(1))
  {
    // QTextCursor(QTextDocument *document)
    QTextCursor *obj = new QTextCursor(PQTEXTDOCUMENT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTEXTFRAME(1))
  {
    // QTextCursor(QTextFrame *frame)
    QTextCursor *obj = new QTextCursor(PQTEXTFRAME(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTEXTBLOCK(1))
  {
    // QTextCursor(const QTextBlock &block)
    QTextCursor *obj = new QTextCursor(*PQTEXTBLOCK(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
  {
    // QTextCursor(const QTextCursor &cursor)
    QTextCursor *obj = new QTextCursor(*PQTEXTCURSOR(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_DELETE)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// int anchor() const
HB_FUNC_STATIC(QTEXTCURSOR_ANCHOR)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->anchor());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool atBlockEnd() const
HB_FUNC_STATIC(QTEXTCURSOR_ATBLOCKEND)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->atBlockEnd());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool atBlockStart() const
HB_FUNC_STATIC(QTEXTCURSOR_ATBLOCKSTART)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->atBlockStart());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool atEnd() const
HB_FUNC_STATIC(QTEXTCURSOR_ATEND)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->atEnd());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool atStart() const
HB_FUNC_STATIC(QTEXTCURSOR_ATSTART)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->atStart());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void beginEditBlock()
HB_FUNC_STATIC(QTEXTCURSOR_BEGINEDITBLOCK)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->beginEditBlock();
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

// QTextBlock block() const
HB_FUNC_STATIC(QTEXTCURSOR_BLOCK)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextBlock *ptr = new QTextBlock(obj->block());
      Qt4xHb::createReturnClass(ptr, "QTEXTBLOCK", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextCharFormat blockCharFormat() const
HB_FUNC_STATIC(QTEXTCURSOR_BLOCKCHARFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextCharFormat *ptr = new QTextCharFormat(obj->blockCharFormat());
      Qt4xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextBlockFormat blockFormat() const
HB_FUNC_STATIC(QTEXTCURSOR_BLOCKFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextBlockFormat *ptr = new QTextBlockFormat(obj->blockFormat());
      Qt4xHb::createReturnClass(ptr, "QTEXTBLOCKFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int blockNumber() const
HB_FUNC_STATIC(QTEXTCURSOR_BLOCKNUMBER)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->blockNumber());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextCharFormat charFormat() const
HB_FUNC_STATIC(QTEXTCURSOR_CHARFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextCharFormat *ptr = new QTextCharFormat(obj->charFormat());
      Qt4xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void clearSelection()
HB_FUNC_STATIC(QTEXTCURSOR_CLEARSELECTION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearSelection();
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

// int columnNumber() const
HB_FUNC_STATIC(QTEXTCURSOR_COLUMNNUMBER)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->columnNumber());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_CREATELIST)
{
  if (ISNUMPAR(1) && ISQTEXTLISTFORMAT(1))
  {
    // QTextList *createList(const QTextListFormat &format)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QTextList *ptr = obj->createList(*PQTEXTLISTFORMAT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTLIST");
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // QTextList *createList(QTextListFormat::Style style)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QTextList *ptr = obj->createList((QTextListFormat::Style)hb_parni(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTLIST");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// QTextFrame *currentFrame() const
HB_FUNC_STATIC(QTEXTCURSOR_CURRENTFRAME)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextFrame *ptr = obj->currentFrame();
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTFRAME");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextList *currentList() const
HB_FUNC_STATIC(QTEXTCURSOR_CURRENTLIST)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextList *ptr = obj->currentList();
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTLIST");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextTable *currentTable() const
HB_FUNC_STATIC(QTEXTCURSOR_CURRENTTABLE)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextTable *ptr = obj->currentTable();
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTTABLE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void deleteChar()
HB_FUNC_STATIC(QTEXTCURSOR_DELETECHAR)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->deleteChar();
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

// void deletePreviousChar()
HB_FUNC_STATIC(QTEXTCURSOR_DELETEPREVIOUSCHAR)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->deletePreviousChar();
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

// QTextDocument *document() const
HB_FUNC_STATIC(QTEXTCURSOR_DOCUMENT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextDocument *ptr = obj->document();
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTDOCUMENT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void endEditBlock()
HB_FUNC_STATIC(QTEXTCURSOR_ENDEDITBLOCK)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->endEditBlock();
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

// bool hasComplexSelection() const
HB_FUNC_STATIC(QTEXTCURSOR_HASCOMPLEXSELECTION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasComplexSelection());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool hasSelection() const
HB_FUNC_STATIC(QTEXTCURSOR_HASSELECTION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasSelection());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_INSERTBLOCK)
{
  if (ISNUMPAR(0))
  {
    // void insertBlock()
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertBlock();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1))
  {
    // void insertBlock(const QTextBlockFormat &format)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertBlock(*PQTEXTBLOCKFORMAT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2))
  {
    // void insertBlock(const QTextBlockFormat &format, const QTextCharFormat &charFormat)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertBlock(*PQTEXTBLOCKFORMAT(1), *PQTEXTCHARFORMAT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void insertFragment(const QTextDocumentFragment &fragment)
HB_FUNC_STATIC(QTEXTCURSOR_INSERTFRAGMENT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1))
    {
#endif
      obj->insertFragment(*PQTEXTDOCUMENTFRAGMENT(1));
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

// QTextFrame *insertFrame(const QTextFrameFormat &format)
HB_FUNC_STATIC(QTEXTCURSOR_INSERTFRAME)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTFRAMEFORMAT(1))
    {
#endif
      QTextFrame *ptr = obj->insertFrame(*PQTEXTFRAMEFORMAT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTFRAME");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void insertHtml(const QString &html)
HB_FUNC_STATIC(QTEXTCURSOR_INSERTHTML)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->insertHtml(PQSTRING(1));
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

HB_FUNC_STATIC(QTEXTCURSOR_INSERTIMAGE)
{
  if (ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1))
  {
    // void insertImage(const QTextImageFormat &format)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertImage(*PQTEXTIMAGEFORMAT(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && HB_ISNUM(2))
  {
    // void insertImage(const QTextImageFormat &format, QTextFrameFormat::Position alignment)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertImage(*PQTEXTIMAGEFORMAT(1), (QTextFrameFormat::Position)hb_parni(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // void insertImage(const QString &name)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertImage(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(1, 2) && ISQIMAGE(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
  {
    // void insertImage(const QImage &image, const QString &name = QString())
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertImage(*PQIMAGE(1), OPQSTRING(2, QString()));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_INSERTLIST)
{
  if (ISNUMPAR(1) && ISQTEXTLISTFORMAT(1))
  {
    // QTextList *insertList(const QTextListFormat &format)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QTextList *ptr = obj->insertList(*PQTEXTLISTFORMAT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTLIST");
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // QTextList *insertList(QTextListFormat::Style style)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QTextList *ptr = obj->insertList((QTextListFormat::Style)hb_parni(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTLIST");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_INSERTTABLE)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQTEXTTABLEFORMAT(3))
  {
    // QTextTable *insertTable(int rows, int columns, const QTextTableFormat &format)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QTextTable *ptr = obj->insertTable(PINT(1), PINT(2), *PQTEXTTABLEFORMAT(3));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTTABLE");
    }
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    // QTextTable *insertTable(int rows, int columns)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QTextTable *ptr = obj->insertTable(PINT(1), PINT(2));
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTTABLE");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_INSERTTEXT)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // void insertText(const QString &text)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertText(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQTEXTCHARFORMAT(2))
  {
    // void insertText(const QString &text, const QTextCharFormat &format)
    QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->insertText(PQSTRING(1), *PQTEXTCHARFORMAT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// bool isCopyOf(const QTextCursor &other) const
HB_FUNC_STATIC(QTEXTCURSOR_ISCOPYOF)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCURSOR(1))
    {
#endif
      RBOOL(obj->isCopyOf(*PQTEXTCURSOR(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isNull() const
HB_FUNC_STATIC(QTEXTCURSOR_ISNULL)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void joinPreviousEditBlock()
HB_FUNC_STATIC(QTEXTCURSOR_JOINPREVIOUSEDITBLOCK)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->joinPreviousEditBlock();
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

// bool keepPositionOnInsert() const
HB_FUNC_STATIC(QTEXTCURSOR_KEEPPOSITIONONINSERT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->keepPositionOnInsert());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void mergeBlockCharFormat(const QTextCharFormat &modifier)
HB_FUNC_STATIC(QTEXTCURSOR_MERGEBLOCKCHARFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCHARFORMAT(1))
    {
#endif
      obj->mergeBlockCharFormat(*PQTEXTCHARFORMAT(1));
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

// void mergeBlockFormat(const QTextBlockFormat &modifier)
HB_FUNC_STATIC(QTEXTCURSOR_MERGEBLOCKFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1))
    {
#endif
      obj->mergeBlockFormat(*PQTEXTBLOCKFORMAT(1));
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

// void mergeCharFormat(const QTextCharFormat &modifier)
HB_FUNC_STATIC(QTEXTCURSOR_MERGECHARFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCHARFORMAT(1))
    {
#endif
      obj->mergeCharFormat(*PQTEXTCHARFORMAT(1));
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

// bool movePosition(QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor, int n =
// 1)
HB_FUNC_STATIC(QTEXTCURSOR_MOVEPOSITION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->movePosition((QTextCursor::MoveOperation)hb_parni(1),
                              HB_ISNIL(2) ? (QTextCursor::MoveMode)QTextCursor::MoveAnchor
                                          : (QTextCursor::MoveMode)hb_parni(2),
                              OPINT(3, 1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int position() const
HB_FUNC_STATIC(QTEXTCURSOR_POSITION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->position());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int positionInBlock() const
HB_FUNC_STATIC(QTEXTCURSOR_POSITIONINBLOCK)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->positionInBlock());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void removeSelectedText()
HB_FUNC_STATIC(QTEXTCURSOR_REMOVESELECTEDTEXT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->removeSelectedText();
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

// void select(QTextCursor::SelectionType selection)
HB_FUNC_STATIC(QTEXTCURSOR_SELECT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->select((QTextCursor::SelectionType)hb_parni(1));
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

// void selectedTableCells(int *firstRow, int *numRows, int *firstColumn, int *numColumns) const
HB_FUNC_STATIC(QTEXTCURSOR_SELECTEDTABLECELLS)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      int par1;
      int par2;
      int par3;
      int par4;
      obj->selectedTableCells(&par1, &par2, &par3, &par4);
      hb_storni(par1, 1);
      hb_storni(par2, 2);
      hb_storni(par3, 3);
      hb_storni(par4, 4);
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

// QString selectedText() const
HB_FUNC_STATIC(QTEXTCURSOR_SELECTEDTEXT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->selectedText());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextDocumentFragment selection() const
HB_FUNC_STATIC(QTEXTCURSOR_SELECTION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextDocumentFragment *ptr = new QTextDocumentFragment(obj->selection());
      Qt4xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int selectionEnd() const
HB_FUNC_STATIC(QTEXTCURSOR_SELECTIONEND)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->selectionEnd());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int selectionStart() const
HB_FUNC_STATIC(QTEXTCURSOR_SELECTIONSTART)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->selectionStart());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setBlockCharFormat(const QTextCharFormat &format)
HB_FUNC_STATIC(QTEXTCURSOR_SETBLOCKCHARFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCHARFORMAT(1))
    {
#endif
      obj->setBlockCharFormat(*PQTEXTCHARFORMAT(1));
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

// void setBlockFormat(const QTextBlockFormat &format)
HB_FUNC_STATIC(QTEXTCURSOR_SETBLOCKFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1))
    {
#endif
      obj->setBlockFormat(*PQTEXTBLOCKFORMAT(1));
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

// void setCharFormat(const QTextCharFormat &format)
HB_FUNC_STATIC(QTEXTCURSOR_SETCHARFORMAT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCHARFORMAT(1))
    {
#endif
      obj->setCharFormat(*PQTEXTCHARFORMAT(1));
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

// void setKeepPositionOnInsert(bool b)
HB_FUNC_STATIC(QTEXTCURSOR_SETKEEPPOSITIONONINSERT)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setKeepPositionOnInsert(PBOOL(1));
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

// void setPosition(int pos, QTextCursor::MoveMode m = QTextCursor::MoveAnchor)
HB_FUNC_STATIC(QTEXTCURSOR_SETPOSITION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      obj->setPosition(PINT(1), HB_ISNIL(2) ? (QTextCursor::MoveMode)QTextCursor::MoveAnchor
                                            : (QTextCursor::MoveMode)hb_parni(2));
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

// void setVerticalMovementX(int x)
HB_FUNC_STATIC(QTEXTCURSOR_SETVERTICALMOVEMENTX)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setVerticalMovementX(PINT(1));
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

// void setVisualNavigation(bool b)
HB_FUNC_STATIC(QTEXTCURSOR_SETVISUALNAVIGATION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setVisualNavigation(PBOOL(1));
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

// int verticalMovementX() const
HB_FUNC_STATIC(QTEXTCURSOR_VERTICALMOVEMENTX)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->verticalMovementX());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool visualNavigation() const
HB_FUNC_STATIC(QTEXTCURSOR_VISUALNAVIGATION)
{
  QTextCursor *obj = static_cast<QTextCursor *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->visualNavigation());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEXTCURSOR_NEWFROM)
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

HB_FUNC_STATIC(QTEXTCURSOR_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QTEXTCURSOR_NEWFROM);
}

HB_FUNC_STATIC(QTEXTCURSOR_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QTEXTCURSOR_NEWFROM);
}

HB_FUNC_STATIC(QTEXTCURSOR_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QTEXTCURSOR_SETSELFDESTRUCTION)
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
