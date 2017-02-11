/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOMPLETER
REQUEST QMENU
REQUEST QSIZE
REQUEST QMARGINS
REQUEST QVALIDATOR
REQUEST QVARIANT

CLASS QLineEdit INHERIT QWidget

   DATA class_id INIT Class_Id_QLineEdit
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD backspace
   METHOD completer
   METHOD createStandardContextMenu
   METHOD cursorBackward
   METHOD cursorForward
   METHOD cursorPosition
   METHOD cursorPositionAt
   METHOD cursorWordBackward
   METHOD cursorWordForward
   METHOD del
   METHOD deselect
   METHOD displayText
   METHOD dragEnabled
   METHOD echoMode
   METHOD end
   METHOD getTextMargins
   METHOD hasAcceptableInput
   METHOD hasFrame
   METHOD hasSelectedText
   METHOD home
   METHOD inputMask
   METHOD insert
   METHOD isModified
   METHOD isReadOnly
   METHOD isRedoAvailable
   METHOD isUndoAvailable
   METHOD maxLength
   METHOD placeholderText
   METHOD minimumSizeHint
   METHOD selectedText
   METHOD selectionStart
   METHOD setAlignment
   METHOD setCompleter
   METHOD setCursorPosition
   METHOD setDragEnabled
   METHOD setEchoMode
   METHOD setFrame
   METHOD setInputMask
   METHOD setMaxLength
   METHOD setModified
   METHOD setPlaceholderText
   METHOD setReadOnly
   METHOD setSelection
   METHOD setTextMargins1
   METHOD setTextMargins2
   METHOD setTextMargins
   METHOD setValidator
   METHOD sizeHint
   METHOD text
   METHOD textMargins
   METHOD validator
   METHOD event
   METHOD inputMethodQuery
   METHOD copy
   METHOD cut
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD setText
   METHOD undo
   METHOD onCursorPositionChanged
   METHOD onEditingFinished
   METHOD onReturnPressed
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onTextEdited
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLineEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
