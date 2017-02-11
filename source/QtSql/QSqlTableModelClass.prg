/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSQLDATABASE
REQUEST QSQLINDEX
REQUEST QVARIANT

CLASS QSqlTableModel INHERIT QSqlQueryModel

   DATA class_id INIT Class_Id_QSqlTableModel
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD database
   METHOD editStrategy
   METHOD fieldIndex
   METHOD filter
   METHOD insertRecord
   METHOD isDirty
   METHOD primaryKey
   METHOD revertRow
   METHOD select
   METHOD setEditStrategy
   METHOD setFilter
   METHOD setRecord
   METHOD setSort
   METHOD setTable
   METHOD tableName
   METHOD clear
   METHOD data
   METHOD flags
   METHOD headerData
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD revert
   METHOD revertAll
   METHOD submit
   METHOD submitAll
   METHOD onBeforeDelete
   METHOD onBeforeInsert
   METHOD onBeforeUpdate
   METHOD onPrimeInsert
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
