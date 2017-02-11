/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPRINTER

CLASS QPageSetupDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QPageSetupDialog
   DATA self_destruction INIT .f.

   METHOD new
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPageSetupDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
