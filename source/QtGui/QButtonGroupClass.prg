/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTBUTTON

CLASS QButtonGroup INHERIT QObject

   DATA class_id INIT Class_Id_QButtonGroup
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addButton1
   METHOD addButton2
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId
   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QButtonGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
