/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QLOCALSOCKET

CLASS QLocalServer INHERIT QObject

   DATA class_id INIT Class_Id_QLocalServer
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD fullServerName
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD serverError
   METHOD serverName
   METHOD setMaxPendingConnections
   METHOD waitForNewConnection
   METHOD removeServer
   METHOD onNewConnection
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLocalServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
