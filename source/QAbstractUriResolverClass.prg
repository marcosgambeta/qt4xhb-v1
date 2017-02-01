/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QAbstractUriResolver INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractUriResolver
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD resolve
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractUriResolver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
