/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGLSHADER

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
