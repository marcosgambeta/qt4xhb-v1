/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QANIMATIONGROUP

CLASS QAbstractAnimation INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractAnimation
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD currentLoop
   METHOD currentLoopTime
   METHOD currentTime
   METHOD direction
   METHOD duration
   METHOD group
   METHOD loopCount
   METHOD setDirection
   METHOD setLoopCount
   METHOD state
   METHOD totalDuration
   METHOD pause
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop
   METHOD onCurrentLoopChanged
   METHOD onDirectionChanged
   METHOD onFinished
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
