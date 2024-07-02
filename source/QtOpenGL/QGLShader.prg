/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QGLShader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD compileSourceCode1
   METHOD compileSourceCode2
   METHOD compileSourceCode3
   METHOD compileSourceCode
   METHOD compileSourceFile
   METHOD isCompiled
   METHOD log
   METHOD shaderId
   METHOD shaderType
   METHOD sourceCode
   METHOD hasOpenGLShaders

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLShader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtOpenGL/QGLShader>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QGLSHADER_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QGLShader( QGLShader::ShaderType type, QObject * parent = 0 )
    */
    QGLShader *obj = new QGLShader((QGLShader::ShaderType)hb_parni(1), OPQOBJECT(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQGLCONTEXT(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    /*
    QGLShader( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )
    */
    QGLShader *obj = new QGLShader((QGLShader::ShaderType)hb_parni(1), PQGLCONTEXT(2), OPQOBJECT(3, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGLSHADER_DELETE)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
bool compileSourceCode( const char * source )
*/
HB_FUNC_STATIC(QGLSHADER_COMPILESOURCECODE1)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->compileSourceCode(PCONSTCHAR(1)));
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
bool compileSourceCode( const QByteArray & source )
*/
HB_FUNC_STATIC(QGLSHADER_COMPILESOURCECODE2)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      RBOOL(obj->compileSourceCode(*PQBYTEARRAY(1)));
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
bool compileSourceCode( const QString & source )
*/
HB_FUNC_STATIC(QGLSHADER_COMPILESOURCECODE3)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->compileSourceCode(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QGLSHADER_COMPILESOURCECODE)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QGLSHADER_COMPILESOURCECODE1);
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    HB_FUNC_EXEC(QGLSHADER_COMPILESOURCECODE2);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    HB_FUNC_EXEC(QGLSHADER_COMPILESOURCECODE3);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool compileSourceFile( const QString & fileName )
*/
HB_FUNC_STATIC(QGLSHADER_COMPILESOURCEFILE)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->compileSourceFile(PQSTRING(1)));
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
bool isCompiled() const
*/
HB_FUNC_STATIC(QGLSHADER_ISCOMPILED)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isCompiled());
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
QString log() const
*/
HB_FUNC_STATIC(QGLSHADER_LOG)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->log());
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
GLuint shaderId() const
*/
HB_FUNC_STATIC(QGLSHADER_SHADERID)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLUINT(obj->shaderId());
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
QGLShader::ShaderType shaderType() const
*/
HB_FUNC_STATIC(QGLSHADER_SHADERTYPE)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->shaderType());
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
QByteArray sourceCode() const
*/
HB_FUNC_STATIC(QGLSHADER_SOURCECODE)
{
  QGLShader *obj = qobject_cast<QGLShader *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->sourceCode());
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
static bool hasOpenGLShaders( QGLShader::ShaderType type, const QGLContext * context = 0 )
*/
HB_FUNC_STATIC(QGLSHADER_HASOPENGLSHADERS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQGLCONTEXT(2) || HB_ISNIL(2)))
  {
#endif
    RBOOL(QGLShader::hasOpenGLShaders((QGLShader::ShaderType)hb_parni(1),
                                      HB_ISNIL(2) ? 0 : static_cast<QGLContext *>(Qt4xHb::itemGetPtr(2))));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
