/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QXMLDTDHANDLER
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER

CLASS QXmlReader

   DATA pointer
   DATA class_id INIT Class_Id_QXmlReader
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlReader
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlReader
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlReader
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlReader
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlReader
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
