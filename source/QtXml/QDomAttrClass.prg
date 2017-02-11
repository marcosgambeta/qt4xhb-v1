/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDOMELEMENT

CLASS QDomAttr INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomAttr
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD name
   METHOD nodeType
   METHOD ownerElement
   METHOD setValue
   METHOD specified
   METHOD value
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomAttr
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
