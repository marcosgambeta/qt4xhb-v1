//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD bold
   METHOD families
   METHOD font
   METHOD isBitmapScalable
   METHOD isFixedPitch
   METHOD isScalable
   METHOD isSmoothlyScalable
   METHOD italic
   METHOD pointSizes
   METHOD smoothSizes
   METHOD styleString
   METHOD styles
   METHOD weight
   METHOD writingSystems
   METHOD addApplicationFont
   METHOD addApplicationFontFromData
   METHOD applicationFontFamilies
   METHOD removeAllApplicationFonts
   METHOD removeApplicationFont
   METHOD standardSizes
   METHOD supportsThreadedFontRendering
   METHOD writingSystemName
   METHOD writingSystemSample

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFontDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QFontDatabase>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QStringList>

    /*
    QFontDatabase()
    */
HB_FUNC_STATIC(QFONTDATABASE_NEW)
{
  if (ISNUMPAR(0))
  {
    QFontDatabase *obj = new QFontDatabase();
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool bold(const QString &family, const QString &style) const
*/
HB_FUNC_STATIC(QFONTDATABASE_BOLD)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      RBOOL(obj->bold(PQSTRING(1), PQSTRING(2)));
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
QStringList families(QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any) const
*/
HB_FUNC_STATIC(QFONTDATABASE_FAMILIES)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RQSTRINGLIST(obj->families(HB_ISNIL(1) ? (QFontDatabase::WritingSystem)QFontDatabase::Any
                                             : (QFontDatabase::WritingSystem)hb_parni(1)));
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
QFont font(const QString &family, const QString &style, int pointSize) const
*/
HB_FUNC_STATIC(QFONTDATABASE_FONT)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3))
    {
#endif
      QFont *ptr = new QFont(obj->font(PQSTRING(1), PQSTRING(2), PINT(3)));
      Qt4xHb::createReturnClass(ptr, "QFONT", true);
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
bool isBitmapScalable(const QString &family, const QString &style = QString()) const
*/
HB_FUNC_STATIC(QFONTDATABASE_ISBITMAPSCALABLE)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->isBitmapScalable(PQSTRING(1), OPQSTRING(2, QString())));
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
bool isFixedPitch(const QString &family, const QString &style = QString()) const
*/
HB_FUNC_STATIC(QFONTDATABASE_ISFIXEDPITCH)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->isFixedPitch(PQSTRING(1), OPQSTRING(2, QString())));
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
bool isScalable(const QString &family, const QString &style = QString()) const
*/
HB_FUNC_STATIC(QFONTDATABASE_ISSCALABLE)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->isScalable(PQSTRING(1), OPQSTRING(2, QString())));
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
bool isSmoothlyScalable(const QString &family, const QString &style = QString()) const
*/
HB_FUNC_STATIC(QFONTDATABASE_ISSMOOTHLYSCALABLE)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->isSmoothlyScalable(PQSTRING(1), OPQSTRING(2, QString())));
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
bool italic(const QString &family, const QString &style) const
*/
HB_FUNC_STATIC(QFONTDATABASE_ITALIC)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      RBOOL(obj->italic(PQSTRING(1), PQSTRING(2)));
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
QList<int> pointSizes(const QString &family, const QString &style = QString())
*/
HB_FUNC_STATIC(QFONTDATABASE_POINTSIZES)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      QList<int> list = obj->pointSizes(PQSTRING(1), OPQSTRING(2, QString()));
      Qt4xHb::convert_qlist_int_to_array(list);
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
QList<int> smoothSizes(const QString &family, const QString &style)
*/
HB_FUNC_STATIC(QFONTDATABASE_SMOOTHSIZES)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      QList<int> list = obj->smoothSizes(PQSTRING(1), PQSTRING(2));
      Qt4xHb::convert_qlist_int_to_array(list);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QFONTDATABASE_STYLESTRING)
{
  if (ISNUMPAR(1) && ISQFONT(1))
  {
    /*
    QString styleString(const QFont &font)
    */
    QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RQSTRING(obj->styleString(*PQFONT(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQFONTINFO(1))
  {
    /*
    QString styleString(const QFontInfo &fontInfo)
    */
    QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RQSTRING(obj->styleString(*PQFONTINFO(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList styles(const QString &family) const
*/
HB_FUNC_STATIC(QFONTDATABASE_STYLES)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRINGLIST(obj->styles(PQSTRING(1)));
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
int weight(const QString &family, const QString &style) const
*/
HB_FUNC_STATIC(QFONTDATABASE_WEIGHT)
{
  QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      RINT(obj->weight(PQSTRING(1), PQSTRING(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QFONTDATABASE_WRITINGSYSTEMS)
{
  if (ISNUMPAR(0))
  {
    /*
    QList<QFontDatabase::WritingSystem> writingSystems() const
    */
    QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QList<QFontDatabase::WritingSystem> list = obj->writingSystems();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      const int count = list.count();
      for (int i = 0; i < count; i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, static_cast<int>(list[i]));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QList<QFontDatabase::WritingSystem> writingSystems(const QString &family) const
    */
    QFontDatabase *obj = static_cast<QFontDatabase *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QList<QFontDatabase::WritingSystem> list = obj->writingSystems(PQSTRING(1));
      PHB_ITEM pArray = hb_itemArrayNew(0);
      const int count = list.count();
      for (int i = 0; i < count; i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, static_cast<int>(list[i]));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static int addApplicationFont(const QString &fileName)
*/
HB_FUNC_STATIC(QFONTDATABASE_ADDAPPLICATIONFONT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RINT(QFontDatabase::addApplicationFont(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int addApplicationFontFromData(const QByteArray &fontData)
*/
HB_FUNC_STATIC(QFONTDATABASE_ADDAPPLICATIONFONTFROMDATA)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
#endif
    RINT(QFontDatabase::addApplicationFontFromData(*PQBYTEARRAY(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList applicationFontFamilies(int id)
*/
HB_FUNC_STATIC(QFONTDATABASE_APPLICATIONFONTFAMILIES)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    RQSTRINGLIST(QFontDatabase::applicationFontFamilies(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool removeAllApplicationFonts()
*/
HB_FUNC_STATIC(QFONTDATABASE_REMOVEALLAPPLICATIONFONTS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QFontDatabase::removeAllApplicationFonts());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool removeApplicationFont(int id)
*/
HB_FUNC_STATIC(QFONTDATABASE_REMOVEAPPLICATIONFONT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    RBOOL(QFontDatabase::removeApplicationFont(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QList<int> standardSizes()
*/
HB_FUNC_STATIC(QFONTDATABASE_STANDARDSIZES)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QList<int> list = QFontDatabase::standardSizes();
    Qt4xHb::convert_qlist_int_to_array(list);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool supportsThreadedFontRendering()
*/
HB_FUNC_STATIC(QFONTDATABASE_SUPPORTSTHREADEDFONTRENDERING)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QFontDatabase::supportsThreadedFontRendering());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString writingSystemName(QFontDatabase::WritingSystem writingSystem)
*/
HB_FUNC_STATIC(QFONTDATABASE_WRITINGSYSTEMNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    RQSTRING(QFontDatabase::writingSystemName((QFontDatabase::WritingSystem)hb_parni(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString writingSystemSample(QFontDatabase::WritingSystem writingSystem)
*/
HB_FUNC_STATIC(QFONTDATABASE_WRITINGSYSTEMSAMPLE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    RQSTRING(QFontDatabase::writingSystemSample((QFontDatabase::WritingSystem)hb_parni(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QFONTDATABASE_NEWFROM)
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

HB_FUNC_STATIC(QFONTDATABASE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QFONTDATABASE_NEWFROM);
}

HB_FUNC_STATIC(QFONTDATABASE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QFONTDATABASE_NEWFROM);
}

HB_FUNC_STATIC(QFONTDATABASE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QFONTDATABASE_SETSELFDESTRUCTION)
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
