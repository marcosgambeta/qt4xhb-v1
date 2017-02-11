/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMUTEX

CLASS QFutureInterfaceBase

   DATA pointer
   DATA class_id INIT Class_Id_QFutureInterfaceBase
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD reportStarted
   METHOD reportFinished
   METHOD reportCanceled
   METHOD reportResultsReady
   METHOD setRunnable
   METHOD setFilterMode
   METHOD setProgressRange
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD isProgressUpdateNeeded
   METHOD setProgressValue
   METHOD progressValue
   METHOD setProgressValueAndText
   METHOD progressText
   METHOD setExpectedResultCount
   METHOD expectedResultCount
   METHOD resultCount
   METHOD queryState
   METHOD isRunning
   METHOD isStarted
   METHOD isCanceled
   METHOD isFinished
   METHOD isPaused
   METHOD isThrottled
   METHOD isResultReadyAt
   METHOD cancel
   METHOD setPaused
   METHOD togglePaused
   METHOD setThrottled
   METHOD waitForFinished
   METHOD waitForNextResult
   METHOD waitForResult
   METHOD waitForResume
   METHOD mutex
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QFutureInterfaceBase
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QFutureInterfaceBase
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QFutureInterfaceBase
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QFutureInterfaceBase
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QFutureInterfaceBase
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QFutureInterfaceBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
