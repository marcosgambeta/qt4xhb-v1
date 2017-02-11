/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTemporaryFile INHERIT QFile

   DATA class_id INIT Class_Id_QTemporaryFile
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTemporaryFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
