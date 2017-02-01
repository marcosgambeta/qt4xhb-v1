/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QTEXTDECODER
REQUEST QTEXTENCODER
REQUEST QTEXTCODEC

CLASS QTextCodec

   DATA pointer
   DATA class_id INIT Class_Id_QTextCodec
   DATA self_destruction INIT .f.

   METHOD canEncode1
   METHOD canEncode2
   METHOD canEncode
   METHOD toUnicode1
   METHOD toUnicode2
   METHOD toUnicode
   METHOD fromUnicode1
   METHOD fromUnicode
   METHOD makeDecoder1
   METHOD makeDecoder2
   METHOD makeDecoder
   METHOD makeEncoder1
   METHOD makeEncoder2
   METHOD makeEncoder
   METHOD name
   METHOD aliases
   METHOD mibEnum
   METHOD codecForName1
   METHOD codecForName2
   METHOD codecForName
   METHOD codecForMib
   METHOD availableCodecs
   METHOD availableMibs
   METHOD codecForLocale
   METHOD setCodecForLocale
   METHOD codecForTr
   METHOD setCodecForTr
   METHOD codecForCStrings
   METHOD setCodecForCStrings
   METHOD codecForHtml1
   METHOD codecForHtml2
   METHOD codecForHtml
   METHOD codecForUtfText1
   METHOD codecForUtfText2
   METHOD codecForUtfText
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextCodec
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextCodec
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextCodec
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextCodec
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextCodec
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextCodec
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
