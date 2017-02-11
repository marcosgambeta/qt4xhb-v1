/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTFORMAT
REQUEST QTEXTBLOCK
REQUEST QCHAR
REQUEST QTEXTDOCUMENT
REQUEST QFONT
REQUEST QTEXTOPTION
REQUEST QABSTRACTTEXTDOCUMENTLAYOUT
REQUEST QTEXTCURSOR
REQUEST QTEXTOBJECT
REQUEST QSIZEF
REQUEST QVARIANT
REQUEST QTEXTFRAME

CLASS QTextDocument INHERIT QObject

   DATA class_id INIT Class_Id_QTextDocument
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addResource
   METHOD adjustSize
   METHOD allFormats
   METHOD availableRedoSteps
   METHOD availableUndoSteps
   METHOD begin
   METHOD blockCount
   METHOD characterAt
   METHOD characterCount
   METHOD clear
   METHOD clearUndoRedoStacks
   METHOD clone
   METHOD defaultCursorMoveStyle
   METHOD defaultFont
   METHOD defaultStyleSheet
   METHOD defaultTextOption
   METHOD documentLayout
   METHOD documentMargin
   METHOD drawContents
   METHOD end
   METHOD find1
   METHOD find2
   METHOD find3
   METHOD find4
   METHOD find
   METHOD findBlock
   METHOD findBlockByLineNumber
   METHOD findBlockByNumber
   METHOD firstBlock
   METHOD idealWidth
   METHOD indentWidth
   METHOD isEmpty
   METHOD isModified
   METHOD isRedoAvailable
   METHOD isUndoAvailable
   METHOD isUndoRedoEnabled
   METHOD lastBlock
   METHOD lineCount
   METHOD markContentsDirty
   METHOD maximumBlockCount
   METHOD metaInformation
   METHOD object
   METHOD objectForFormat
   METHOD pageCount
   METHOD pageSize
   METHOD print
   METHOD redo1
   METHOD resource
   METHOD revision
   METHOD rootFrame
   METHOD setDefaultCursorMoveStyle
   METHOD setDefaultFont
   METHOD setDefaultStyleSheet
   METHOD setDefaultTextOption
   METHOD setDocumentLayout
   METHOD setDocumentMargin
   METHOD setHtml
   METHOD setIndentWidth
   METHOD setMaximumBlockCount
   METHOD setMetaInformation
   METHOD setPageSize
   METHOD setPlainText
   METHOD setTextWidth
   METHOD setUndoRedoEnabled
   METHOD setUseDesignMetrics
   METHOD size
   METHOD textWidth
   METHOD toHtml
   METHOD toPlainText
   METHOD undo1
   METHOD useDesignMetrics
   METHOD redo2
   METHOD redo
   METHOD setModified
   METHOD undo2
   METHOD undo
   METHOD onBlockCountChanged
   METHOD onContentsChange
   METHOD onContentsChanged
   METHOD onCursorPositionChanged
   METHOD onDocumentLayoutChanged
   METHOD onModificationChanged
   METHOD onRedoAvailable
   METHOD onUndoAvailable
   METHOD onUndoCommandAdded
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
