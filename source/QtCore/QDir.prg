//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
REQUEST QFILEINFO
#endif

CLASS QDir

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList
   METHOD entryList
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QDir>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QDIR_NEW)
{
  if (ISNUMPAR(1) && ISQDIR(1))
  {
    // QDir(const QDir &dir)
    QDir *obj = new QDir(*PQDIR(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(0, 1) && (HB_ISCHAR(1) || HB_ISNIL(1)))
  {
    // QDir(const QString &path = QString())
    QDir *obj = new QDir(OPQSTRING(1, QString()));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 4) && HB_ISCHAR(1) && HB_ISCHAR(2) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    QDir(const QString &path, const QString &nameFilter, QDir::SortFlags sort = QDir::SortFlags(QDir::Name |
    QDir::IgnoreCase), QDir::Filters filters = QDir::AllEntries)
    */
    QDir *obj = new QDir(PQSTRING(1), PQSTRING(2),
                         HB_ISNIL(3) ? (QDir::SortFlags)QDir::SortFlags(QDir::Name | QDir::IgnoreCase)
                                     : (QDir::SortFlags)hb_parni(3),
                         HB_ISNIL(4) ? (QDir::Filters)QDir::AllEntries : (QDir::Filters)hb_parni(4));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDIR_DELETE)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

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
QString absoluteFilePath(const QString &fileName) const
*/
HB_FUNC_STATIC(QDIR_ABSOLUTEFILEPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->absoluteFilePath(PQSTRING(1)));
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
QString absolutePath() const
*/
HB_FUNC_STATIC(QDIR_ABSOLUTEPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->absolutePath());
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
QString canonicalPath() const
*/
HB_FUNC_STATIC(QDIR_CANONICALPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->canonicalPath());
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
bool cd(const QString &dirName)
*/
HB_FUNC_STATIC(QDIR_CD)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->cd(PQSTRING(1)));
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
bool cdUp()
*/
HB_FUNC_STATIC(QDIR_CDUP)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->cdUp());
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
uint count() const
*/
HB_FUNC_STATIC(QDIR_COUNT)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RUINT(obj->count());
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
QString dirName() const
*/
HB_FUNC_STATIC(QDIR_DIRNAME)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->dirName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDIR_ENTRYINFOLIST)
{
  if (ISBETWEEN(1, 3) && HB_ISARRAY(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QFileInfoList entryInfoList(const QStringList &nameFilters, QDir::Filters filters = QDir::NoFilter,
    QDir::SortFlags sort = QDir::NoSort) const
    */
    QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QFileInfoList list =
          obj->entryInfoList(PQSTRINGLIST(1), HB_ISNIL(2) ? (QDir::Filters)QDir::NoFilter : (QDir::Filters)hb_parni(2),
                             HB_ISNIL(3) ? (QDir::SortFlags)QDir::NoSort : (QDir::SortFlags)hb_parni(3));
      PHB_DYNS pDynSym = hb_dynsymFindName("QFILEINFO");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QFileInfo(list[i]));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
    }
  }
  else if (ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QFileInfoList entryInfoList(QDir::Filters filters = QDir::NoFilter, QDir::SortFlags sort = QDir::NoSort) const
    */
    QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QFileInfoList list =
          obj->entryInfoList(HB_ISNIL(1) ? (QDir::Filters)QDir::NoFilter : (QDir::Filters)hb_parni(1),
                             HB_ISNIL(2) ? (QDir::SortFlags)QDir::NoSort : (QDir::SortFlags)hb_parni(2));
      PHB_DYNS pDynSym = hb_dynsymFindName("QFILEINFO");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QFileInfo(list[i]));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDIR_ENTRYLIST)
{
  if (ISBETWEEN(1, 3) && HB_ISARRAY(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QStringList entryList(const QStringList &nameFilters, QDir::Filters filters = QDir::NoFilter, QDir::SortFlags sort
    = QDir::NoSort) const
    */
    QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->entryList(PQSTRINGLIST(1),
                                  HB_ISNIL(2) ? (QDir::Filters)QDir::NoFilter : (QDir::Filters)hb_parni(2),
                                  HB_ISNIL(3) ? (QDir::SortFlags)QDir::NoSort : (QDir::SortFlags)hb_parni(3)));
    }
  }
  else if (ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QStringList entryList(QDir::Filters filters = QDir::NoFilter, QDir::SortFlags sort = QDir::NoSort) const
    */
    QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->entryList(HB_ISNIL(1) ? (QDir::Filters)QDir::NoFilter : (QDir::Filters)hb_parni(1),
                                  HB_ISNIL(2) ? (QDir::SortFlags)QDir::NoSort : (QDir::SortFlags)hb_parni(2)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDIR_EXISTS)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    bool exists(const QString &name) const
    */
    QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->exists(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(0))
  {
    /*
    bool exists() const
    */
    QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->exists());
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString filePath(const QString &fileName) const
*/
HB_FUNC_STATIC(QDIR_FILEPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->filePath(PQSTRING(1)));
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
QDir::Filters filter() const
*/
HB_FUNC_STATIC(QDIR_FILTER)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->filter());
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
bool isAbsolute() const
*/
HB_FUNC_STATIC(QDIR_ISABSOLUTE)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAbsolute());
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
bool isReadable() const
*/
HB_FUNC_STATIC(QDIR_ISREADABLE)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isReadable());
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
bool isRelative() const
*/
HB_FUNC_STATIC(QDIR_ISRELATIVE)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isRelative());
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
bool isRoot() const
*/
HB_FUNC_STATIC(QDIR_ISROOT)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isRoot());
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
bool makeAbsolute()
*/
HB_FUNC_STATIC(QDIR_MAKEABSOLUTE)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->makeAbsolute());
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
bool mkdir(const QString &dirName) const
*/
HB_FUNC_STATIC(QDIR_MKDIR)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->mkdir(PQSTRING(1)));
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
bool mkpath(const QString &dirPath) const
*/
HB_FUNC_STATIC(QDIR_MKPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->mkpath(PQSTRING(1)));
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
QStringList nameFilters() const
*/
HB_FUNC_STATIC(QDIR_NAMEFILTERS)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->nameFilters());
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
QString path() const
*/
HB_FUNC_STATIC(QDIR_PATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->path());
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
void refresh() const
*/
HB_FUNC_STATIC(QDIR_REFRESH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->refresh();
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
QString relativeFilePath(const QString &fileName) const
*/
HB_FUNC_STATIC(QDIR_RELATIVEFILEPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->relativeFilePath(PQSTRING(1)));
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
bool remove(const QString &fileName)
*/
HB_FUNC_STATIC(QDIR_REMOVE)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->remove(PQSTRING(1)));
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
bool rename(const QString &oldName, const QString &newName)
*/
HB_FUNC_STATIC(QDIR_RENAME)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      RBOOL(obj->rename(PQSTRING(1), PQSTRING(2)));
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
bool rmdir(const QString &dirName) const
*/
HB_FUNC_STATIC(QDIR_RMDIR)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->rmdir(PQSTRING(1)));
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
bool rmpath(const QString &dirPath) const
*/
HB_FUNC_STATIC(QDIR_RMPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->rmpath(PQSTRING(1)));
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
void setFilter(QDir::Filters filters)
*/
HB_FUNC_STATIC(QDIR_SETFILTER)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFilter((QDir::Filters)hb_parni(1));
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
void setNameFilters(const QStringList &nameFilters)
*/
HB_FUNC_STATIC(QDIR_SETNAMEFILTERS)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setNameFilters(PQSTRINGLIST(1));
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
void setPath(const QString &path)
*/
HB_FUNC_STATIC(QDIR_SETPATH)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setPath(PQSTRING(1));
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
void setSorting(QDir::SortFlags sort)
*/
HB_FUNC_STATIC(QDIR_SETSORTING)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSorting((QDir::SortFlags)hb_parni(1));
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
QDir::SortFlags sorting() const
*/
HB_FUNC_STATIC(QDIR_SORTING)
{
  QDir *obj = static_cast<QDir *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->sorting());
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
static void addSearchPath(const QString &prefix, const QString &path)
*/
HB_FUNC_STATIC(QDIR_ADDSEARCHPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
#endif
    QDir::addSearchPath(PQSTRING(1), PQSTRING(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QString cleanPath(const QString &path)
*/
HB_FUNC_STATIC(QDIR_CLEANPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RQSTRING(QDir::cleanPath(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDir current()
*/
HB_FUNC_STATIC(QDIR_CURRENT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QDir *ptr = new QDir(QDir::current());
    Qt4xHb::createReturnClass(ptr, "QDIR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString currentPath()
*/
HB_FUNC_STATIC(QDIR_CURRENTPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QDir::currentPath());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QFileInfoList drives()
*/
HB_FUNC_STATIC(QDIR_DRIVES)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QFileInfoList list = QDir::drives();
    PHB_DYNS pDynSym = hb_dynsymFindName("QFILEINFO");
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
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QFileInfo(list[i]));
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
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS);
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

/*
static QString fromNativeSeparators(const QString &pathName)
*/
HB_FUNC_STATIC(QDIR_FROMNATIVESEPARATORS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RQSTRING(QDir::fromNativeSeparators(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDir home()
*/
HB_FUNC_STATIC(QDIR_HOME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QDir *ptr = new QDir(QDir::home());
    Qt4xHb::createReturnClass(ptr, "QDIR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString homePath()
*/
HB_FUNC_STATIC(QDIR_HOMEPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QDir::homePath());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isAbsolutePath(const QString &path)
*/
HB_FUNC_STATIC(QDIR_ISABSOLUTEPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RBOOL(QDir::isAbsolutePath(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isRelativePath(const QString &path)
*/
HB_FUNC_STATIC(QDIR_ISRELATIVEPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RBOOL(QDir::isRelativePath(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QDIR_MATCH)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    static bool match(const QString &filter, const QString &fileName)
    */

    RBOOL(QDir::match(PQSTRING(1), PQSTRING(2)));
  }
  else if (ISNUMPAR(2) && HB_ISARRAY(1) && HB_ISCHAR(2))
  {
    /*
    static bool match(const QStringList &filters, const QString &fileName)
    */

    RBOOL(QDir::match(PQSTRINGLIST(1), PQSTRING(2)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QDir root()
*/
HB_FUNC_STATIC(QDIR_ROOT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QDir *ptr = new QDir(QDir::root());
    Qt4xHb::createReturnClass(ptr, "QDIR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString rootPath()
*/
HB_FUNC_STATIC(QDIR_ROOTPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QDir::rootPath());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList searchPaths(const QString &prefix)
*/
HB_FUNC_STATIC(QDIR_SEARCHPATHS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RQSTRINGLIST(QDir::searchPaths(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QChar separator()
*/
HB_FUNC_STATIC(QDIR_SEPARATOR)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QChar *ptr = new QChar(QDir::separator());
    Qt4xHb::createReturnClass(ptr, "QCHAR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool setCurrent(const QString &path)
*/
HB_FUNC_STATIC(QDIR_SETCURRENT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RBOOL(QDir::setCurrent(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setSearchPaths(const QString &prefix, const QStringList &searchPaths)
*/
HB_FUNC_STATIC(QDIR_SETSEARCHPATHS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
  {
#endif
    QDir::setSearchPaths(PQSTRING(1), PQSTRINGLIST(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QDir temp()
*/
HB_FUNC_STATIC(QDIR_TEMP)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QDir *ptr = new QDir(QDir::temp());
    Qt4xHb::createReturnClass(ptr, "QDIR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString tempPath()
*/
HB_FUNC_STATIC(QDIR_TEMPPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QDir::tempPath());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString toNativeSeparators(const QString &pathName)
*/
HB_FUNC_STATIC(QDIR_TONATIVESEPARATORS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RQSTRING(QDir::toNativeSeparators(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QDIR_NEWFROM)
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

HB_FUNC_STATIC(QDIR_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QDIR_NEWFROM);
}

HB_FUNC_STATIC(QDIR_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QDIR_NEWFROM);
}

HB_FUNC_STATIC(QDIR_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QDIR_SETSELFDESTRUCTION)
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
