/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSQLRESULT
REQUEST QVARIANT
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLRECORD

CLASS QSqlDriver INHERIT QObject

   DATA class_id INIT Class_Id_QSqlDriver
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD beginTransaction
   METHOD close
   METHOD commitTransaction
   METHOD createResult
   METHOD escapeIdentifier
   METHOD formatValue
   METHOD handle
   METHOD hasFeature
   METHOD isIdentifierEscaped
   METHOD isOpen
   METHOD isOpenError
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD open
   METHOD primaryIndex
   METHOD record
   METHOD rollbackTransaction
   METHOD setNumericalPrecisionPolicy
   METHOD sqlStatement
   METHOD stripDelimiters
   METHOD subscribeToNotification
   METHOD subscribedToNotifications
   METHOD tables
   METHOD unsubscribeFromNotification
   METHOD onNotification
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDriver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
