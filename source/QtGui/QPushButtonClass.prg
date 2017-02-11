/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QPushButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QPushButton
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD autoDefault
   METHOD isDefault
   METHOD isFlat
   METHOD setAutoDefault
   METHOD setDefault
   METHOD setFlat
   METHOD showMenu
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPushButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
