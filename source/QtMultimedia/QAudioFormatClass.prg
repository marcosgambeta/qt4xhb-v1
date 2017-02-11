/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QAudioFormat

   DATA pointer
   DATA class_id INIT Class_Id_QAudioFormat
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setFrequency
   METHOD frequency
   METHOD setSampleRate
   METHOD sampleRate
   METHOD setChannels
   METHOD channels
   METHOD setChannelCount
   METHOD channelCount
   METHOD setSampleSize
   METHOD sampleSize
   METHOD setCodec
   METHOD codec
   METHOD setByteOrder
   METHOD byteOrder
   METHOD sampleType
   METHOD setSampleType
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAudioFormat
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAudioFormat
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAudioFormat
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAudioFormat
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAudioFormat
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAudioFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
