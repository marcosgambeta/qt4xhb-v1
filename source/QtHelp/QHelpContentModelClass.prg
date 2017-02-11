/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHELPCONTENTITEM
REQUEST QVARIANT
REQUEST QMODELINDEX

CLASS QHelpContentModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QHelpContentModel
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD contentItemAt
   METHOD createContents
   METHOD isCreatingContents
   METHOD columnCount
   METHOD data
   METHOD index
   METHOD parent
   METHOD rowCount
   METHOD onContentsCreated
   METHOD onContentsCreationStarted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpContentModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
