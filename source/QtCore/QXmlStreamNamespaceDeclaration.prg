//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamNamespaceDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD namespaceUri
   METHOD prefix

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlStreamNamespaceDeclaration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QXmlStreamNamespaceDeclaration>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QXmlStreamNamespaceDeclaration()
    */
    QXmlStreamNamespaceDeclaration *obj = new QXmlStreamNamespaceDeclaration();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQXMLSTREAMNAMESPACEDECLARATION(1))
  {
    /*
    QXmlStreamNamespaceDeclaration( const QXmlStreamNamespaceDeclaration &other )
    */
    QXmlStreamNamespaceDeclaration *obj = new QXmlStreamNamespaceDeclaration(*PQXMLSTREAMNAMESPACEDECLARATION(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    QXmlStreamNamespaceDeclaration( const QString &prefix, const QString &namespaceUri )
    */
    QXmlStreamNamespaceDeclaration *obj = new QXmlStreamNamespaceDeclaration(PQSTRING(1), PQSTRING(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_DELETE)
{
  QXmlStreamNamespaceDeclaration *obj =
      static_cast<QXmlStreamNamespaceDeclaration *>(Qt4xHb::itemGetPtrStackSelfItem());

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
QStringRef namespaceUri() const
*/
HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_NAMESPACEURI)
{
  QXmlStreamNamespaceDeclaration *obj =
      static_cast<QXmlStreamNamespaceDeclaration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->namespaceUri());
      Qt4xHb::createReturnClass(ptr, "QSTRINGREF", true);
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
QStringRef prefix() const
*/
HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_PREFIX)
{
  QXmlStreamNamespaceDeclaration *obj =
      static_cast<QXmlStreamNamespaceDeclaration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QStringRef *ptr = new QStringRef(obj->prefix());
      Qt4xHb::createReturnClass(ptr, "QSTRINGREF", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_NEWFROM)
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

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLSTREAMNAMESPACEDECLARATION_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLSTREAMNAMESPACEDECLARATION_NEWFROM);
}

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLSTREAMNAMESPACEDECLARATION_SETSELFDESTRUCTION)
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
