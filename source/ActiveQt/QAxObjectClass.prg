/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT
REQUEST QAXOBJECT

CLASS QAxObject INHERIT QObject,QAxBase

   DATA class_id INIT Class_Id_QAxObject
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD doVerb
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall1
   METHOD dynamicCall2
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject1
   METHOD querySubObject2
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs
   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
