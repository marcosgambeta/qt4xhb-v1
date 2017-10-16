$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLSHADER
#endif

CLASS QGLShaderProgram INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addShader
   METHOD addShaderFromSourceCode1
   METHOD addShaderFromSourceCode2
   METHOD addShaderFromSourceCode3
   METHOD addShaderFromSourceCode
   METHOD addShaderFromSourceFile
   METHOD attributeLocation1
   METHOD attributeLocation2
   METHOD attributeLocation3
   METHOD attributeLocation
   METHOD bind
   METHOD bindAttributeLocation1
   METHOD bindAttributeLocation2
   METHOD bindAttributeLocation3
   METHOD bindAttributeLocation
   METHOD disableAttributeArray1
   METHOD disableAttributeArray2
   METHOD disableAttributeArray
   METHOD enableAttributeArray1
   METHOD enableAttributeArray2
   METHOD enableAttributeArray
   METHOD geometryInputType
   METHOD geometryOutputType
   METHOD geometryOutputVertexCount
   METHOD isLinked
   METHOD link
   METHOD log
   METHOD maxGeometryOutputVertices
   METHOD programId
   METHOD release
   METHOD removeAllShaders
   METHOD removeShader
   METHOD setAttributeArray
   METHOD setAttributeBuffer1
   METHOD setAttributeBuffer2
   METHOD setAttributeBuffer
   METHOD setAttributeValue1
   METHOD setAttributeValue2
   METHOD setAttributeValue3
   METHOD setAttributeValue4
   METHOD setAttributeValue8
   METHOD setAttributeValue10
   METHOD setAttributeValue11
   METHOD setAttributeValue12
   METHOD setAttributeValue13
   METHOD setAttributeValue17
   METHOD setAttributeValue
   METHOD setGeometryInputType
   METHOD setGeometryOutputType
   METHOD setGeometryOutputVertexCount
   METHOD setUniformValue1
   METHOD setUniformValue2
   METHOD setUniformValue3
   METHOD setUniformValue4
   METHOD setUniformValue20
   METHOD setUniformValue21
   METHOD setUniformValue22
   METHOD setUniformValue23
   METHOD setUniformValue24
   METHOD setUniformValue25
   METHOD setUniformValue29
   METHOD setUniformValue30
   METHOD setUniformValue31
   METHOD setUniformValue32
   METHOD setUniformValue33
   METHOD setUniformValue43
   METHOD setUniformValue44
   METHOD setUniformValue45
   METHOD setUniformValue46
   METHOD setUniformValue47
   METHOD setUniformValue48
   METHOD setUniformValue49
   METHOD setUniformValue53
   METHOD setUniformValue54
   METHOD setUniformValue
   METHOD setUniformValueArray
   METHOD shaders
   METHOD uniformLocation1
   METHOD uniformLocation2
   METHOD uniformLocation3
   METHOD uniformLocation
   METHOD hasOpenGLShaderPrograms

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGLShaderProgram>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGLShaderProgram ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_NEW1 )
{
  QGLShaderProgram * o = new QGLShaderProgram ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QGLShaderProgram ( const QGLContext * context, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_NEW2 )
{
  const QGLContext * par1 = (const QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGLShaderProgram * o = new QGLShaderProgram ( par1, OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QGLShaderProgram ( QObject * parent = 0 )
//[2]QGLShaderProgram ( const QGLContext * context, QObject * parent = 0 )

HB_FUNC_STATIC( QGLSHADERPROGRAM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQGLCONTEXT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool addShader ( QGLShader * shader )
*/
$method=|bool|addShader|QGLShader *

/*
bool addShaderFromSourceCode ( QGLShader::ShaderType type, const char * source )
*/
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode1|QGLShader::ShaderType,const char *

/*
bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QByteArray & source )
*/
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode2|QGLShader::ShaderType,const QByteArray &

/*
bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QString & source )
*/
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
}

/*
bool addShaderFromSourceFile ( QGLShader::ShaderType type, const QString & fileName )
*/
$method=|bool|addShaderFromSourceFile|QGLShader::ShaderType,const QString &

/*
int attributeLocation ( const char * name ) const
*/
$method=|int|attributeLocation,attributeLocation1|const char *

/*
int attributeLocation ( const QByteArray & name ) const
*/
$method=|int|attributeLocation,attributeLocation2|const QByteArray &

/*
int attributeLocation ( const QString & name ) const
*/
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
}

/*
bool bind ()
*/
$method=|bool|bind|

/*
void bindAttributeLocation ( const char * name, int location )
*/
$method=|void|bindAttributeLocation,bindAttributeLocation1|const char *,int

/*
void bindAttributeLocation ( const QByteArray & name, int location )
*/
$method=|void|bindAttributeLocation,bindAttributeLocation2|const QByteArray &,int

/*
void bindAttributeLocation ( const QString & name, int location )
*/
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
}

/*
void disableAttributeArray ( int location )
*/
$method=|void|disableAttributeArray,disableAttributeArray1|int

/*
void disableAttributeArray ( const char * name )
*/
$method=|void|disableAttributeArray,disableAttributeArray2|const char *

//[1]void disableAttributeArray ( int location )
//[2]void disableAttributeArray ( const char * name )

HB_FUNC_STATIC( QGLSHADERPROGRAM_DISABLEATTRIBUTEARRAY )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_DISABLEATTRIBUTEARRAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_DISABLEATTRIBUTEARRAY2 );
  }
}

/*
void enableAttributeArray ( int location )
*/
$method=|void|enableAttributeArray,enableAttributeArray1|int

/*
void enableAttributeArray ( const char * name )
*/
$method=|void|enableAttributeArray,enableAttributeArray2|const char *

//[1]void enableAttributeArray ( int location )
//[2]void enableAttributeArray ( const char * name )

HB_FUNC_STATIC( QGLSHADERPROGRAM_ENABLEATTRIBUTEARRAY )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ENABLEATTRIBUTEARRAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_ENABLEATTRIBUTEARRAY2 );
  }
}

/*
GLenum geometryInputType () const
*/
$method=|GLenum|geometryInputType|

/*
GLenum geometryOutputType () const
*/
$method=|GLenum|geometryOutputType|

/*
int geometryOutputVertexCount () const
*/
$method=|int|geometryOutputVertexCount|

/*
bool isLinked () const
*/
$method=|bool|isLinked|

/*
virtual bool link ()
*/
$virtualMethod=|bool|link|

/*
QString log () const
*/
$method=|QString|log|

/*
int maxGeometryOutputVertices () const
*/
$method=|int|maxGeometryOutputVertices|

/*
GLuint programId () const
*/
$method=|GLuint|programId|

/*
void release ()
*/
$method=|void|release|

/*
void removeAllShaders ()
*/
$method=|void|removeAllShaders|

/*
void removeShader ( QGLShader * shader )
*/
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

/*
void setAttributeBuffer ( int location, GLenum type, int offset, int tupleSize, int stride = 0 )
*/
$method=|void|setAttributeBuffer,setAttributeBuffer1|int,GLenum,int,int,int=0

/*
void setAttributeBuffer ( const char * name, GLenum type, int offset, int tupleSize, int stride = 0 )
*/
$method=|void|setAttributeBuffer,setAttributeBuffer2|const char *,GLenum,int,int,int=0

//[1]void setAttributeBuffer ( int location, GLenum type, int offset, int tupleSize, int stride = 0 )
//[2]void setAttributeBuffer ( const char * name, GLenum type, int offset, int tupleSize, int stride = 0 )

HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEBUFFER )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEBUFFER1 );
  }
  else if( ISBETWEEN(4,5) && ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGLSHADERPROGRAM_SETATTRIBUTEBUFFER2 );
  }
}

/*
void setAttributeValue ( int location, GLfloat value )
*/
$method=|void|setAttributeValue,setAttributeValue1|int,GLfloat

/*
void setAttributeValue ( int location, GLfloat x, GLfloat y )
*/
$method=|void|setAttributeValue,setAttributeValue2|int,GLfloat,GLfloat

/*
void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z )
*/
$method=|void|setAttributeValue,setAttributeValue3|int,GLfloat,GLfloat,GLfloat

/*
void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
$method=|void|setAttributeValue,setAttributeValue4|int,GLfloat,GLfloat,GLfloat,GLfloat

/*
void setAttributeValue ( int location, const QColor & value )
*/
$method=|void|setAttributeValue,setAttributeValue8|int,const QColor &

/*
void setAttributeValue ( const char * name, GLfloat value )
*/
$method=|void|setAttributeValue,setAttributeValue10|const char *,GLfloat

/*
void setAttributeValue ( const char * name, GLfloat x, GLfloat y )
*/
$method=|void|setAttributeValue,setAttributeValue11|const char *,GLfloat,GLfloat

/*
void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
*/
$method=|void|setAttributeValue,setAttributeValue12|const char *,GLfloat,GLfloat,GLfloat

/*
void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
$method=|void|setAttributeValue,setAttributeValue13|const char *,GLfloat,GLfloat,GLfloat,GLfloat

/*
void setAttributeValue ( const char * name, const QColor & value )
*/
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
}

/*
void setGeometryInputType ( GLenum inputType )
*/
$method=|void|setGeometryInputType|GLenum

/*
void setGeometryOutputType ( GLenum outputType )
*/
$method=|void|setGeometryOutputType|GLenum

/*
void setGeometryOutputVertexCount ( int count )
*/
$method=|void|setGeometryOutputVertexCount|int

/*
void setUniformValue ( int location, GLfloat value )
*/
$method=|void|setUniformValue,setUniformValue1|int,GLfloat

/*
void setUniformValue ( const char * name, const QPointF & point )
*/
$method=|void|setUniformValue,setUniformValue2|const char *,const QPointF &

/*
void setUniformValue ( const char * name, const QSize & size )
*/
$method=|void|setUniformValue,setUniformValue3|const char *,const QSize &

/*
void setUniformValue ( const char * name, const QSizeF & size )
*/
$method=|void|setUniformValue,setUniformValue4|const char *,const QSizeF &

/*
void setUniformValue ( const char * name, const QTransform & value )
*/
$method=|void|setUniformValue,setUniformValue20|const char *,const QTransform &

/*
void setUniformValue ( int location, GLint value )
*/
$method=|void|setUniformValue,setUniformValue21|int,GLint

/*
void setUniformValue ( int location, GLuint value )
*/
$method=|void|setUniformValue,setUniformValue22|int,GLuint

/*
void setUniformValue ( int location, GLfloat x, GLfloat y )
*/
$method=|void|setUniformValue,setUniformValue23|int,GLfloat,GLfloat

/*
void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z )
*/
$method=|void|setUniformValue,setUniformValue24|int,GLfloat,GLfloat,GLfloat

/*
void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
$method=|void|setUniformValue,setUniformValue25|int,GLfloat,GLfloat,GLfloat,GLfloat

/*
void setUniformValue ( int location, const QColor & color )
*/
$method=|void|setUniformValue,setUniformValue29|int,const QColor &

/*
void setUniformValue ( int location, const QPoint & point )
*/
$method=|void|setUniformValue,setUniformValue30|int,const QPoint &

/*
void setUniformValue ( int location, const QPointF & point )
*/
$method=|void|setUniformValue,setUniformValue31|int,const QPointF &

/*
void setUniformValue ( int location, const QSize & size )
*/
$method=|void|setUniformValue,setUniformValue32|int,const QSize &

/*
void setUniformValue ( int location, const QSizeF & size )
*/
$method=|void|setUniformValue,setUniformValue33|int,const QSizeF &

/*
void setUniformValue ( int location, const QTransform & value )
*/
$method=|void|setUniformValue,setUniformValue43|int,const QTransform &

/*
void setUniformValue ( const char * name, GLfloat value )
*/
$method=|void|setUniformValue,setUniformValue44|const char *,GLfloat

/*
void setUniformValue ( const char * name, GLint value )
*/
$method=|void|setUniformValue,setUniformValue45|const char *,GLint

/*
void setUniformValue ( const char * name, GLuint value )
*/
$method=|void|setUniformValue,setUniformValue46|const char *,GLuint

/*
void setUniformValue ( const char * name, GLfloat x, GLfloat y )
*/
$method=|void|setUniformValue,setUniformValue47|const char *,GLfloat,GLfloat

/*
void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
*/
$method=|void|setUniformValue,setUniformValue48|const char *,GLfloat,GLfloat,GLfloat

/*
void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
$method=|void|setUniformValue,setUniformValue49|const char *,GLfloat,GLfloat,GLfloat,GLfloat

/*
void setUniformValue ( const char * name, const QColor & color )
*/
$method=|void|setUniformValue,setUniformValue53|const char *,const QColor &

/*
void setUniformValue ( const char * name, const QPoint & point )
*/
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
}

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

/*
QList<QGLShader *> shaders () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SHADERS )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGLShader *> list = obj->shaders ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGLSHADER" );
    #else
    pDynSym = hb_dynsymFindName( "QGLSHADER" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGLShader *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
int uniformLocation ( const char * name ) const
*/
$method=|int|uniformLocation,uniformLocation1|const char *

/*
int uniformLocation ( const QByteArray & name ) const
*/
$method=|int|uniformLocation,uniformLocation2|const QByteArray &

/*
int uniformLocation ( const QString & name ) const
*/
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
}


/*
static bool hasOpenGLShaderPrograms ( const QGLContext * context = 0 )
*/
$staticMethod=|bool|hasOpenGLShaderPrograms|const QGLContext *=0

#pragma ENDDUMP
