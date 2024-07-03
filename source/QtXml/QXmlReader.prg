//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLDTDHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER
#endif

CLASS QXmlReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtXml/QXmlReader>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QXMLREADER_DELETE)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

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
virtual QXmlDTDHandler * DTDHandler() const = 0
*/
HB_FUNC_STATIC(QXMLREADER_DTDHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlDTDHandler *ptr = obj->DTDHandler();
      Qt4xHb::createReturnClass(ptr, "QXMLDTDHANDLER", false);
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
virtual QXmlContentHandler * contentHandler() const = 0
*/
HB_FUNC_STATIC(QXMLREADER_CONTENTHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlContentHandler *ptr = obj->contentHandler();
      Qt4xHb::createReturnClass(ptr, "QXMLCONTENTHANDLER", false);
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
virtual QXmlDeclHandler * declHandler() const = 0
*/
HB_FUNC_STATIC(QXMLREADER_DECLHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlDeclHandler *ptr = obj->declHandler();
      Qt4xHb::createReturnClass(ptr, "QXMLDECLHANDLER", false);
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
virtual QXmlEntityResolver * entityResolver() const = 0
*/
HB_FUNC_STATIC(QXMLREADER_ENTITYRESOLVER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlEntityResolver *ptr = obj->entityResolver();
      Qt4xHb::createReturnClass(ptr, "QXMLENTITYRESOLVER", false);
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
virtual QXmlErrorHandler * errorHandler() const = 0
*/
HB_FUNC_STATIC(QXMLREADER_ERRORHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlErrorHandler *ptr = obj->errorHandler();
      Qt4xHb::createReturnClass(ptr, "QXMLERRORHANDLER", false);
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
virtual bool feature( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC(QXMLREADER_FEATURE)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      bool par2;
      RBOOL(obj->feature(PQSTRING(1), &par2));
      hb_storl(par2, 2);
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
virtual bool hasFeature( const QString & name ) const = 0
*/
HB_FUNC_STATIC(QXMLREADER_HASFEATURE)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->hasFeature(PQSTRING(1)));
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
virtual bool hasProperty( const QString & name ) const = 0
*/
HB_FUNC_STATIC(QXMLREADER_HASPROPERTY)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->hasProperty(PQSTRING(1)));
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
virtual QXmlLexicalHandler * lexicalHandler() const = 0
*/
HB_FUNC_STATIC(QXMLREADER_LEXICALHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlLexicalHandler *ptr = obj->lexicalHandler();
      Qt4xHb::createReturnClass(ptr, "QXMLLEXICALHANDLER", false);
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
virtual bool parse( const QXmlInputSource * input ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_PARSE)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLINPUTSOURCE(1))
    {
#endif
      RBOOL(obj->parse(PQXMLINPUTSOURCE(1)));
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
virtual void * property( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC(QXMLREADER_PROPERTY)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      bool par2;
      hb_retptr(static_cast<void *>(obj->property(PQSTRING(1), &par2)));
      hb_storl(par2, 2);
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
virtual void setContentHandler( QXmlContentHandler * handler ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETCONTENTHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLCONTENTHANDLER(1))
    {
#endif
      obj->setContentHandler(PQXMLCONTENTHANDLER(1));
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
virtual void setDTDHandler( QXmlDTDHandler * handler ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETDTDHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLDTDHANDLER(1))
    {
#endif
      obj->setDTDHandler(PQXMLDTDHANDLER(1));
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
virtual void setDeclHandler( QXmlDeclHandler * handler ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETDECLHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLDECLHANDLER(1))
    {
#endif
      obj->setDeclHandler(PQXMLDECLHANDLER(1));
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
virtual void setEntityResolver( QXmlEntityResolver * handler ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETENTITYRESOLVER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLENTITYRESOLVER(1))
    {
#endif
      obj->setEntityResolver(PQXMLENTITYRESOLVER(1));
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
virtual void setErrorHandler( QXmlErrorHandler * handler ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETERRORHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLERRORHANDLER(1))
    {
#endif
      obj->setErrorHandler(PQXMLERRORHANDLER(1));
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
virtual void setFeature( const QString & name, bool value ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETFEATURE)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2))
    {
#endif
      obj->setFeature(PQSTRING(1), PBOOL(2));
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
virtual void setLexicalHandler( QXmlLexicalHandler * handler ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETLEXICALHANDLER)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLLEXICALHANDLER(1))
    {
#endif
      obj->setLexicalHandler(PQXMLLEXICALHANDLER(1));
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
virtual void setProperty( const QString & name, void * value ) = 0
*/
HB_FUNC_STATIC(QXMLREADER_SETPROPERTY)
{
  QXmlReader *obj = static_cast<QXmlReader *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISPOINTER(2))
    {
#endif
      obj->setProperty(PQSTRING(1), static_cast<void *>(hb_parptr(2)));
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

HB_FUNC_STATIC(QXMLREADER_NEWFROM)
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

HB_FUNC_STATIC(QXMLREADER_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLREADER_NEWFROM);
}

HB_FUNC_STATIC(QXMLREADER_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLREADER_NEWFROM);
}

HB_FUNC_STATIC(QXMLREADER_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLREADER_SETSELFDESTRUCTION)
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
