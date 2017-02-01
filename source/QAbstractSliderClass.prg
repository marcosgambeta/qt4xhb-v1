/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAbstractSlider INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractSlider
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD hasTracking
   METHOD invertedAppearance
   METHOD invertedControls
   METHOD isSliderDown
   METHOD maximum
   METHOD minimum
   METHOD orientation
   METHOD pageStep
   METHOD setInvertedAppearance
   METHOD setInvertedControls
   METHOD setMaximum
   METHOD setMinimum
   METHOD setPageStep
   METHOD setRange
   METHOD setSingleStep
   METHOD setSliderDown
   METHOD setSliderPosition
   METHOD setTracking
   METHOD singleStep
   METHOD sliderPosition
   METHOD triggerAction
   METHOD value
   METHOD setOrientation
   METHOD setValue
   METHOD onActionTriggered
   METHOD onRangeChanged
   METHOD onSliderMoved
   METHOD onSliderPressed
   METHOD onSliderReleased
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSlider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
