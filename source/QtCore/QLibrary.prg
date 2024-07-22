//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QLibrary INHERIT QObject

   METHOD new
   METHOD delete
   METHOD load
   METHOD unload
   METHOD isLoaded
   METHOD setFileName
   METHOD fileName
   METHOD setFileNameAndVersion
   METHOD errorString
   METHOD setLoadHints
   METHOD loadHints
   METHOD resolve
   METHOD isLibrary

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLibrary
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QLibrary>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QLIBRARY_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QLibrary(QObject *parent = 0)
    */
    QLibrary *obj = new QLibrary(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QLibrary(const QString &fileName, QObject *parent = 0)
    */
    QLibrary *obj = new QLibrary(PQSTRING(1), OPQOBJECT(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    /*
    QLibrary(const QString &fileName, int verNum, QObject *parent = 0)
    */
    QLibrary *obj = new QLibrary(PQSTRING(1), PINT(2), OPQOBJECT(3, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    /*
    QLibrary(const QString &fileName, const QString &version, QObject *parent = 0)
    */
    QLibrary *obj = new QLibrary(PQSTRING(1), PQSTRING(2), OPQOBJECT(3, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QLIBRARY_DELETE)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
bool load()
*/
HB_FUNC_STATIC(QLIBRARY_LOAD)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->load());
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
bool unload()
*/
HB_FUNC_STATIC(QLIBRARY_UNLOAD)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->unload());
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
bool isLoaded() const
*/
HB_FUNC_STATIC(QLIBRARY_ISLOADED)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isLoaded());
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
void setFileName(const QString &fileName)
*/
HB_FUNC_STATIC(QLIBRARY_SETFILENAME)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFileName(PQSTRING(1));
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
QString fileName() const
*/
HB_FUNC_STATIC(QLIBRARY_FILENAME)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->fileName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QLIBRARY_SETFILENAMEANDVERSION)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
  {
    /*
    void setFileNameAndVersion(const QString &fileName, int verNum)
    */
    QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setFileNameAndVersion(PQSTRING(1), PINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void setFileNameAndVersion(const QString &fileName, const QString &version)
    */
    QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setFileNameAndVersion(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC(QLIBRARY_ERRORSTRING)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->errorString());
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
void setLoadHints(QLibrary::LoadHints hints)
*/
HB_FUNC_STATIC(QLIBRARY_SETLOADHINTS)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLoadHints((QLibrary::LoadHints)hb_parni(1));
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
QLibrary::LoadHints loadHints() const
*/
HB_FUNC_STATIC(QLIBRARY_LOADHINTS)
{
  QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->loadHints());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QLIBRARY_RESOLVE)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void *resolve(const char *symbol)
    */
    QLibrary *obj = qobject_cast<QLibrary *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      hb_retptr(static_cast<void *>(obj->resolve(PCONSTCHAR(1))));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    static void *resolve(const QString &fileName, const char *symbol)
    */

    hb_retptr(static_cast<void *>(QLibrary::resolve(PQSTRING(1), PCONSTCHAR(2))));
  }
  else if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISCHAR(3))
  {
    /*
    static void *resolve(const QString &fileName, int verNum, const char *symbol)
    */

    hb_retptr(static_cast<void *>(QLibrary::resolve(PQSTRING(1), PINT(2), PCONSTCHAR(3))));
  }
  else if (ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3))
  {
    /*
    static void *resolve(const QString &fileName, const QString &version, const char *symbol)
    */

    hb_retptr(static_cast<void *>(QLibrary::resolve(PQSTRING(1), PQSTRING(2), PCONSTCHAR(3))));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static bool isLibrary(const QString &fileName)
*/
HB_FUNC_STATIC(QLIBRARY_ISLIBRARY)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RBOOL(QLibrary::isLibrary(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
