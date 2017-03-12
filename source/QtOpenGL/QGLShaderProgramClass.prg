/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLSHADER
#endif

CLASS QGLShaderProgram INHERIT QObject

   DATA class_id INIT Class_Id_QGLShaderProgram
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QGLShaderProgram
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGLShaderProgram>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QGLShaderProgram ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_NEW1 )
{
  QGLShaderProgram * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGLShaderProgram ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLShaderProgram *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGLShaderProgram ( const QGLContext * context, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_NEW2 )
{
  QGLShaderProgram * o = NULL;
  const QGLContext * par1 = (const QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGLShaderProgram ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGLShaderProgram *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QGLSHADERPROGRAM_DELETE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool addShader ( QGLShader * shader )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ADDSHADER )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLShader * par1 = (QGLShader *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->addShader ( par1 ) );
  }
}


/*
bool addShaderFromSourceCode ( QGLShader::ShaderType type, const char * source )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const char * par2 = hb_parc(2);
    hb_retl( obj->addShaderFromSourceCode (  (QGLShader::ShaderType) par1,  (const char *) par2 ) );
  }
}


/*
bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QByteArray & source )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QByteArray * par2 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->addShaderFromSourceCode (  (QGLShader::ShaderType) par1, *par2 ) );
  }
}


/*
bool addShaderFromSourceCode ( QGLShader::ShaderType type, const QString & source )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE3 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    hb_retl( obj->addShaderFromSourceCode (  (QGLShader::ShaderType) par1, par2 ) );
  }
}


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
HB_FUNC_STATIC( QGLSHADERPROGRAM_ADDSHADERFROMSOURCEFILE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    hb_retl( obj->addShaderFromSourceFile (  (QGLShader::ShaderType) par1, par2 ) );
  }
}


/*
int attributeLocation ( const char * name ) const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ATTRIBUTELOCATION1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->attributeLocation (  (const char *) par1 ) );
  }
}


/*
int attributeLocation ( const QByteArray & name ) const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ATTRIBUTELOCATION2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->attributeLocation ( *par1 ) );
  }
}


/*
int attributeLocation ( const QString & name ) const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ATTRIBUTELOCATION3 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retni( obj->attributeLocation ( par1 ) );
  }
}


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
HB_FUNC_STATIC( QGLSHADERPROGRAM_BIND )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
void bindAttributeLocation ( const char * name, int location )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int par2 = hb_parni(2);
    obj->bindAttributeLocation (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindAttributeLocation ( const QByteArray & name, int location )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->bindAttributeLocation ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void bindAttributeLocation ( const QString & name, int location )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_BINDATTRIBUTELOCATION3 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    obj->bindAttributeLocation ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QGLSHADERPROGRAM_DISABLEATTRIBUTEARRAY1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->disableAttributeArray ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disableAttributeArray ( const char * name )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_DISABLEATTRIBUTEARRAY2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->disableAttributeArray (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QGLSHADERPROGRAM_ENABLEATTRIBUTEARRAY1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->enableAttributeArray ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void enableAttributeArray ( const char * name )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ENABLEATTRIBUTEARRAY2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->enableAttributeArray (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QGLSHADERPROGRAM_GEOMETRYINPUTTYPE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum i = obj->geometryInputType (  );
    hb_retni( i );
  }
}


/*
GLenum geometryOutputType () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_GEOMETRYOUTPUTTYPE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum i = obj->geometryOutputType (  );
    hb_retni( i );
  }
}


/*
int geometryOutputVertexCount () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_GEOMETRYOUTPUTVERTEXCOUNT )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->geometryOutputVertexCount (  ) );
  }
}


/*
bool isLinked () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_ISLINKED )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isLinked (  ) );
  }
}


/*
virtual bool link ()
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_LINK )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->link (  ) );
  }
}


/*
QString log () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_LOG )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->log (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int maxGeometryOutputVertices () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_MAXGEOMETRYOUTPUTVERTICES )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maxGeometryOutputVertices (  ) );
  }
}


/*
GLuint programId () const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_PROGRAMID )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (GLuint) obj->programId (  ) );
  }
}


/*
void release ()
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_RELEASE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->release (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAllShaders ()
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_REMOVEALLSHADERS )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAllShaders (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeShader ( QGLShader * shader )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_REMOVESHADER )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGLShader * par1 = (QGLShader *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeShader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}












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

// TODO: implementar
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEARRAY )
{
}

/*
void setAttributeBuffer ( int location, GLenum type, int offset, int tupleSize, int stride = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEBUFFER1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLenum par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = ISNIL(5)? 0 : hb_parni(5);
    obj->setAttributeBuffer ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeBuffer ( const char * name, GLenum type, int offset, int tupleSize, int stride = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEBUFFER2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLenum par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = ISNIL(5)? 0 : hb_parni(5);
    obj->setAttributeBuffer (  (const char *) par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    obj->setAttributeValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeValue ( int location, GLfloat x, GLfloat y )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    obj->setAttributeValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE3 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    obj->setAttributeValue ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE4 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    GLfloat par5 = hb_parnd(5);
    obj->setAttributeValue ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setAttributeValue ( int location, const QColor & value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE8 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setAttributeValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setAttributeValue ( const char * name, GLfloat value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE10 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    obj->setAttributeValue (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeValue ( const char * name, GLfloat x, GLfloat y )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE11 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    obj->setAttributeValue (  (const char *) par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE12 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    obj->setAttributeValue (  (const char *) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAttributeValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE13 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    GLfloat par5 = hb_parnd(5);
    obj->setAttributeValue (  (const char *) par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setAttributeValue ( const char * name, const QColor & value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETATTRIBUTEVALUE17 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setAttributeValue (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



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

// TODO: implementar casos 5/6/7/9/14/15/16/18

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
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETGEOMETRYINPUTTYPE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum par1 = hb_parni(1);
    obj->setGeometryInputType ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGeometryOutputType ( GLenum outputType )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETGEOMETRYOUTPUTTYPE )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    GLenum par1 = hb_parni(1);
    obj->setGeometryOutputType ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGeometryOutputVertexCount ( int count )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETGEOMETRYOUTPUTVERTEXCOUNT )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGeometryOutputVertexCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, GLfloat value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    obj->setUniformValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, const QPointF & point )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue (  (const char *) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, const QSize & size )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE3 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue (  (const char *) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, const QSizeF & size )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE4 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QSizeF * par2 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue (  (const char *) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

















/*
void setUniformValue ( const char * name, const QTransform & value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE20 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QTransform * par2 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue (  (const char *) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, GLint value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE21 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLint par2 = hb_parni(2);
    obj->setUniformValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, GLuint value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE22 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLuint par2 = hb_parni(2);
    obj->setUniformValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, GLfloat x, GLfloat y )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE23 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    obj->setUniformValue ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE24 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    obj->setUniformValue ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE25 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    GLfloat par5 = hb_parnd(5);
    obj->setUniformValue ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setUniformValue ( int location, const QColor & color )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE29 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setUniformValue ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, const QPoint & point )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE30 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPoint * par2 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, const QPointF & point )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE31 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, const QSize & size )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE32 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSize * par2 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( int location, const QSizeF & size )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE33 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF * par2 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}











/*
void setUniformValue ( int location, const QTransform & value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE43 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTransform * par2 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, GLfloat value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE44 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    obj->setUniformValue (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, GLint value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE45 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLint par2 = hb_parni(2);
    obj->setUniformValue (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, GLuint value )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE46 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLuint par2 = hb_parni(2);
    obj->setUniformValue (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, GLfloat x, GLfloat y )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE47 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    obj->setUniformValue (  (const char *) par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE48 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    obj->setUniformValue (  (const char *) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, GLfloat x, GLfloat y, GLfloat z, GLfloat w )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE49 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    GLfloat par2 = hb_parnd(2);
    GLfloat par3 = hb_parnd(3);
    GLfloat par4 = hb_parnd(4);
    GLfloat par5 = hb_parnd(5);
    obj->setUniformValue (  (const char *) par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setUniformValue ( const char * name, const QColor & color )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE53 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setUniformValue (  (const char *) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformValue ( const char * name, const QPoint & point )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_SETUNIFORMVALUE54 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QPoint * par2 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUniformValue (  (const char *) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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

// TODO: implementar reconhecimento de parâmetros

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

// TODO: implementar métodos e reconhecimento dos parâmetros

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
    QList<QGLShader *> list = obj->shaders (  );
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
HB_FUNC_STATIC( QGLSHADERPROGRAM_UNIFORMLOCATION1 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retni( obj->uniformLocation (  (const char *) par1 ) );
  }
}


/*
int uniformLocation ( const QByteArray & name ) const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_UNIFORMLOCATION2 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->uniformLocation ( *par1 ) );
  }
}


/*
int uniformLocation ( const QString & name ) const
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_UNIFORMLOCATION3 )
{
  QGLShaderProgram * obj = (QGLShaderProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retni( obj->uniformLocation ( par1 ) );
  }
}


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
bool hasOpenGLShaderPrograms ( const QGLContext * context = 0 )
*/
HB_FUNC_STATIC( QGLSHADERPROGRAM_HASOPENGLSHADERPROGRAMS )
{
  const QGLContext * par1 = ISNIL(1)? 0 : (const QGLContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QGLShaderProgram::hasOpenGLShaderPrograms ( par1 ) );
}




#pragma ENDDUMP
