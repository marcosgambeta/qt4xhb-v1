%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFunctions ()
$internalConstructor=|new1|

$prototype=QGLFunctions ( const QGLContext * context )
$internalConstructor=|new2|const QGLContext *

/*
[1]QGLFunctions ()
[2]QGLFunctions ( const QGLContext * context )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=void glActiveTexture( GLenum texture )

$prototypeV2=void glAttachShader( GLuint program, GLuint shader )

$prototypeV2=void glBindAttribLocation( GLuint program, GLuint index, const char * name )

$prototypeV2=void glBindBuffer( GLenum target, GLuint buffer )

$prototypeV2=void glBindFramebuffer( GLenum target, GLuint framebuffer )

$prototypeV2=void glBindRenderbuffer( GLenum target, GLuint renderbuffer )

$prototypeV2=void glBlendColor( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha )

$prototypeV2=void glBlendEquation( GLenum mode )

$prototypeV2=void glBlendEquationSeparate( GLenum modeRGB, GLenum modeAlpha )

$prototypeV2=void glBlendFuncSeparate( GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha )

$prototypeV2=GLenum glCheckFramebufferStatus( GLenum target )

$prototypeV2=void glClearDepthf( GLclampf depth )

$prototypeV2=void glCompileShader( GLuint shader )

$prototypeV2=void glCompressedTexImage2D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void * data )

$prototypeV2=void glCompressedTexSubImage2D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void * data )

$prototypeV2=GLuint glCreateProgram()

$prototypeV2=GLuint glCreateShader( GLenum type )

$prototypeV2=void glDeleteProgram( GLuint program )

$prototypeV2=void glDeleteShader( GLuint shader )

$prototypeV2=void glDepthRangef( GLclampf zNear, GLclampf zFar )

$prototypeV2=void glDetachShader( GLuint program, GLuint shader )

$prototypeV2=void glDisableVertexAttribArray( GLuint index )

$prototypeV2=void glEnableVertexAttribArray( GLuint index )

$prototypeV2=void glFramebufferRenderbuffer( GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer )

$prototypeV2=void glFramebufferTexture2D( GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level )

$prototypeV2=void glGenerateMipmap( GLenum target )

$prototypeV2=int glGetAttribLocation( GLuint program, const char * name )

$prototypeV2=int glGetUniformLocation( GLuint program, const char * name )

$prototypeV2=GLboolean glIsBuffer( GLuint buffer )

$prototypeV2=GLboolean glIsFramebuffer( GLuint framebuffer )

$prototypeV2=GLboolean glIsProgram( GLuint program )

$prototypeV2=GLboolean glIsRenderbuffer( GLuint renderbuffer )

$prototypeV2=GLboolean glIsShader( GLuint shader )

$prototypeV2=void glLinkProgram( GLuint program )

$prototypeV2=void glReleaseShaderCompiler()

$prototypeV2=void glRenderbufferStorage( GLenum target, GLenum internalformat, GLsizei width, GLsizei height )

$prototypeV2=void glSampleCoverage( GLclampf value, GLboolean invert )

$prototypeV2=void glStencilFuncSeparate( GLenum face, GLenum func, GLint ref, GLuint mask )

$prototypeV2=void glStencilMaskSeparate( GLenum face, GLuint mask )

$prototypeV2=void glStencilOpSeparate( GLenum face, GLenum fail, GLenum zfail, GLenum zpass )

$prototypeV2=void glUniform1f( GLint location, GLfloat x )

$prototypeV2=void glUniform1i( GLint location, GLint x )

$prototypeV2=void glUniform2f( GLint location, GLfloat x, GLfloat y )

$prototypeV2=void glUniform2i( GLint location, GLint x, GLint y )

$prototypeV2=void glUniform3f( GLint location, GLfloat x, GLfloat y, GLfloat z )

$prototypeV2=void glUniform3i( GLint location, GLint x, GLint y, GLint z )

$prototypeV2=void glUniform4f( GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )

$prototypeV2=void glUniform4i( GLint location, GLint x, GLint y, GLint z, GLint w )

$prototypeV2=void glUseProgram( GLuint program )

$prototypeV2=void glValidateProgram( GLuint program )

$prototypeV2=void glVertexAttrib1f( GLuint indx, GLfloat x )

$prototypeV2=void glVertexAttrib2f( GLuint indx, GLfloat x, GLfloat y )

$prototypeV2=void glVertexAttrib3f( GLuint indx, GLfloat x, GLfloat y, GLfloat z )

$prototypeV2=void glVertexAttrib4f( GLuint indx, GLfloat x, GLfloat y, GLfloat z, GLfloat w )

$prototypeV2=void glVertexAttribPointer( GLuint indx, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void * ptr )

$prototypeV2=bool hasOpenGLFeature( QGLFunctions::OpenGLFeature feature ) const

$prototypeV2=void initializeGLFunctions( const QGLContext * context = 0 )

$prototypeV2=QGLFunctions::OpenGLFeatures openGLFeatures() const

$extraMethods

#pragma ENDDUMP
