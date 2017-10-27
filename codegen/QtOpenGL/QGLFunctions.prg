$header

#include "hbclass.ch"

CLASS QGLFunctions

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD glActiveTexture
   METHOD glAttachShader
   METHOD glBindAttribLocation
   METHOD glBindBuffer
   METHOD glBindFramebuffer
   METHOD glBindRenderbuffer
   METHOD glBlendColor
   METHOD glBlendEquation
   METHOD glBlendEquationSeparate
   METHOD glBlendFuncSeparate
   METHOD glCheckFramebufferStatus
   METHOD glClearDepthf
   METHOD glCompileShader
   METHOD glCompressedTexImage2D
   METHOD glCompressedTexSubImage2D
   METHOD glCreateProgram
   METHOD glCreateShader
   METHOD glDeleteProgram
   METHOD glDeleteShader
   METHOD glDepthRangef
   METHOD glDetachShader
   METHOD glDisableVertexAttribArray
   METHOD glEnableVertexAttribArray
   METHOD glFramebufferRenderbuffer
   METHOD glFramebufferTexture2D
   METHOD glGenerateMipmap
   METHOD glGetAttribLocation
   METHOD glGetUniformLocation
   METHOD glIsBuffer
   METHOD glIsFramebuffer
   METHOD glIsProgram
   METHOD glIsRenderbuffer
   METHOD glIsShader
   METHOD glLinkProgram
   METHOD glReleaseShaderCompiler
   METHOD glRenderbufferStorage
   METHOD glSampleCoverage
   METHOD glStencilFuncSeparate
   METHOD glStencilMaskSeparate
   METHOD glStencilOpSeparate
   METHOD glUniform1f
   METHOD glUniform1i
   METHOD glUniform2f
   METHOD glUniform2i
   METHOD glUniform3f
   METHOD glUniform3i
   METHOD glUniform4f
   METHOD glUniform4i
   METHOD glUseProgram
   METHOD glValidateProgram
   METHOD glVertexAttrib1f
   METHOD glVertexAttrib2f
   METHOD glVertexAttrib3f
   METHOD glVertexAttrib4f
   METHOD glVertexAttribPointer
   METHOD hasOpenGLFeature
   METHOD initializeGLFunctions
   METHOD openGLFeatures

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLFunctions>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLFunctions ()
*/
HB_FUNC_STATIC( QGLFUNCTIONS_NEW1 )
{
  QGLFunctions * o = new QGLFunctions ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLFunctions ( const QGLContext * context )
*/
HB_FUNC_STATIC( QGLFUNCTIONS_NEW2 )
{
  const QGLContext * par1 = (const QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLFunctions * o = new QGLFunctions ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLFunctions ()
//[2]QGLFunctions ( const QGLContext * context )

HB_FUNC_STATIC( QGLFUNCTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLFUNCTIONS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLCONTEXT(1) )
  {
    HB_FUNC_EXEC( QGLFUNCTIONS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void glActiveTexture ( GLenum texture )
*/
$method=|void|glActiveTexture|GLenum

/*
void glAttachShader ( GLuint program, GLuint shader )
*/
$method=|void|glAttachShader|GLuint,GLuint

/*
void glBindAttribLocation ( GLuint program, GLuint index, const char * name )
*/
$method=|void|glBindAttribLocation|GLuint,GLuint,const char *

/*
void glBindBuffer ( GLenum target, GLuint buffer )
*/
$method=|void|glBindBuffer|GLenum,GLuint

/*
void glBindFramebuffer ( GLenum target, GLuint framebuffer )
*/
$method=|void|glBindFramebuffer|GLenum,GLuint

/*
void glBindRenderbuffer ( GLenum target, GLuint renderbuffer )
*/
$method=|void|glBindRenderbuffer|GLenum,GLuint

/*
void glBlendColor ( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha )
*/
$method=|void|glBlendColor|GLclampf,GLclampf,GLclampf,GLclampf

/*
void glBlendEquation ( GLenum mode )
*/
$method=|void|glBlendEquation|GLenum

/*
void glBlendEquationSeparate ( GLenum modeRGB, GLenum modeAlpha )
*/
$method=|void|glBlendEquationSeparate|GLenum,GLenum

/*
void glBlendFuncSeparate ( GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha )
*/
$method=|void|glBlendFuncSeparate|GLenum,GLenum,GLenum,GLenum

/*
GLenum glCheckFramebufferStatus ( GLenum target )
*/
$method=|GLenum|glCheckFramebufferStatus|GLenum

/*
void glClearDepthf ( GLclampf depth )
*/
$method=|void|glClearDepthf|GLclampf

/*
void glCompileShader ( GLuint shader )
*/
$method=|void|glCompileShader|GLuint

/*
void glCompressedTexImage2D ( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void * data )
*/
$method=|void|glCompressedTexImage2D|GLenum,GLint,GLenum,GLsizei,GLsizei,GLint,GLsizei,const void *

/*
void glCompressedTexSubImage2D ( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void * data )
*/
$method=|void|glCompressedTexSubImage2D|GLenum,GLint,GLint,GLint,GLsizei,GLsizei,GLenum,GLsizei,const void *

/*
GLuint glCreateProgram ()
*/
$method=|GLuint|glCreateProgram|

/*
GLuint glCreateShader ( GLenum type )
*/
$method=|GLuint|glCreateShader|GLenum

/*
void glDeleteProgram ( GLuint program )
*/
$method=|void|glDeleteProgram|GLuint

/*
void glDeleteShader ( GLuint shader )
*/
$method=|void|glDeleteShader|GLuint

/*
void glDepthRangef ( GLclampf zNear, GLclampf zFar )
*/
$method=|void|glDepthRangef|GLclampf,GLclampf

/*
void glDetachShader ( GLuint program, GLuint shader )
*/
$method=|void|glDetachShader|GLuint,GLuint

/*
void glDisableVertexAttribArray ( GLuint index )
*/
$method=|void|glDisableVertexAttribArray|GLuint

/*
void glEnableVertexAttribArray ( GLuint index )
*/
$method=|void|glEnableVertexAttribArray|GLuint

/*
void glFramebufferRenderbuffer ( GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer )
*/
$method=|void|glFramebufferRenderbuffer|GLenum,GLenum,GLenum,GLuint

/*
void glFramebufferTexture2D ( GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level )
*/
$method=|void|glFramebufferTexture2D|GLenum,GLenum,GLenum,GLuint,GLint

/*
void glGenerateMipmap ( GLenum target )
*/
$method=|void|glGenerateMipmap|GLenum

/*
int glGetAttribLocation ( GLuint program, const char * name )
*/
$method=|int|glGetAttribLocation|GLuint,const char *

/*
int glGetUniformLocation ( GLuint program, const char * name )
*/
$method=|int|glGetUniformLocation|GLuint,const char *

/*
GLboolean glIsBuffer ( GLuint buffer )
*/
$method=|GLboolean|glIsBuffer|GLuint

/*
GLboolean glIsFramebuffer ( GLuint framebuffer )
*/
$method=|GLboolean|glIsFramebuffer|GLuint

/*
GLboolean glIsProgram ( GLuint program )
*/
$method=|GLboolean|glIsProgram|GLuint

/*
GLboolean glIsRenderbuffer ( GLuint renderbuffer )
*/
$method=|GLboolean|glIsRenderbuffer|GLuint

/*
GLboolean glIsShader ( GLuint shader )
*/
$method=|GLboolean|glIsShader|GLuint

/*
void glLinkProgram ( GLuint program )
*/
$method=|void|glLinkProgram|GLuint

/*
void glReleaseShaderCompiler ()
*/
$method=|void|glReleaseShaderCompiler|

/*
void glRenderbufferStorage ( GLenum target, GLenum internalformat, GLsizei width, GLsizei height )
*/
$method=|void|glRenderbufferStorage|GLenum,GLenum,GLsizei,GLsizei

/*
void glSampleCoverage ( GLclampf value, GLboolean invert )
*/
$method=|void|glSampleCoverage|GLclampf,GLboolean

/*
void glStencilFuncSeparate ( GLenum face, GLenum func, GLint ref, GLuint mask )
*/
$method=|void|glStencilFuncSeparate|GLenum,GLenum,GLint,GLuint

/*
void glStencilMaskSeparate ( GLenum face, GLuint mask )
*/
$method=|void|glStencilMaskSeparate|GLenum,GLuint

/*
void glStencilOpSeparate ( GLenum face, GLenum fail, GLenum zfail, GLenum zpass )
*/
$method=|void|glStencilOpSeparate|GLenum,GLenum,GLenum,GLenum

/*
void glUniform1f ( GLint location, GLfloat x )
*/
$method=|void|glUniform1f|GLint,GLfloat

/*
void glUniform1i ( GLint location, GLint x )
*/
$method=|void|glUniform1i|GLint,GLint

/*
void glUniform2f ( GLint location, GLfloat x, GLfloat y )
*/
$method=|void|glUniform2f|GLint,GLfloat,GLfloat

/*
void glUniform2i ( GLint location, GLint x, GLint y )
*/
$method=|void|glUniform2i|GLint,GLint,GLint

/*
void glUniform3f ( GLint location, GLfloat x, GLfloat y, GLfloat z )
*/
$method=|void|glUniform3f|GLint,GLfloat,GLfloat,GLfloat

/*
void glUniform3i ( GLint location, GLint x, GLint y, GLint z )
*/
$method=|void|glUniform3i|GLint,GLint,GLint,GLint

/*
void glUniform4f ( GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
$method=|void|glUniform4f|GLint,GLfloat,GLfloat,GLfloat,GLfloat

/*
void glUniform4i ( GLint location, GLint x, GLint y, GLint z, GLint w )
*/
$method=|void|glUniform4i|GLint,GLint,GLint,GLint,GLint

/*
void glUseProgram ( GLuint program )
*/
$method=|void|glUseProgram|GLuint

/*
void glValidateProgram ( GLuint program )
*/
$method=|void|glValidateProgram|GLuint

/*
void glVertexAttrib1f ( GLuint indx, GLfloat x )
*/
$method=|void|glVertexAttrib1f|GLuint,GLfloat

/*
void glVertexAttrib2f ( GLuint indx, GLfloat x, GLfloat y )
*/
$method=|void|glVertexAttrib2f|GLuint,GLfloat,GLfloat

/*
void glVertexAttrib3f ( GLuint indx, GLfloat x, GLfloat y, GLfloat z )
*/
$method=|void|glVertexAttrib3f|GLuint,GLfloat,GLfloat,GLfloat

/*
void glVertexAttrib4f ( GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
$method=|void|glVertexAttrib4f|GLuint,GLfloat,GLfloat,GLfloat,GLfloat

/*
void glVertexAttribPointer ( GLuint indx, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void * ptr )
*/
$method=|void|glVertexAttribPointer|GLuint,GLint,GLenum,GLboolean,GLsizei,const void *

/*
bool hasOpenGLFeature ( QGLFunctions::OpenGLFeature feature ) const
*/
$method=|bool|hasOpenGLFeature|QGLFunctions::OpenGLFeature

/*
void initializeGLFunctions ( const QGLContext * context = 0 )
*/
$method=|void|initializeGLFunctions|const QGLContext *=0

/*
QGLFunctions::OpenGLFeatures openGLFeatures () const
*/
$method=|QGLFunctions::OpenGLFeatures|openGLFeatures|

$extraMethods

#pragma ENDDUMP
