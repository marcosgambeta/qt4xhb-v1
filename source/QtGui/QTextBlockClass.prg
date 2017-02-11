/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTLAYOUT
REQUEST QTEXTBLOCK
REQUEST QTEXTLIST
REQUEST QTEXTBLOCKUSERDATA

CLASS QTextBlock

   DATA pointer
   DATA class_id INIT Class_Id_QTextBlock
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD blockFormat
   METHOD blockFormatIndex
   METHOD blockNumber
   METHOD charFormat
   METHOD charFormatIndex
   METHOD clearLayout
   METHOD contains
   METHOD document
   METHOD firstLineNumber
   METHOD isValid
   METHOD isVisible
   METHOD layout
   METHOD length
   METHOD lineCount
   METHOD next
   METHOD position
   METHOD previous
   METHOD revision
   METHOD setLineCount
   METHOD setRevision
   METHOD setUserData
   METHOD setUserState
   METHOD setVisible
   METHOD text
   METHOD textDirection
   METHOD textList
   METHOD userData
   METHOD userState
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextBlock
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextBlock
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextBlock
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextBlock
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextBlock
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextBlock
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
