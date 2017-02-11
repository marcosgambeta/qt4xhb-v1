/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT

CLASS QSqlRelationalTableModel INHERIT QSqlTableModel

   DATA class_id INIT Class_Id_QSqlRelationalTableModel
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelationalTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
