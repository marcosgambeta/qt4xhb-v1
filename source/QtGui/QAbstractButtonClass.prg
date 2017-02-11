/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBUTTONGROUP
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE

CLASS QAbstractButton INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractButton
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD autoExclusive
   METHOD autoRepeat
   METHOD autoRepeatDelay
   METHOD autoRepeatInterval
   METHOD group
   METHOD icon
   METHOD iconSize
   METHOD isCheckable
   METHOD isChecked
   METHOD isDown
   METHOD setAutoExclusive
   METHOD setAutoRepeat
   METHOD setAutoRepeatDelay
   METHOD setAutoRepeatInterval
   METHOD setCheckable
   METHOD setDown
   METHOD setIcon
   METHOD setShortcut
   METHOD setText
   METHOD shortcut
   METHOD text
   METHOD animateClick
   METHOD click
   METHOD setChecked
   METHOD setIconSize
   METHOD toggle
   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
