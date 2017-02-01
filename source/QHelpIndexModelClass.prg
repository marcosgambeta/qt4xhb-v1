/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX

CLASS QHelpIndexModel INHERIT QStringListModel

   DATA class_id INIT Class_Id_QHelpIndexModel
   DATA self_destruction INIT .f.

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex
   METHOD onIndexCreated
   METHOD onIndexCreationStarted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpIndexModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
