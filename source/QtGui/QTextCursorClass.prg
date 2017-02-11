/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTBLOCK
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTLIST
REQUEST QTEXTFRAME
REQUEST QTEXTTABLE
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTFRAGMENT

CLASS QTextCursor

   DATA pointer
   DATA class_id INIT Class_Id_QTextCursor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD anchor
   METHOD atBlockEnd
   METHOD atBlockStart
   METHOD atEnd
   METHOD atStart
   METHOD beginEditBlock
   METHOD block
   METHOD blockCharFormat
   METHOD blockFormat
   METHOD blockNumber
   METHOD charFormat
   METHOD clearSelection
   METHOD columnNumber
   METHOD createList1
   METHOD createList2
   METHOD createList
   METHOD currentFrame
   METHOD currentList
   METHOD currentTable
   METHOD deleteChar
   METHOD deletePreviousChar
   METHOD document
   METHOD endEditBlock
   METHOD hasComplexSelection
   METHOD hasSelection
   METHOD insertBlock1
   METHOD insertBlock2
   METHOD insertBlock3
   METHOD insertBlock
   METHOD insertFragment
   METHOD insertFrame
   METHOD insertHtml
   METHOD insertImage1
   METHOD insertImage2
   METHOD insertImage3
   METHOD insertImage4
   METHOD insertImage
   METHOD insertList1
   METHOD insertList2
   METHOD insertList
   METHOD insertTable1
   METHOD insertTable2
   METHOD insertTable
   METHOD insertText1
   METHOD insertText2
   METHOD insertText
   METHOD isCopyOf
   METHOD isNull
   METHOD joinPreviousEditBlock
   METHOD keepPositionOnInsert
   METHOD mergeBlockCharFormat
   METHOD mergeBlockFormat
   METHOD mergeCharFormat
   METHOD movePosition
   METHOD position
   METHOD positionInBlock
   METHOD removeSelectedText
   METHOD select
   METHOD selectedTableCells
   METHOD selectedText
   METHOD selection
   METHOD selectionEnd
   METHOD selectionStart
   METHOD setBlockCharFormat
   METHOD setBlockFormat
   METHOD setCharFormat
   METHOD setKeepPositionOnInsert
   METHOD setPosition
   METHOD setVerticalMovementX
   METHOD setVisualNavigation
   METHOD verticalMovementX
   METHOD visualNavigation
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextCursor
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextCursor
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextCursor
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextCursor
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextCursor
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
