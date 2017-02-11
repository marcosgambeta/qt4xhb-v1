/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   DATA class_id INIT Class_Id_QSqlQueryModel
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD record1
   METHOD record2
   METHOD record
   METHOD setQuery1
   METHOD setQuery2
   METHOD setQuery
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount
   METHOD setHeaderData
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlQueryModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
