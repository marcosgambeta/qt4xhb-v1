/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX

CLASS QAbstractTableModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QAbstractTableModel
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD dropMimeData
   METHOD index
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
