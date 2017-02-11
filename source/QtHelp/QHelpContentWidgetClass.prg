/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX

CLASS QHelpContentWidget INHERIT QTreeView

   DATA class_id INIT Class_Id_QHelpContentWidget
   DATA self_destruction INIT .f.

   METHOD indexOf
   METHOD onLinkActivated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpContentWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
