/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QKEYSEQUENCE
REQUEST QWIDGET

CLASS QShortcut INHERIT QObject

   DATA class_id INIT Class_Id_QShortcut
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD autoRepeat
   METHOD context
   METHOD id
   METHOD isEnabled
   METHOD key
   METHOD parentWidget
   METHOD setAutoRepeat
   METHOD setContext
   METHOD setEnabled
   METHOD setKey
   METHOD setWhatsThis
   METHOD whatsThis
   METHOD onActivated
   METHOD onActivatedAmbiguously
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QShortcut
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
