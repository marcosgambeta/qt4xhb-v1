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
REQUEST QIMAGE
REQUEST QPAINTERPATH
REQUEST QPOINTF
#endif

CLASS QRawFont

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD advancesForGlyphIndexes
   METHOD alphaMapForGlyph
   METHOD ascent
   METHOD averageCharWidth
   METHOD descent
   METHOD familyName
   METHOD fontTable
   METHOD glyphIndexesForString
   METHOD hintingPreference
   METHOD isValid
   METHOD leading
   METHOD loadFromData
   METHOD loadFromFile
   METHOD maxCharWidth
   METHOD pathForGlyph
   METHOD pixelSize
   METHOD setPixelSize
   METHOD style
   METHOD styleName
   METHOD supportedWritingSystems
   METHOD supportsCharacter
   METHOD unitsPerEm
   METHOD weight
   METHOD xHeight
   METHOD fromFont

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRawFont
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QRawFont>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtGui/QImage>

HB_FUNC_STATIC(QRAWFONT_NEW)
{
  if (ISNUMPAR(0))
  {
    // QRawFont()
    QRawFont *obj = new QRawFont();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // QRawFont(const QString &fileName, qreal pixelSize, QFont::HintingPreference hintingPreference =
    // QFont::PreferDefaultHinting)
    QRawFont *obj = new QRawFont(PQSTRING(1), PQREAL(2),
                                 HB_ISNIL(3) ? (QFont::HintingPreference)QFont::PreferDefaultHinting
                                             : (QFont::HintingPreference)hb_parni(3));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 3) && ISQBYTEARRAY(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // QRawFont(const QByteArray &fontData, qreal pixelSize, QFont::HintingPreference hintingPreference =
    // QFont::PreferDefaultHinting)
    QRawFont *obj = new QRawFont(*PQBYTEARRAY(1), PQREAL(2),
                                 HB_ISNIL(3) ? (QFont::HintingPreference)QFont::PreferDefaultHinting
                                             : (QFont::HintingPreference)hb_parni(3));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQRAWFONT(1))
  {
    // QRawFont(const QRawFont &other)
    QRawFont *obj = new QRawFont(*PQRAWFONT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QRAWFONT_DELETE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// QVector<QPointF> advancesForGlyphIndexes(const QVector<quint32> &glyphIndexes) const
HB_FUNC_STATIC(QRAWFONT_ADVANCESFORGLYPHINDEXES)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QVector<quint32> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      quint32 temp1;
      for (int i1 = 0; i1 < nLen1; i1++)
      {
        temp1 = (quint32)hb_arrayGetNI(aList1, i1 + 1);
        par1 << temp1;
      }
      QVector<QPointF> list = obj->advancesForGlyphIndexes(par1);
      PHB_DYNS pDynSym = hb_dynsymFindName("QPOINTF");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        const int count = list.count();
        for (int i = 0; i < count; i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(pItem, new QPointF(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QPOINTF", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QImage alphaMapForGlyph(quint32 glyphIndex, QRawFont::AntialiasingType antialiasingType =
// QRawFont::SubPixelAntialiasing, const QTransform &transform = QTransform()) const
HB_FUNC_STATIC(QRAWFONT_ALPHAMAPFORGLYPH)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQTRANSFORM(3) || HB_ISNIL(3)))
    {
#endif
      QImage *ptr = new QImage(
          obj->alphaMapForGlyph(PQUINT32(1),
                                HB_ISNIL(2) ? (QRawFont::AntialiasingType)QRawFont::SubPixelAntialiasing
                                            : (QRawFont::AntialiasingType)hb_parni(2),
                                HB_ISNIL(3) ? QTransform() : *static_cast<QTransform *>(Qt4xHb::itemGetPtr(3))));
      Qt4xHb::createReturnClass(ptr, "QIMAGE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal ascent() const
HB_FUNC_STATIC(QRAWFONT_ASCENT)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->ascent());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal averageCharWidth() const
HB_FUNC_STATIC(QRAWFONT_AVERAGECHARWIDTH)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->averageCharWidth());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal descent() const
HB_FUNC_STATIC(QRAWFONT_DESCENT)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->descent());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString familyName() const
HB_FUNC_STATIC(QRAWFONT_FAMILYNAME)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->familyName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QByteArray fontTable(const char *tagName) const
HB_FUNC_STATIC(QRAWFONT_FONTTABLE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->fontTable(PCONSTCHAR(1)));
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

// QVector<quint32> glyphIndexesForString(const QString &text) const
HB_FUNC_STATIC(QRAWFONT_GLYPHINDEXESFORSTRING)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QVector<quint32> list = obj->glyphIndexesForString(PQSTRING(1));
      PHB_ITEM pArray = hb_itemArrayNew(0);
      const int count = list.count();
      for (int i = 0; i < count; i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, (quint32)list[i]);
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QFont::HintingPreference hintingPreference() const
HB_FUNC_STATIC(QRAWFONT_HINTINGPREFERENCE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->hintingPreference());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isValid() const
HB_FUNC_STATIC(QRAWFONT_ISVALID)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// qreal leading() const
HB_FUNC_STATIC(QRAWFONT_LEADING)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->leading());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void loadFromData(const QByteArray &fontData, qreal pixelSize, QFont::HintingPreference hintingPreference)
HB_FUNC_STATIC(QRAWFONT_LOADFROMDATA)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQBYTEARRAY(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->loadFromData(*PQBYTEARRAY(1), PQREAL(2), (QFont::HintingPreference)hb_parni(3));
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

// void loadFromFile(const QString &fileName, qreal pixelSize, QFont::HintingPreference hintingPreference)
HB_FUNC_STATIC(QRAWFONT_LOADFROMFILE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->loadFromFile(PQSTRING(1), PQREAL(2), (QFont::HintingPreference)hb_parni(3));
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

// qreal maxCharWidth() const
HB_FUNC_STATIC(QRAWFONT_MAXCHARWIDTH)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maxCharWidth());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QPainterPath pathForGlyph(quint32 glyphIndex) const
HB_FUNC_STATIC(QRAWFONT_PATHFORGLYPH)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->pathForGlyph(PQUINT32(1)));
      Qt4xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal pixelSize() const
HB_FUNC_STATIC(QRAWFONT_PIXELSIZE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->pixelSize());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setPixelSize(qreal pixelSize)
HB_FUNC_STATIC(QRAWFONT_SETPIXELSIZE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPixelSize(PQREAL(1));
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

// QFont::Style style() const
HB_FUNC_STATIC(QRAWFONT_STYLE)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->style());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString styleName() const
HB_FUNC_STATIC(QRAWFONT_STYLENAME)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->styleName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QList<QFontDatabase::WritingSystem> supportedWritingSystems() const
HB_FUNC_STATIC(QRAWFONT_SUPPORTEDWRITINGSYSTEMS)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QFontDatabase::WritingSystem> list = obj->supportedWritingSystems();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      const int count = list.count();
      for (int i = 0; i < count; i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, (int)list[i]);
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QRAWFONT_SUPPORTSCHARACTER)
{
  if (ISNUMPAR(1) && ISQCHAR(1))
  {
    // bool supportsCharacter(QChar character) const
    QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->supportsCharacter(*PQCHAR(1)));
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // bool supportsCharacter(quint32 ucs4) const
    QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->supportsCharacter(PQUINT32(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// qreal unitsPerEm() const
HB_FUNC_STATIC(QRAWFONT_UNITSPEREM)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->unitsPerEm());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int weight() const
HB_FUNC_STATIC(QRAWFONT_WEIGHT)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->weight());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal xHeight() const
HB_FUNC_STATIC(QRAWFONT_XHEIGHT)
{
  QRawFont *obj = static_cast<QRawFont *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->xHeight());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// static QRawFont fromFont(const QFont &font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any)
HB_FUNC_STATIC(QRAWFONT_FROMFONT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && ISQFONT(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
#endif
    QRawFont *ptr =
        new QRawFont(QRawFont::fromFont(*PQFONT(1), HB_ISNIL(2) ? (QFontDatabase::WritingSystem)QFontDatabase::Any
                                                                : (QFontDatabase::WritingSystem)hb_parni(2)));
    Qt4xHb::createReturnClass(ptr, "QRAWFONT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QRAWFONT_NEWFROM)
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

HB_FUNC_STATIC(QRAWFONT_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QRAWFONT_NEWFROM);
}

HB_FUNC_STATIC(QRAWFONT_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QRAWFONT_NEWFROM);
}

HB_FUNC_STATIC(QRAWFONT_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QRAWFONT_SETSELFDESTRUCTION)
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
