/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSpinBox INHERIT QAbstractSpinBox

   DATA class_id INIT Class_Id_QSpinBox
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD maximum
   METHOD minimum
   METHOD prefix
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPrefix
   METHOD setRange
   METHOD setSingleStep
   METHOD setSuffix
   METHOD singleStep
   METHOD suffix
   METHOD value
   METHOD setValue
   METHOD onValueChanged1
   METHOD onValueChanged2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
