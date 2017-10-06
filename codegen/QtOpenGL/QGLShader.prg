$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QGLShader INHERIT QObject

   METHOD new1
   METHOD new2
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

$destructor

#pragma BEGINDUMP

#include <QGLShader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADER_NEW1 )
{
  QGLShader * o = new QGLShader ( (QGLShader::ShaderType) hb_parni(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADER_NEW2 )
{
  const QGLContext * par2 = (const QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLShader * o = new QGLShader ( (QGLShader::ShaderType) hb_parni(1), par2, OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
//[2]QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )

HB_FUNC_STATIC( QGLSHADER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGLSHADER_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQGLCONTEXT(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QGLSHADER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool compileSourceCode ( const char * source )
*/
$method=|bool|compileSourceCode,compileSourceCode1|const char *

/*
bool compileSourceCode ( const QByteArray & source )
*/
$method=|bool|compileSourceCode,compileSourceCode2|const QByteArray &

/*
bool compileSourceCode ( const QString & source )
*/
$method=|bool|compileSourceCode,compileSourceCode3|const QString &

//[1]bool compileSourceCode ( const char * source )
//[2]bool compileSourceCode ( const QByteArray & source )
//[3]bool compileSourceCode ( const QString & source )

HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE3 );
  }
}

/*
bool compileSourceFile ( const QString & fileName )
*/
$method=|bool|compileSourceFile|const QString &

/*
bool isCompiled () const
*/
$method=|bool|isCompiled|

/*
QString log () const
*/
$method=|QString|log|

/*
GLuint shaderId () const
*/
$method=|GLuint|shaderId|

/*
QGLShader::ShaderType shaderType () const
*/
$method=|QGLShader::ShaderType|shaderType|

/*
QByteArray sourceCode () const
*/
$method=|QByteArray|sourceCode|

/*
static bool hasOpenGLShaders ( ShaderType type, const QGLContext * context = 0 )
*/
$staticMethod=|bool|hasOpenGLShaders|QGLShader::ShaderType,const QGLContext *=0

#pragma ENDDUMP
