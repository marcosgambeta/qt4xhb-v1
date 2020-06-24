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

$prototype=QTextEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QTextEdit ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

/*
[1]QTextEdit ( QWidget * parent = 0 )
[2]QTextEdit ( const QString & text, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool acceptRichText() const

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QString anchorAt( const QPoint & pos ) const

$prototypeV2=QTextEdit::AutoFormatting autoFormatting() const

$prototypeV2=bool canPaste() const

$prototype=QMenu * createStandardContextMenu ()
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu1|

$prototype=QMenu * createStandardContextMenu ( const QPoint & position )
$internalMethod=|QMenu *|createStandardContextMenu,createStandardContextMenu2|const QPoint &

/*
[1]QMenu * createStandardContextMenu ()
[2]QMenu * createStandardContextMenu ( const QPoint & position )
*/

HB_FUNC_STATIC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  if( ISNUMPAR(0) )
  {
    QTextEdit_createStandardContextMenu1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTextEdit_createStandardContextMenu2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=createStandardContextMenu

$prototypeV2=QTextCharFormat currentCharFormat() const

$prototypeV2=QFont currentFont() const

$prototypeV2=QTextCursor cursorForPosition( const QPoint & pos ) const

$prototype=QRect cursorRect ( const QTextCursor & cursor ) const
$internalMethod=|QRect|cursorRect,cursorRect1|const QTextCursor &

$prototype=QRect cursorRect () const
$internalMethod=|QRect|cursorRect,cursorRect2|

/*
[1]QRect cursorRect ( const QTextCursor & cursor ) const
[2]QRect cursorRect () const
*/

HB_FUNC_STATIC( QTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextEdit_cursorRect2();
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

$prototypeV2=QString fontFamily() const

$prototypeV2=bool fontItalic() const

$prototypeV2=qreal fontPointSize() const

$prototypeV2=bool fontUnderline() const

$prototypeV2=int fontWeight() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=int lineWrapColumnOrWidth() const

$prototypeV2=QTextEdit::LineWrapMode lineWrapMode() const

$prototypeV2=virtual QVariant loadResource( int type, const QUrl & name )

$prototypeV2=void mergeCurrentCharFormat( const QTextCharFormat & modifier )

$prototypeV2=void moveCursor( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )

$prototypeV2=bool overwriteMode() const

$prototypeV2=void print( QPrinter * printer ) const

$prototypeV2=void setAcceptRichText( bool accept )

$prototypeV2=void setAutoFormatting( QTextEdit::AutoFormatting features )

$prototypeV2=void setCurrentCharFormat( const QTextCharFormat & format )

$prototypeV2=void setCursorWidth( int width )

$prototypeV2=void setDocument( QTextDocument * document )

$prototypeV2=void setDocumentTitle( const QString & title )

$prototypeV2=void setLineWrapColumnOrWidth( int w )

$prototypeV2=void setLineWrapMode( QTextEdit::LineWrapMode mode )

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

$prototypeV2=QColor textBackgroundColor() const

$prototypeV2=QColor textColor() const

$prototypeV2=QTextCursor textCursor() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=QString toHtml() const

$prototypeV2=QString toPlainText() const

$prototypeV2=QTextOption::WrapMode wordWrapMode() const

$prototypeV2=void append( const QString & text )

$prototypeV2=void clear()

$prototypeV2=void copy()

$prototypeV2=void cut()

$prototypeV2=void insertHtml( const QString & text )

$prototypeV2=void insertPlainText( const QString & text )

$prototypeV2=void paste()

$prototypeV2=void redo()

$prototypeV2=void scrollToAnchor( const QString & name )

$prototypeV2=void selectAll()

$prototypeV2=void setAlignment( Qt::Alignment a )

$prototypeV2=void setCurrentFont( const QFont & f )

$prototypeV2=void setFontFamily( const QString & fontFamily )

$prototypeV2=void setFontItalic( bool italic )

$prototypeV2=void setFontPointSize( qreal s )

$prototypeV2=void setFontUnderline( bool underline )

$prototypeV2=void setFontWeight( int weight )

$prototypeV2=void setHtml( const QString & text )

$prototypeV2=void setPlainText( const QString & text )

$prototypeV2=void setText( const QString & text )

$prototypeV2=void setTextBackgroundColor( const QColor & c )

$prototypeV2=void setTextColor( const QColor & c )

$prototypeV2=void undo()

$prototypeV2=void zoomIn( int range = 1 )

$prototypeV2=void zoomOut( int range = 1 )

$beginSignals
$signal=|copyAvailable(bool)
$signal=|currentCharFormatChanged(QTextCharFormat)
$signal=|cursorPositionChanged()
$signal=|redoAvailable(bool)
$signal=|selectionChanged()
$signal=|textChanged()
$signal=|undoAvailable(bool)
$endSignals

#pragma ENDDUMP
