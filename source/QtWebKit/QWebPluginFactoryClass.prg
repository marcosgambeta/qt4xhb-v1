/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT

CLASS QWebPluginFactory INHERIT QObject

   DATA class_id INIT Class_Id_QWebPluginFactory
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD create
   METHOD refreshPlugins
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebPluginFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
