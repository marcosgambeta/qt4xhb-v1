/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QHelpSearchResultWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QHelpSearchResultWidget
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD linkAt
   METHOD onRequestShowLink
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchResultWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
