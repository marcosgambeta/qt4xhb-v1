/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTCODEC
REQUEST QIODEVICE

CLASS QXmlStreamWriter

   DATA pointer
   DATA class_id INIT Class_Id_QXmlStreamWriter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD autoFormatting
   METHOD autoFormattingIndent
   METHOD codec
   METHOD device
   METHOD hasError
   METHOD setAutoFormatting
   METHOD setAutoFormattingIndent
   METHOD setCodec1
   METHOD setCodec2
   METHOD setCodec
   METHOD setDevice
   METHOD writeAttribute1
   METHOD writeAttribute2
   METHOD writeAttribute3
   METHOD writeAttribute
   METHOD writeAttributes
   METHOD writeCDATA
   METHOD writeCharacters
   METHOD writeComment
   METHOD writeCurrentToken
   METHOD writeDTD
   METHOD writeDefaultNamespace
   METHOD writeEmptyElement1
   METHOD writeEmptyElement2
   METHOD writeEmptyElement
   METHOD writeEndDocument
   METHOD writeEndElement
   METHOD writeEntityReference
   METHOD writeNamespace
   METHOD writeProcessingInstruction
   METHOD writeStartDocument1
   METHOD writeStartDocument2
   METHOD writeStartDocument3
   METHOD writeStartDocument
   METHOD writeStartElement1
   METHOD writeStartElement2
   METHOD writeStartElement
   METHOD writeTextElement1
   METHOD writeTextElement2
   METHOD writeTextElement
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlStreamWriter
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlStreamWriter
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlStreamWriter
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlStreamWriter
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlStreamWriter
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlStreamWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
