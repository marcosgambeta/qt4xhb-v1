/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QGraphicsTransform INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsTransform
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD applyTo
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
