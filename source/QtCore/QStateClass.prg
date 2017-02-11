/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIGNALTRANSITION
REQUEST QABSTRACTTRANSITION
REQUEST QABSTRACTSTATE

CLASS QState INHERIT QAbstractState

   DATA class_id INIT Class_Id_QState
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addTransition1
   METHOD addTransition2
   METHOD addTransition3
   METHOD addTransition
   METHOD assignProperty
   METHOD childMode
   METHOD errorState
   METHOD initialState
   METHOD removeTransition
   METHOD setChildMode
   METHOD setErrorState
   METHOD setInitialState
   METHOD transitions
   METHOD onFinished
   METHOD onPropertiesAssigned
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
