//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBITARRAY
REQUEST QBYTEARRAY
REQUEST QCHAR
REQUEST QDATE
REQUEST QDATETIME
REQUEST QEASINGCURVE
REQUEST QLINE
REQUEST QLINEF
REQUEST QLOCALE
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QREGEXP
REQUEST QSIZE
REQUEST QSIZEF
REQUEST QTIME
REQUEST QURL
#endif

CLASS QVariant

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new11
   METHOD new13
   METHOD new16
   METHOD new17
   METHOD new27
   METHOD new
   METHOD delete
   METHOD canConvert
   METHOD clear
   METHOD convert
   METHOD isNull
   METHOD isValid
   METHOD toBitArray
   METHOD toBool
   METHOD toByteArray
   METHOD toChar
   METHOD toDate
   METHOD toDateTime
   METHOD toEasingCurve
   METHOD toLine
   METHOD toLineF
   METHOD toList
   METHOD toLocale
   METHOD toPoint
   METHOD toPointF
   METHOD toReal
   METHOD toRect
   METHOD toRectF
   METHOD toRegExp
   METHOD toSize
   METHOD toSizeF
   METHOD toString
   METHOD toStringList
   METHOD toTime
   METHOD toUrl
   METHOD type
   METHOD typeName
   METHOD userType
   METHOD nameToType
   METHOD typeToName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVariant
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QVariant>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QLocale>
#include <QtCore/QRegExp>
#include <QtCore/QEasingCurve>
#include <QtCore/QDataStream>
#include <QtCore/QByteArray>
#include <QtCore/QBitArray>
#include <QtCore/QString>
#include <QtCore/QLatin1String>
#include <QtCore/QStringList>
#include <QtCore/QChar>
#include <QtCore/QDate>
#include <QtCore/QTime>
#include <QtCore/QDateTime>
#include <QtCore/QSize>
#include <QtCore/QSizeF>
#include <QtCore/QPoint>
#include <QtCore/QPointF>
#include <QtCore/QLine>
#include <QtCore/QLineF>
#include <QtCore/QRect>
#include <QtCore/QRectF>
#include <QtCore/QUrl>

    /*
    QVariant(Qt::GlobalColor color)
    */
HB_FUNC_STATIC(QVARIANT_NEW5)
{
  QVariant *obj = new QVariant((Qt::GlobalColor)hb_parni(1));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(QVariant::Type type)
*/
HB_FUNC_STATIC(QVARIANT_NEW6)
{
  QVariant *obj = new QVariant((QVariant::Type)hb_parni(1));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(int typeOrUserType, const void *copy)
*/
HB_FUNC_STATIC(QVARIANT_NEW7)
{
  QVariant *obj = new QVariant(PINT(1), static_cast<const void *>(hb_parptr(2)));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(uint val)
*/
HB_FUNC_STATIC(QVARIANT_NEW11)
{
  QVariant *obj = new QVariant(PUINT(1));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(qulonglong val)
*/
HB_FUNC_STATIC(QVARIANT_NEW13)
{
  QVariant *obj = new QVariant(PQULONGLONG(1));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(float val)
*/
HB_FUNC_STATIC(QVARIANT_NEW16)
{
  QVariant *obj = new QVariant(PFLOAT(1));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(const char *val)
*/
HB_FUNC_STATIC(QVARIANT_NEW17)
{
  QVariant *obj = new QVariant(PCONSTCHAR(1));
  Qt4xHb::returnNewObject(obj, true);
}

/*
QVariant(const QList<QVariant> &val)
*/
HB_FUNC_STATIC(QVARIANT_NEW27)
{
  QList<QVariant> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  const int nLen1 = hb_arrayLen(aList1);
  for (int i1 = 0; i1 < nLen1; i1++)
  {
    par1 << *static_cast<QVariant *>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0)));
  }
  QVariant *obj = new QVariant(par1);
  Qt4xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC(QVARIANT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QVariant()
    */
    QVariant *obj = new QVariant();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QVariant(const QString &val)
    */
    QVariant *obj = new QVariant(PQSTRING(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISLOG(1))
  {
    /*
    QVariant(bool val)
    */
    QVariant *obj = new QVariant(PBOOL(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    if (hb_param(1, HB_IT_DOUBLE) != NULL)
    {
      /*
      QVariant(double val)
      */
      QVariant *obj = new QVariant(PDOUBLE(1));
      Qt4xHb::returnNewObject(obj, true);
    }
    else if (hb_param(1, HB_IT_LONG) != NULL)
    {
      /*
      QVariant(qlonglong val)
      */
      QVariant *obj = new QVariant(PQLONGLONG(1));
      Qt4xHb::returnNewObject(obj, true);
    }
    else
    {
      /*
      QVariant(int val)
      */
      QVariant *obj = new QVariant(PINT(1));
      Qt4xHb::returnNewObject(obj, true);
    }
  }
  else if (ISNUMPAR(1) && ISQLOCALE(1))
  {
    /*
    QVariant(const QLocale &l)
    */
    QVariant *obj = new QVariant(*PQLOCALE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQREGEXP(1))
  {
    /*
    QVariant(const QRegExp &regExp)
    */
    QVariant *obj = new QVariant(*PQREGEXP(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQEASINGCURVE(1))
  {
    /*
    QVariant(const QEasingCurve &val)
    */
    QVariant *obj = new QVariant(*PQEASINGCURVE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQVARIANT(1))
  {
    /*
    QVariant(const QVariant &p)
    */
    QVariant *obj = new QVariant(*PQVARIANT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDATASTREAM(1))
  {
    /*
    QVariant(QDataStream &s)
    */
    QVariant *obj = new QVariant(*PQDATASTREAM(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    QVariant(const QByteArray &val)
    */
    QVariant *obj = new QVariant(*PQBYTEARRAY(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBITARRAY(1))
  {
    /*
    QVariant(const QBitArray &val)
    */
    QVariant *obj = new QVariant(*PQBITARRAY(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQCHAR(1))
  {
    /*
    QVariant(const QChar &c)
    */
    QVariant *obj = new QVariant(*PQCHAR(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQLATIN1STRING(1))
  {
    /*
    QVariant(const QLatin1String &val)
    */
    QVariant *obj = new QVariant(*PQLATIN1STRING(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDATE(1))
  {
    /*
    QVariant(const QDate &val)
    */
    QVariant *obj = new QVariant(*PQDATE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQTIME(1))
  {
    /*
    QVariant(const QTime &val)
    */
    QVariant *obj = new QVariant(*PQTIME(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQDATETIME(1))
  {
    /*
    QVariant(const QDateTime &val)
    */
    QVariant *obj = new QVariant(*PQDATETIME(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSIZE(1))
  {
    /*
    QVariant(const QSize &val)
    */
    QVariant *obj = new QVariant(*PQSIZE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSIZEF(1))
  {
    /*
    QVariant(const QSizeF &val)
    */
    QVariant *obj = new QVariant(*PQSIZEF(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    /*
    QVariant(const QPoint &val)
    */
    QVariant *obj = new QVariant(*PQPOINT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    QVariant(const QPointF &val)
    */
    QVariant *obj = new QVariant(*PQPOINTF(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQLINE(1))
  {
    /*
    QVariant(const QLine &val)
    */
    QVariant *obj = new QVariant(*PQLINE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQLINEF(1))
  {
    /*
    QVariant(const QLineF &val)
    */
    QVariant *obj = new QVariant(*PQLINEF(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    /*
    QVariant(const QRect &val)
    */
    QVariant *obj = new QVariant(*PQRECT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    QVariant(const QRectF &val)
    */
    QVariant *obj = new QVariant(*PQRECTF(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQURL(1))
  {
    /*
    QVariant(const QUrl &val)
    */
    QVariant *obj = new QVariant(*PQURL(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  // TODO: identificar se � array de strings ou objetos
  else if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
    /*
    QVariant(const QStringList &val)
    */
    QVariant *obj = new QVariant(PQSTRINGLIST(1));
    Qt4xHb::returnNewObject(obj, true);
    // HB_FUNC_EXEC(QVARIANT_NEW27);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QVARIANT_DELETE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

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
bool canConvert(QVariant::Type t) const
*/
HB_FUNC_STATIC(QVARIANT_CANCONVERT)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->canConvert((QVariant::Type)hb_parni(1)));
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
void clear()
*/
HB_FUNC_STATIC(QVARIANT_CLEAR)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
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
bool convert(QVariant::Type t)
*/
HB_FUNC_STATIC(QVARIANT_CONVERT)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->convert((QVariant::Type)hb_parni(1)));
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
bool isNull() const
*/
HB_FUNC_STATIC(QVARIANT_ISNULL)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

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

/*
bool isValid() const
*/
HB_FUNC_STATIC(QVARIANT_ISVALID)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

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
QBitArray toBitArray() const
*/
HB_FUNC_STATIC(QVARIANT_TOBITARRAY)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBitArray *ptr = new QBitArray(obj->toBitArray());
      Qt4xHb::createReturnClass(ptr, "QBITARRAY", true);
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
bool toBool() const
*/
HB_FUNC_STATIC(QVARIANT_TOBOOL)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->toBool());
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
QByteArray toByteArray() const
*/
HB_FUNC_STATIC(QVARIANT_TOBYTEARRAY)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->toByteArray());
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

/*
QChar toChar() const
*/
HB_FUNC_STATIC(QVARIANT_TOCHAR)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QChar *ptr = new QChar(obj->toChar());
      Qt4xHb::createReturnClass(ptr, "QCHAR", true);
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
QDate toDate() const
*/
HB_FUNC_STATIC(QVARIANT_TODATE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDate *ptr = new QDate(obj->toDate());
      Qt4xHb::createReturnClass(ptr, "QDATE", true);
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
QDateTime toDateTime() const
*/
HB_FUNC_STATIC(QVARIANT_TODATETIME)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDateTime *ptr = new QDateTime(obj->toDateTime());
      Qt4xHb::createReturnClass(ptr, "QDATETIME", true);
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
QEasingCurve toEasingCurve() const
*/
HB_FUNC_STATIC(QVARIANT_TOEASINGCURVE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QEasingCurve *ptr = new QEasingCurve(obj->toEasingCurve());
      Qt4xHb::createReturnClass(ptr, "QEASINGCURVE", true);
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
QLine toLine() const
*/
HB_FUNC_STATIC(QVARIANT_TOLINE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QLine *ptr = new QLine(obj->toLine());
      Qt4xHb::createReturnClass(ptr, "QLINE", true);
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
QLineF toLineF() const
*/
HB_FUNC_STATIC(QVARIANT_TOLINEF)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QLineF *ptr = new QLineF(obj->toLineF());
      Qt4xHb::createReturnClass(ptr, "QLINEF", true);
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
QList<QVariant> toList() const
*/
HB_FUNC_STATIC(QVARIANT_TOLIST)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      Qt4xHb::convert_qvariantlist_to_array(obj->toList());
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
QLocale toLocale() const
*/
HB_FUNC_STATIC(QVARIANT_TOLOCALE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QLocale *ptr = new QLocale(obj->toLocale());
      Qt4xHb::createReturnClass(ptr, "QLOCALE", true);
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
QPoint toPoint() const
*/
HB_FUNC_STATIC(QVARIANT_TOPOINT)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPoint *ptr = new QPoint(obj->toPoint());
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
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
QPointF toPointF() const
*/
HB_FUNC_STATIC(QVARIANT_TOPOINTF)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->toPointF());
      Qt4xHb::createReturnClass(ptr, "QPOINTF", true);
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
qreal toReal(bool *ok = 0) const
*/
HB_FUNC_STATIC(QVARIANT_TOREAL)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      bool par1;
      RQREAL(obj->toReal(&par1));
      hb_storl(par1, 1);
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
QRect toRect() const
*/
HB_FUNC_STATIC(QVARIANT_TORECT)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRect *ptr = new QRect(obj->toRect());
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
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
QRectF toRectF() const
*/
HB_FUNC_STATIC(QVARIANT_TORECTF)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->toRectF());
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
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
QRegExp toRegExp() const
*/
HB_FUNC_STATIC(QVARIANT_TOREGEXP)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRegExp *ptr = new QRegExp(obj->toRegExp());
      Qt4xHb::createReturnClass(ptr, "QREGEXP", true);
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
QSize toSize() const
*/
HB_FUNC_STATIC(QVARIANT_TOSIZE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->toSize());
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

/*
QSizeF toSizeF() const
*/
HB_FUNC_STATIC(QVARIANT_TOSIZEF)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSizeF *ptr = new QSizeF(obj->toSizeF());
      Qt4xHb::createReturnClass(ptr, "QSIZEF", true);
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
QString toString() const
*/
HB_FUNC_STATIC(QVARIANT_TOSTRING)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toString());
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
QStringList toStringList() const
*/
HB_FUNC_STATIC(QVARIANT_TOSTRINGLIST)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->toStringList());
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
QTime toTime() const
*/
HB_FUNC_STATIC(QVARIANT_TOTIME)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTime *ptr = new QTime(obj->toTime());
      Qt4xHb::createReturnClass(ptr, "QTIME", true);
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
QUrl toUrl() const
*/
HB_FUNC_STATIC(QVARIANT_TOURL)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->toUrl());
      Qt4xHb::createReturnClass(ptr, "QURL", true);
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
QVariant::Type type() const
*/
HB_FUNC_STATIC(QVARIANT_TYPE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
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
const char *typeName() const
*/
HB_FUNC_STATIC(QVARIANT_TYPENAME)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      hb_retc((const char *)obj->typeName());
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
int userType() const
*/
HB_FUNC_STATIC(QVARIANT_USERTYPE)
{
  QVariant *obj = static_cast<QVariant *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->userType());
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
static QVariant::Type nameToType(const char *name)
*/
HB_FUNC_STATIC(QVARIANT_NAMETOTYPE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RENUM(QVariant::nameToType(PCONSTCHAR(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static const char *typeToName(QVariant::Type typ)
*/
HB_FUNC_STATIC(QVARIANT_TYPETONAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    hb_retc((const char *)QVariant::typeToName((QVariant::Type)hb_parni(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QVARIANT_NEWFROM)
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

HB_FUNC_STATIC(QVARIANT_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QVARIANT_NEWFROM);
}

HB_FUNC_STATIC(QVARIANT_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QVARIANT_NEWFROM);
}

HB_FUNC_STATIC(QVARIANT_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QVARIANT_SETSELFDESTRUCTION)
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
