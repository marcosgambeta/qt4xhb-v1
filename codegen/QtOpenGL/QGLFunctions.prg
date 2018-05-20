%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFunctions ()
$internalConstructor=|new1|

$prototype=QGLFunctions ( const QGLContext * context )
$internalConstructor=|new2|const QGLContext *

//[1]QGLFunctions ()
//[2]QGLFunctions ( const QGLContext * context )

HB_FUNC_STATIC( QGLFUNCTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFunctions_new1();
  }
  else if( ISNUMPAR(1) && ISQGLCONTEXT(1) )
  {
    QGLFunctions_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void glActiveTexture ( GLenum texture )
$method=|void|glActiveTexture|GLenum

$prototype=void glAttachShader ( GLuint program, GLuint shader )
$method=|void|glAttachShader|GLuint,GLuint

$prototype=void glBindAttribLocation ( GLuint program, GLuint index, const char * name )
$method=|void|glBindAttribLocation|GLuint,GLuint,const char *

$prototype=void glBindBuffer ( GLenum target, GLuint buffer )
$method=|void|glBindBuffer|GLenum,GLuint

$prototype=void glBindFramebuffer ( GLenum target, GLuint framebuffer )
$method=|void|glBindFramebuffer|GLenum,GLuint

$prototype=void glBindRenderbuffer ( GLenum target, GLuint renderbuffer )
$method=|void|glBindRenderbuffer|GLenum,GLuint

$prototype=void glBlendColor ( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha )
$method=|void|glBlendColor|GLclampf,GLclampf,GLclampf,GLclampf

$prototype=void glBlendEquation ( GLenum mode )
$method=|void|glBlendEquation|GLenum

$prototype=void glBlendEquationSeparate ( GLenum modeRGB, GLenum modeAlpha )
$method=|void|glBlendEquationSeparate|GLenum,GLenum

$prototype=void glBlendFuncSeparate ( GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha )
$method=|void|glBlendFuncSeparate|GLenum,GLenum,GLenum,GLenum

$prototype=GLenum glCheckFramebufferStatus ( GLenum target )
$method=|GLenum|glCheckFramebufferStatus|GLenum

$prototype=void glClearDepthf ( GLclampf depth )
$method=|void|glClearDepthf|GLclampf

$prototype=void glCompileShader ( GLuint shader )
$method=|void|glCompileShader|GLuint

$prototype=void glCompressedTexImage2D ( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void * data )
$method=|void|glCompressedTexImage2D|GLenum,GLint,GLenum,GLsizei,GLsizei,GLint,GLsizei,const void *

$prototype=void glCompressedTexSubImage2D ( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void * data )
$method=|void|glCompressedTexSubImage2D|GLenum,GLint,GLint,GLint,GLsizei,GLsizei,GLenum,GLsizei,const void *

$prototype=GLuint glCreateProgram ()
$method=|GLuint|glCreateProgram|

$prototype=GLuint glCreateShader ( GLenum type )
$method=|GLuint|glCreateShader|GLenum

$prototype=void glDeleteProgram ( GLuint program )
$method=|void|glDeleteProgram|GLuint

$prototype=void glDeleteShader ( GLuint shader )
$method=|void|glDeleteShader|GLuint

$prototype=void glDepthRangef ( GLclampf zNear, GLclampf zFar )
$method=|void|glDepthRangef|GLclampf,GLclampf

$prototype=void glDetachShader ( GLuint program, GLuint shader )
$method=|void|glDetachShader|GLuint,GLuint

$prototype=void glDisableVertexAttribArray ( GLuint index )
$method=|void|glDisableVertexAttribArray|GLuint

$prototype=void glEnableVertexAttribArray ( GLuint index )
$method=|void|glEnableVertexAttribArray|GLuint

$prototype=void glFramebufferRenderbuffer ( GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer )
$method=|void|glFramebufferRenderbuffer|GLenum,GLenum,GLenum,GLuint

$prototype=void glFramebufferTexture2D ( GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level )
$method=|void|glFramebufferTexture2D|GLenum,GLenum,GLenum,GLuint,GLint

$prototype=void glGenerateMipmap ( GLenum target )
$method=|void|glGenerateMipmap|GLenum

$prototype=int glGetAttribLocation ( GLuint program, const char * name )
$method=|int|glGetAttribLocation|GLuint,const char *

$prototype=int glGetUniformLocation ( GLuint program, const char * name )
$method=|int|glGetUniformLocation|GLuint,const char *

$prototype=GLboolean glIsBuffer ( GLuint buffer )
$method=|GLboolean|glIsBuffer|GLuint

$prototype=GLboolean glIsFramebuffer ( GLuint framebuffer )
$method=|GLboolean|glIsFramebuffer|GLuint

$prototype=GLboolean glIsProgram ( GLuint program )
$method=|GLboolean|glIsProgram|GLuint

$prototype=GLboolean glIsRenderbuffer ( GLuint renderbuffer )
$method=|GLboolean|glIsRenderbuffer|GLuint

$prototype=GLboolean glIsShader ( GLuint shader )
$method=|GLboolean|glIsShader|GLuint

$prototype=void glLinkProgram ( GLuint program )
$method=|void|glLinkProgram|GLuint

$prototype=void glReleaseShaderCompiler ()
$method=|void|glReleaseShaderCompiler|

$prototype=void glRenderbufferStorage ( GLenum target, GLenum internalformat, GLsizei width, GLsizei height )
$method=|void|glRenderbufferStorage|GLenum,GLenum,GLsizei,GLsizei

$prototype=void glSampleCoverage ( GLclampf value, GLboolean invert )
$method=|void|glSampleCoverage|GLclampf,GLboolean

$prototype=void glStencilFuncSeparate ( GLenum face, GLenum func, GLint ref, GLuint mask )
$method=|void|glStencilFuncSeparate|GLenum,GLenum,GLint,GLuint

$prototype=void glStencilMaskSeparate ( GLenum face, GLuint mask )
$method=|void|glStencilMaskSeparate|GLenum,GLuint

$prototype=void glStencilOpSeparate ( GLenum face, GLenum fail, GLenum zfail, GLenum zpass )
$method=|void|glStencilOpSeparate|GLenum,GLenum,GLenum,GLenum

$prototype=void glUniform1f ( GLint location, GLfloat x )
$method=|void|glUniform1f|GLint,GLfloat

$prototype=void glUniform1i ( GLint location, GLint x )
$method=|void|glUniform1i|GLint,GLint

$prototype=void glUniform2f ( GLint location, GLfloat x, GLfloat y )
$method=|void|glUniform2f|GLint,GLfloat,GLfloat

$prototype=void glUniform2i ( GLint location, GLint x, GLint y )
$method=|void|glUniform2i|GLint,GLint,GLint

$prototype=void glUniform3f ( GLint location, GLfloat x, GLfloat y, GLfloat z )
$method=|void|glUniform3f|GLint,GLfloat,GLfloat,GLfloat

$prototype=void glUniform3i ( GLint location, GLint x, GLint y, GLint z )
$method=|void|glUniform3i|GLint,GLint,GLint,GLint

$prototype=void glUniform4f ( GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
$method=|void|glUniform4f|GLint,GLfloat,GLfloat,GLfloat,GLfloat

$prototype=void glUniform4i ( GLint location, GLint x, GLint y, GLint z, GLint w )
$method=|void|glUniform4i|GLint,GLint,GLint,GLint,GLint

$prototype=void glUseProgram ( GLuint program )
$method=|void|glUseProgram|GLuint

$prototype=void glValidateProgram ( GLuint program )
$method=|void|glValidateProgram|GLuint

$prototype=void glVertexAttrib1f ( GLuint indx, GLfloat x )
$method=|void|glVertexAttrib1f|GLuint,GLfloat

$prototype=void glVertexAttrib2f ( GLuint indx, GLfloat x, GLfloat y )
$method=|void|glVertexAttrib2f|GLuint,GLfloat,GLfloat

$prototype=void glVertexAttrib3f ( GLuint indx, GLfloat x, GLfloat y, GLfloat z )
$method=|void|glVertexAttrib3f|GLuint,GLfloat,GLfloat,GLfloat

$prototype=void glVertexAttrib4f ( GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
$method=|void|glVertexAttrib4f|GLuint,GLfloat,GLfloat,GLfloat,GLfloat

$prototype=void glVertexAttribPointer ( GLuint indx, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void * ptr )
$method=|void|glVertexAttribPointer|GLuint,GLint,GLenum,GLboolean,GLsizei,const void *

$prototype=bool hasOpenGLFeature ( QGLFunctions::OpenGLFeature feature ) const
$method=|bool|hasOpenGLFeature|QGLFunctions::OpenGLFeature

$prototype=void initializeGLFunctions ( const QGLContext * context = 0 )
$method=|void|initializeGLFunctions|const QGLContext *=0

$prototype=QGLFunctions::OpenGLFeatures openGLFeatures () const
$method=|QGLFunctions::OpenGLFeatures|openGLFeatures|

$extraMethods

#pragma ENDDUMP
