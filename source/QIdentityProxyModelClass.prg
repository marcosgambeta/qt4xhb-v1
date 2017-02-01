/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QITEMSELECTION

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   DATA class_id INIT Class_Id_QIdentityProxyModel
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD dropMimeData
   METHOD index
   METHOD insertColumns
   METHOD insertRows
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD match
   METHOD parent
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setSourceModel
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIdentityProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
