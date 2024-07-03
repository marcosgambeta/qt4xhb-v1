//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

CLASS QTextFrameFormat INHERIT QTextFormat

   METHOD new
   METHOD delete
   METHOD border
   METHOD borderBrush
   METHOD borderStyle
   METHOD bottomMargin
   METHOD height
   METHOD isValid
   METHOD leftMargin
   METHOD margin
   METHOD padding
   METHOD pageBreakPolicy
   METHOD position
   METHOD rightMargin
   METHOD setBorder
   METHOD setBorderBrush
   METHOD setBorderStyle
   METHOD setBottomMargin
   METHOD setHeight
   METHOD setLeftMargin
   METHOD setMargin
   METHOD setPadding
   METHOD setPageBreakPolicy
   METHOD setPosition
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setWidth
   METHOD topMargin
   METHOD width

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextFrameFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTextFrameFormat>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

    /*
    QTextFrameFormat()
    */
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_NEW)
{
  if (ISNUMPAR(0))
  {
    QTextFrameFormat *obj = new QTextFrameFormat();
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEXTFRAMEFORMAT_DELETE)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

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
qreal border() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_BORDER)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->border());
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
QBrush borderBrush() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_BORDERBRUSH)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBrush *ptr = new QBrush(obj->borderBrush());
      Qt4xHb::createReturnClass(ptr, "QBRUSH", true);
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
QTextFrameFormat::BorderStyle borderStyle() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_BORDERSTYLE)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->borderStyle());
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
qreal bottomMargin() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_BOTTOMMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->bottomMargin());
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
QTextLength height() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_HEIGHT)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextLength *ptr = new QTextLength(obj->height());
      Qt4xHb::createReturnClass(ptr, "QTEXTLENGTH", true);
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
bool isValid() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_ISVALID)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
qreal leftMargin() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_LEFTMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->leftMargin());
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
qreal margin() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_MARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->margin());
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
qreal padding() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_PADDING)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->padding());
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
QTextFormat::PageBreakFlags pageBreakPolicy() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_PAGEBREAKPOLICY)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->pageBreakPolicy());
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
QTextFrameFormat::Position position() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_POSITION)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->position());
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
qreal rightMargin() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_RIGHTMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->rightMargin());
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
void setBorder( qreal width )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETBORDER)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setBorder(PQREAL(1));
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
void setBorderBrush( const QBrush & brush )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETBORDERBRUSH)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBRUSH(1))
    {
#endif
      obj->setBorderBrush(*PQBRUSH(1));
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
void setBorderStyle( QTextFrameFormat::BorderStyle style )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETBORDERSTYLE)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setBorderStyle((QTextFrameFormat::BorderStyle)hb_parni(1));
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
void setBottomMargin( qreal margin )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETBOTTOMMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setBottomMargin(PQREAL(1));
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

HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETHEIGHT)
{
  if (ISNUMPAR(1) && ISQTEXTLENGTH(1))
  {
    /*
    void setHeight( const QTextLength & height )
    */
    QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setHeight(*PQTEXTLENGTH(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void setHeight( qreal height )
    */
    QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setHeight(PQREAL(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setLeftMargin( qreal margin )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETLEFTMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLeftMargin(PQREAL(1));
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
void setMargin( qreal margin )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMargin(PQREAL(1));
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
void setPadding( qreal width )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETPADDING)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPadding(PQREAL(1));
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
void setPageBreakPolicy( QTextFormat::PageBreakFlags policy )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETPAGEBREAKPOLICY)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPageBreakPolicy((QTextFormat::PageBreakFlags)hb_parni(1));
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
void setPosition( QTextFrameFormat::Position policy )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETPOSITION)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPosition((QTextFrameFormat::Position)hb_parni(1));
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
void setRightMargin( qreal margin )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETRIGHTMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setRightMargin(PQREAL(1));
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
void setTopMargin( qreal margin )
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETTOPMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setTopMargin(PQREAL(1));
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

HB_FUNC_STATIC(QTEXTFRAMEFORMAT_SETWIDTH)
{
  if (ISNUMPAR(1) && ISQTEXTLENGTH(1))
  {
    /*
    void setWidth( const QTextLength & width )
    */
    QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setWidth(*PQTEXTLENGTH(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void setWidth( qreal width )
    */
    QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setWidth(PQREAL(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qreal topMargin() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_TOPMARGIN)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->topMargin());
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
QTextLength width() const
*/
HB_FUNC_STATIC(QTEXTFRAMEFORMAT_WIDTH)
{
  QTextFrameFormat *obj = static_cast<QTextFrameFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextLength *ptr = new QTextLength(obj->width());
      Qt4xHb::createReturnClass(ptr, "QTEXTLENGTH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
