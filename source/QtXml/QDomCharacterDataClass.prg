/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDomCharacterData INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomCharacterData
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD appendData
   METHOD data
   METHOD deleteData
   METHOD insertData
   METHOD length
   METHOD nodeType
   METHOD replaceData
   METHOD setData
   METHOD substringData
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomCharacterData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
