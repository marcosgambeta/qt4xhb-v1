/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   DATA class_id INIT Class_Id_QExtensionFactory
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QExtensionFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
