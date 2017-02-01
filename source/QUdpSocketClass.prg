/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QUdpSocket INHERIT QAbstractSocket

   DATA class_id INIT Class_Id_QUdpSocket
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD bind1
   METHOD bind2
   METHOD bind3
   METHOD bind4
   METHOD bind
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD readDatagram
   METHOD writeDatagram1
   METHOD writeDatagram2
   METHOD writeDatagram
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUdpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
