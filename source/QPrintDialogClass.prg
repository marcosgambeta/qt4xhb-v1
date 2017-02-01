/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPRINTER

CLASS QPrintDialog INHERIT QAbstractPrintDialog

   DATA class_id INIT Class_Id_QPrintDialog
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD done
   METHOD exec
   METHOD setVisible
   METHOD onAccepted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
