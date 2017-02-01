/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDateEdit INHERIT QDateTimeEdit

   DATA class_id INIT Class_Id_QDateEdit
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDateEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
