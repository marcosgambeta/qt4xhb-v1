/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDOMTEXT

CLASS QDomText INHERIT QDomCharacterData

   DATA class_id INIT Class_Id_QDomText
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   METHOD splitText
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
