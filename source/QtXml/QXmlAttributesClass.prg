/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QXmlAttributes

   DATA pointer
   DATA class_id INIT Class_Id_QXmlAttributes
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index1
   METHOD index2
   METHOD index3
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type1
   METHOD type2
   METHOD type3
   METHOD type
   METHOD uri
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlAttributes
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlAttributes
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlAttributes
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlAttributes
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlAttributes
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
