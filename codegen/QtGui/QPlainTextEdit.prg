%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QMenu>

$prototype=QPlainTextEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

/*
[1]QPlainTextEdit ( QWidget * parent = 0 )
[2]QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPlainTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPlainTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString anchorAt( const QPoint & pos ) const

$prototypeV2=bool backgroundVisible() const

$prototypeV2=int blockCount() const

$prototypeV2=bool canPaste() const

$prototypeV2=bool centerOnScroll() const

$prototypeV2=QMenu * createStandardContextMenu()

$prototypeV2=QTextCharFormat currentCharFormat() const

$prototypeV2=QTextCursor cursorForPosition( const QPoint & pos ) const

$prototype=QRect cursorRect ( const QTextCursor & cursor ) const
$internalMethod=|QRect|cursorRect,cursorRect1|const QTextCursor &

$prototype=QRect cursorRect () const
$internalMethod=|QRect|cursorRect,cursorRect2|

/*
[1]QRect cursorRect ( const QTextCursor & cursor ) const
[2]QRect cursorRect () const
*/

HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QPlainTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QPlainTextEdit_cursorRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cursorRect

$prototypeV2=int cursorWidth() const

$prototypeV2=QTextDocument * document() const

$prototypeV2=QString documentTitle() const

$prototypeV2=void ensureCursorVisible()

$prototypeV2=bool find( const QString & exp, QTextDocument::FindFlags options = 0 )

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=QPlainTextEdit::LineWrapMode lineWrapMode() const

$prototypeV2=virtual QVariant loadResource( int type, const QUrl & name )

$prototypeV2=int maximumBlockCount() const

$prototypeV2=void mergeCurrentCharFormat( const QTextCharFormat & modifier )

$prototypeV2=void moveCursor( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )

$prototypeV2=bool overwriteMode() const

$prototypeV2=void print( QPrinter * printer ) const

$prototypeV2=void setBackgroundVisible( bool visible )

$prototypeV2=void setCenterOnScroll( bool enabled )

$prototypeV2=void setCurrentCharFormat( const QTextCharFormat & format )

$prototypeV2=void setCursorWidth( int width )

$prototypeV2=void setDocument( QTextDocument * document )

$prototypeV2=void setDocumentTitle( const QString & title )

$prototypeV2=void setLineWrapMode( QPlainTextEdit::LineWrapMode mode )

$prototypeV2=void setMaximumBlockCount( int maximum )

$prototypeV2=void setOverwriteMode( bool overwrite )

$prototypeV2=void setReadOnly( bool ro )

$prototypeV2=void setTabChangesFocus( bool b )

$prototypeV2=void setTabStopWidth( int width )

$prototypeV2=void setTextCursor( const QTextCursor & cursor )

$prototypeV2=void setTextInteractionFlags( Qt::TextInteractionFlags flags )

$prototypeV2=void setUndoRedoEnabled( bool enable )

$prototypeV2=void setWordWrapMode( QTextOption::WrapMode policy )

$prototypeV2=bool tabChangesFocus() const

$prototypeV2=int tabStopWidth() const

$prototypeV2=QTextCursor textCursor() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=QString toPlainText() const

$prototypeV2=QTextOption::WrapMode wordWrapMode() const

$prototypeV2=void appendHtml( const QString & html )

$prototypeV2=void appendPlainText( const QString & text )

$prototypeV2=void centerCursor()

$prototypeV2=void clear()

$prototypeV2=void copy()

$prototypeV2=void cut()

$prototypeV2=void insertPlainText( const QString & text )

$prototypeV2=void paste()

$prototypeV2=void redo()

$prototypeV2=void selectAll()

$prototypeV2=void setPlainText( const QString & text )

$prototypeV2=void undo()

$beginSignals
$signal=|blockCountChanged(int)
$signal=|copyAvailable(bool)
$signal=|cursorPositionChanged()
$signal=|modificationChanged(bool)
$signal=|redoAvailable(bool)
$signal=|selectionChanged()
$signal=|textChanged()
$signal=|undoAvailable(bool)
$signal=|updateRequest(QRect,int)
$endSignals

#pragma ENDDUMP
