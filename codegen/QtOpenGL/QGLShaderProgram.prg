%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLShaderProgram ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QGLShaderProgram ( const QGLContext * context, QObject * parent = 0 )
$internalConstructor=|new2|const QGLContext *,QObject *=0

//[1]QGLShaderProgram ( QObject * parent = 0 )
//[2]QGLShaderProgram ( const QGLContext * context, QObject * parent = 0 )

HB_FUNC_STATIC( QGLSHADERPROGRAM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGLShaderProgram_new1();
  }
  else if( ISBETWEEN(1,2) && ISQGLCONTEXT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QGLShaderProgram_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool addShader ( QGLShader * shader )
$method=|bool|addShader|QGLShader *

$prototype=bool addShaderFromSourceCode ( QGLShader::ShaderType type, const char * source )
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode1|QGLShader::ShaderType,const char *

$prototype=bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QByteArray & source )
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode2|QGLShader::ShaderType,const QByteArray &

$prototype=bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QString & source )
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode3|QGLShader::ShaderType,const QString &

//[1]bool addShaderFromSourceCode ( QGLShader::ShaderType type, const char * source )
//[2]bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QByteArray & source )
//[3]bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QString & source )

HB_FUNC_STATIC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addShaderFromSourceCode

$prototype=bool addShaderFromSourceFile ( QGLShader::ShaderType type, const QString & fileName )
$method=|bool|addShaderFromSourceFile|QGLShader::ShaderType,const QString &

$prototype=int attributeLocation ( const char * name ) const
$method=|int|attributeLocation,attributeLocation1|const char *

$prototype=int attributeLocation ( const QByteArray & name ) const
$method=|int|attributeLocation,attributeLocation2|const QByteArray &

$prototype=int attributeLocation ( const QString & name ) const
$method=|int|attributeLocation,attributeLocation3|const QString &

//[1]int attributeLocation ( const char * name ) const
//[2]int attributeLocation ( const QByteArray & name ) const
//[3]int attributeLocation ( const QString & name ) const

HB_FUNC_STATIC( QGLSHADERPROGRAM_ATTRIBUTELOCATION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ATTRIBUTELOCATION1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ATTRIBUTELOCATION2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ATTRIBUTELOCATION3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=attributeLocation

$prototype=bool bind ()
$method=|bool|bind|

$prototype=void bindAttributeLocation ( const char * name, int location )
$method=|void|bindAttributeLocation,bindAttributeLocation1|const char *,int

$prototype=void bindAttributeLocation ( const QByteArray & name, int location )
$method=|void|bindAttributeLocation,bindAttributeLocation2|const QByteArray &,int

$prototype=void bindAttributeLocation ( const QString & name, int location )
$method=|void|bindAttributeLocation,bindAttributeLocation3|const QString &,int

//[1]void bindAttributeLocation ( const char * name, int location )
//[2]void bindAttributeLocation ( const QByteArray & name, int location )
//[3]void bindAttributeLocation ( const QString & name, int location )

HB_FUNC_STATIC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=bindAttributeLocation

$prototype=void disableAttributeArray ( int location )
$internalMethod=|void|disableAttributeArray,disableAttributeArray1|int

$prototype=void disableAttributeArray ( const char * name )
$internalMethod=|void|disableAttributeArray,disableAttributeArray2|const char *

//[1]void disableAttributeArray ( int location )
//[2]void disableAttributeArray ( const char * name )

HB_FUNC_STATIC( QGLSHADERPROGRAM_DISABLEATTRIBUTEARRAY )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLShaderProgram_disableAttributeArray1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLShaderProgram_disableAttributeArray2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=disableAttributeArray

$prototype=void enableAttributeArray ( int location )
$internalMethod=|void|enableAttributeArray,enableAttributeArray1|int

$prototype=void enableAttributeArray ( const char * name )
$internalMethod=|void|enableAttributeArray,enableAttributeArray2|const char *

//[1]void enableAttributeArray ( int location )
//[2]void enableAttributeArray ( const char * name )

HB_FUNC_STATIC( QGLSHADERPROGRAM_ENABLEATTRIBUTEARRAY )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLShaderProgram_enableAttributeArray1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLShaderProgram_enableAttributeArray2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=enableAttributeArray

$prototype=GLenum geometryInputType () const
$method=|GLenum|geometryInputType|

$prototype=GLenum geometryOutputType () const
$method=|GLenum|geometryOutputType|

$prototype=int geometryOutputVertexCount () const
$method=|int|geometryOutputVertexCount|

$prototype=bool isLinked () const
$method=|bool|isLinked|

$prototype=virtual bool link ()
$virtualMethod=|bool|link|

$prototype=QString log () const
$method=|QString|log|

$prototype=int maxGeometryOutputVertices () const
$method=|int|maxGeometryOutputVertices|

$prototype=GLuint programId () const
$method=|GLuint|programId|

$prototype=void release ()
$method=|void|release|

$prototype=void removeAllShaders ()
$method=|void|removeAllShaders|

$prototype=void removeShader ( QGLShader * shader )
$method=|void|removeShader|QGLShader *

//[01]void setAttributeArray ( int location, const GLfloat * values, int tupleSize, int stride = 0 )
//[02]void setAttributeArray ( int location, const QVector2D * values, int stride = 0 )
//[03]void setAttributeArray ( int location, const QVector3D * values, int stride = 0 )
//[04]void setAttributeArray ( int location, const QVector4D * values, int stride = 0 )
//[05]void setAttributeArray ( int location, GLenum type, const void * values, int tupleSize, int stride = 0 )
//[06]void setAttributeArray ( const char * name, const GLfloat * values, int tupleSize, int stride = 0 )
//[07]void setAttributeArray ( const char * name, const QVector2D * values, int stride = 0 )
//[08]void setAttributeArray ( const char * name, const QVector3D * values, int stride = 0 )
//[09]void setAttributeArray ( const char * name, const QVector4D * values, int stride = 0 )
//[10]void setAttributeArray ( const char * name, GLenum type, const void * values, int tupleSize, int stride = 0 )

%% TODO: implementar
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEARRAY )
{
}
$addMethod=setAttributeArray

$prototype=void setAttributeBuffer ( int location, GLenum type, int offset, int tupleSize, int stride = 0 )
$internalMethod=|void|setAttributeBuffer,setAttributeBuffer1|int,GLenum,int,int,int=0

$prototype=void setAttributeBuffer ( const char * name, GLenum type, int offset, int tupleSize, int stride = 0 )
$internalMethod=|void|setAttributeBuffer,setAttributeBuffer2|const char *,GLenum,int,int,int=0

//[1]void setAttributeBuffer ( int location, GLenum type, int offset, int tupleSize, int stride = 0 )
//[2]void setAttributeBuffer ( const char * name, GLenum type, int offset, int tupleSize, int stride = 0 )

HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEBUFFER )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QGLShaderProgram_setAttributeBuffer1();
  }
  else if( ISBETWEEN(4,5) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QGLShaderProgram_setAttributeBuffer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAttributeBuffer

$prototype=void setAttributeValue ( int location, GLfloat value )
$method=|void|setAttributeValue,setAttributeValue1|int,GLfloat

$prototype=void setAttributeValue ( int location, GLfloat x, GLfloat y )
$method=|void|setAttributeValue,setAttributeValue2|int,GLfloat,GLfloat

$prototype=void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z )
$method=|void|setAttributeValue,setAttributeValue3|int,GLfloat,GLfloat,GLfloat

$prototype=void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
$method=|void|setAttributeValue,setAttributeValue4|int,GLfloat,GLfloat,GLfloat,GLfloat

$prototype=void setAttributeValue ( int location, const QColor & value )
$method=|void|setAttributeValue,setAttributeValue8|int,const QColor &

$prototype=void setAttributeValue ( const char * name, GLfloat value )
$method=|void|setAttributeValue,setAttributeValue10|const char *,GLfloat

$prototype=void setAttributeValue ( const char * name, GLfloat x, GLfloat y )
$method=|void|setAttributeValue,setAttributeValue11|const char *,GLfloat,GLfloat

$prototype=void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
$method=|void|setAttributeValue,setAttributeValue12|const char *,GLfloat,GLfloat,GLfloat

$prototype=void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
$method=|void|setAttributeValue,setAttributeValue13|const char *,GLfloat,GLfloat,GLfloat,GLfloat

$prototype=void setAttributeValue ( const char * name, const QColor & value )
$method=|void|setAttributeValue,setAttributeValue17|const char *,const QColor &

//[01]void setAttributeValue ( int location, GLfloat value )
//[02]void setAttributeValue ( int location, GLfloat x, GLfloat y )
//[03]void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z )
//[04]void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
//[05]void setAttributeValue ( int location, const QVector2D & value )
//[06]void setAttributeValue ( int location, const QVector3D & value )
//[07]void setAttributeValue ( int location, const QVector4D & value )
//[08]void setAttributeValue ( int location, const QColor & value )
//[09]void setAttributeValue ( int location, const GLfloat * values, int columns, int rows )
//[10]void setAttributeValue ( const char * name, GLfloat value )
//[11]void setAttributeValue ( const char * name, GLfloat x, GLfloat y )
//[12]void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
//[13]void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
//[14]void setAttributeValue ( const char * name, const QVector2D & value )
//[15]void setAttributeValue ( const char * name, const QVector3D & value )
//[16]void setAttributeValue ( const char * name, const QVector4D & value )
//[17]void setAttributeValue ( const char * name, const QColor & value )
//[18]void setAttributeValue ( const char * name, const GLfloat * values, int columns, int rows )

%% TODO: implementar casos 5/6/7/9/14/15/16/18

HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE3 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE8 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE10 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE11 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE12 );
  }
  else if( ISNUMPAR(5) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE13 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE17 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAttributeValue

$prototype=void setGeometryInputType ( GLenum inputType )
$method=|void|setGeometryInputType|GLenum

$prototype=void setGeometryOutputType ( GLenum outputType )
$method=|void|setGeometryOutputType|GLenum

$prototype=void setGeometryOutputVertexCount ( int count )
$method=|void|setGeometryOutputVertexCount|int

$prototype=void setUniformValue ( int location, GLfloat value )
$method=|void|setUniformValue,setUniformValue1|int,GLfloat

$prototype=void setUniformValue ( const char * name, const QPointF & point )
$method=|void|setUniformValue,setUniformValue2|const char *,const QPointF &

$prototype=void setUniformValue ( const char * name, const QSize & size )
$method=|void|setUniformValue,setUniformValue3|const char *,const QSize &

$prototype=void setUniformValue ( const char * name, const QSizeF & size )
$method=|void|setUniformValue,setUniformValue4|const char *,const QSizeF &

$prototype=void setUniformValue ( const char * name, const QTransform & value )
$method=|void|setUniformValue,setUniformValue20|const char *,const QTransform &

$prototype=void setUniformValue ( int location, GLint value )
$method=|void|setUniformValue,setUniformValue21|int,GLint

$prototype=void setUniformValue ( int location, GLuint value )
$method=|void|setUniformValue,setUniformValue22|int,GLuint

$prototype=void setUniformValue ( int location, GLfloat x, GLfloat y )
$method=|void|setUniformValue,setUniformValue23|int,GLfloat,GLfloat

$prototype=void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z )
$method=|void|setUniformValue,setUniformValue24|int,GLfloat,GLfloat,GLfloat

$prototype=void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
$method=|void|setUniformValue,setUniformValue25|int,GLfloat,GLfloat,GLfloat,GLfloat

$prototype=void setUniformValue ( int location, const QColor & color )
$method=|void|setUniformValue,setUniformValue29|int,const QColor &

$prototype=void setUniformValue ( int location, const QPoint & point )
$method=|void|setUniformValue,setUniformValue30|int,const QPoint &

$prototype=void setUniformValue ( int location, const QPointF & point )
$method=|void|setUniformValue,setUniformValue31|int,const QPointF &

$prototype=void setUniformValue ( int location, const QSize & size )
$method=|void|setUniformValue,setUniformValue32|int,const QSize &

$prototype=void setUniformValue ( int location, const QSizeF & size )
$method=|void|setUniformValue,setUniformValue33|int,const QSizeF &

$prototype=void setUniformValue ( int location, const QTransform & value )
$method=|void|setUniformValue,setUniformValue43|int,const QTransform &

$prototype=void setUniformValue ( const char * name, GLfloat value )
$method=|void|setUniformValue,setUniformValue44|const char *,GLfloat

$prototype=void setUniformValue ( const char * name, GLint value )
$method=|void|setUniformValue,setUniformValue45|const char *,GLint

$prototype=void setUniformValue ( const char * name, GLuint value )
$method=|void|setUniformValue,setUniformValue46|const char *,GLuint

$prototype=void setUniformValue ( const char * name, GLfloat x, GLfloat y )
$method=|void|setUniformValue,setUniformValue47|const char *,GLfloat,GLfloat

$prototype=void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
$method=|void|setUniformValue,setUniformValue48|const char *,GLfloat,GLfloat,GLfloat

$prototype=void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
$method=|void|setUniformValue,setUniformValue49|const char *,GLfloat,GLfloat,GLfloat,GLfloat

$prototype=void setUniformValue ( const char * name, const QColor & color )
$method=|void|setUniformValue,setUniformValue53|const char *,const QColor &

$prototype=void setUniformValue ( const char * name, const QPoint & point )
$method=|void|setUniformValue,setUniformValue54|const char *,const QPoint &

//[01]void setUniformValue ( int location, GLfloat value )
//[02]void setUniformValue ( const char * name, const QPointF & point )
//[03]void setUniformValue ( const char * name, const QSize & size )
//[04]void setUniformValue ( const char * name, const QSizeF & size )
//[05]void setUniformValue ( const char * name, const QMatrix2x2 & value )
//[06]void setUniformValue ( const char * name, const QMatrix2x3 & value )
//[07]void setUniformValue ( const char * name, const QMatrix2x4 & value )
//[08]void setUniformValue ( const char * name, const QMatrix3x2 & value )
//[09]void setUniformValue ( const char * name, const QMatrix3x3 & value )
//[10]void setUniformValue ( const char * name, const QMatrix3x4 & value )
//[11]void setUniformValue ( const char * name, const QMatrix4x2 & value )
//[12]void setUniformValue ( const char * name, const QMatrix4x3 & value )
//[13]void setUniformValue ( const char * name, const QMatrix4x4 & value )
//[14]void setUniformValue ( int location, const GLfloat[2][2] value )
//[15]void setUniformValue ( int location, const GLfloat[3][3] value )
//[16]void setUniformValue ( int location, const GLfloat[4][4] value )
//[17]void setUniformValue ( const char * name, const GLfloat[2][2] value )
//[18]void setUniformValue ( const char * name, const GLfloat[3][3] value )
//[19]void setUniformValue ( const char * name, const GLfloat[4][4] value )
//[20]void setUniformValue ( const char * name, const QTransform & value )
//[21]void setUniformValue ( int location, GLint value )
//[22]void setUniformValue ( int location, GLuint value )
//[23]void setUniformValue ( int location, GLfloat x, GLfloat y )
//[24]void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z )
//[25]void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
//[26]void setUniformValue ( int location, const QVector2D & value )
//[27]void setUniformValue ( int location, const QVector3D & value )
//[28]void setUniformValue ( int location, const QVector4D & value )
//[29]void setUniformValue ( int location, const QColor & color )
//[30]void setUniformValue ( int location, const QPoint & point )
//[31]void setUniformValue ( int location, const QPointF & point )
//[32]void setUniformValue ( int location, const QSize & size )
//[33]void setUniformValue ( int location, const QSizeF & size )
//[34]void setUniformValue ( int location, const QMatrix2x2 & value )
//[35]void setUniformValue ( int location, const QMatrix2x3 & value )
//[36]void setUniformValue ( int location, const QMatrix2x4 & value )
//[37]void setUniformValue ( int location, const QMatrix3x2 & value )
//[38]void setUniformValue ( int location, const QMatrix3x3 & value )
//[39]void setUniformValue ( int location, const QMatrix3x4 & value )
//[40]void setUniformValue ( int location, const QMatrix4x2 & value )
//[41]void setUniformValue ( int location, const QMatrix4x3 & value )
//[42]void setUniformValue ( int location, const QMatrix4x4 & value )
//[43]void setUniformValue ( int location, const QTransform & value )
//[44]void setUniformValue ( const char * name, GLfloat value )
//[45]void setUniformValue ( const char * name, GLint value )
//[46]void setUniformValue ( const char * name, GLuint value )
//[47]void setUniformValue ( const char * name, GLfloat x, GLfloat y )
//[48]void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
//[49]void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
//[50]void setUniformValue ( const char * name, const QVector2D & value )
//[51]void setUniformValue ( const char * name, const QVector3D & value )
//[52]void setUniformValue ( const char * name, const QVector4D & value )
//[53]void setUniformValue ( const char * name, const QColor & color )
//[54]void setUniformValue ( const char * name, const QPoint & point )

%% TODO: implementar reconhecimento de parâmetros

HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE )
{
  if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETUNIFORMVALUE29 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETUNIFORMVALUE53 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setUniformValue

//[01]void setUniformValueArray ( int location, const GLfloat * values, int count, int tupleSize )
//[02]void setUniformValueArray ( int location, const GLint * values, int count )
//[03]void setUniformValueArray ( int location, const GLuint * values, int count )
//[04]void setUniformValueArray ( int location, const QVector2D * values, int count )
//[05]void setUniformValueArray ( int location, const QVector3D * values, int count )
//[06]void setUniformValueArray ( int location, const QVector4D * values, int count )
//[07]void setUniformValueArray ( int location, const QMatrix2x2 * values, int count )
//[08]void setUniformValueArray ( int location, const QMatrix2x3 * values, int count )
//[09]void setUniformValueArray ( int location, const QMatrix2x4 * values, int count )
//[10]void setUniformValueArray ( int location, const QMatrix3x2 * values, int count )
//[11]void setUniformValueArray ( int location, const QMatrix3x3 * values, int count )
//[12]void setUniformValueArray ( int location, const QMatrix3x4 * values, int count )
//[13]void setUniformValueArray ( int location, const QMatrix4x2 * values, int count )
//[14]void setUniformValueArray ( int location, const QMatrix4x3 * values, int count )
//[15]void setUniformValueArray ( int location, const QMatrix4x4 * values, int count )
//[16]void setUniformValueArray ( const char * name, const GLint * values, int count )
//[17]void setUniformValueArray ( const char * name, const GLuint * values, int count )
//[18]void setUniformValueArray ( const char * name, const GLfloat * values, int count, int tupleSize )
//[19]void setUniformValueArray ( const char * name, const QVector2D * values, int count )
//[20]void setUniformValueArray ( const char * name, const QVector3D * values, int count )
//[21]void setUniformValueArray ( const char * name, const QVector4D * values, int count )
//[22]void setUniformValueArray ( const char * name, const QMatrix2x2 * values, int count )
//[23]void setUniformValueArray ( const char * name, const QMatrix2x3 * values, int count )
//[24]void setUniformValueArray ( const char * name, const QMatrix2x4 * values, int count )
//[25]void setUniformValueArray ( const char * name, const QMatrix3x2 * values, int count )
//[26]void setUniformValueArray ( const char * name, const QMatrix3x3 * values, int count )
//[27]void setUniformValueArray ( const char * name, const QMatrix3x4 * values, int count )
//[28]void setUniformValueArray ( const char * name, const QMatrix4x2 * values, int count )
//[29]void setUniformValueArray ( const char * name, const QMatrix4x3 * values, int count )
//[30]void setUniformValueArray ( const char * name, const QMatrix4x4 * values, int count )

%% TODO: implementar métodos e reconhecimento dos parâmetros

HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUEARRAY )
{
}
$addMethod=setUniformValueArray

$prototype=QList<QGLShader *> shaders () const
$method=|QList<QGLShader *>|shaders|

$prototype=int uniformLocation ( const char * name ) const
$method=|int|uniformLocation,uniformLocation1|const char *

$prototype=int uniformLocation ( const QByteArray & name ) const
$method=|int|uniformLocation,uniformLocation2|const QByteArray &

$prototype=int uniformLocation ( const QString & name ) const
$method=|int|uniformLocation,uniformLocation3|const QString &

//[1]int uniformLocation ( const char * name ) const
//[2]int uniformLocation ( const QByteArray & name ) const
//[3]int uniformLocation ( const QString & name ) const

HB_FUNC_STATIC( QGLSHADERPROGRAM_UNIFORMLOCATION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_UNIFORMLOCATION1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_UNIFORMLOCATION2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_UNIFORMLOCATION3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=uniformLocation

$prototype=static bool hasOpenGLShaderPrograms ( const QGLContext * context = 0 )
$staticMethod=|bool|hasOpenGLShaderPrograms|const QGLContext *=0

#pragma ENDDUMP
