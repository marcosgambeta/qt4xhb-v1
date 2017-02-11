/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSqlDriverCreator INHERIT QSqlDriverCreatorBase

   DATA class_id INIT Class_Id_QSqlDriverCreator
   DATA self_destruction INIT .f.

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlDriverCreator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
