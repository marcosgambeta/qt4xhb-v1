/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlContentHandler

   DATA pointer
   DATA class_id INIT Class_Id_QXmlContentHandler
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD characters
   METHOD endDocument
   METHOD endElement
   METHOD endPrefixMapping
   METHOD errorString
   METHOD ignorableWhitespace
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startDocument
   METHOD startElement
   METHOD startPrefixMapping
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlContentHandler
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlContentHandler
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlContentHandler
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlContentHandler
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlContentHandler
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlContentHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
