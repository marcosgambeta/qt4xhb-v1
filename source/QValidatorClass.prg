/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QLOCALE

CLASS QValidator INHERIT QObject

   DATA class_id INIT Class_Id_QValidator
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
