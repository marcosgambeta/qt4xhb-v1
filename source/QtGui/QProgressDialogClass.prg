/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QProgressDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QProgressDialog
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD autoClose
   METHOD autoReset
   METHOD labelText
   METHOD maximum
   METHOD minimum
   METHOD minimumDuration
   METHOD open
   METHOD setAutoClose
   METHOD setAutoReset
   METHOD setBar
   METHOD setCancelButton
   METHOD setLabel
   METHOD value
   METHOD wasCanceled
   METHOD sizeHint
   METHOD cancel
   METHOD reset
   METHOD setCancelButtonText
   METHOD setLabelText
   METHOD setMaximum
   METHOD setMinimum
   METHOD setMinimumDuration
   METHOD setRange
   METHOD setValue
   METHOD onCanceled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProgressDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
