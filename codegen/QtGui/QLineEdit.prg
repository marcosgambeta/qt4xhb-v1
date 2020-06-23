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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtGui/QCompleter>
#include <QtGui/QMenu>
#include <QtGui/QValidator>

$prototype=QLineEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QLineEdit ( const QString & contents, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

/*
[1]QLineEdit ( QWidget * parent = 0 )
[2]QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QLINEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QLineEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QLineEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=void backspace()

$prototypeV2=QCompleter * completer() const

$prototypeV2=QMenu * createStandardContextMenu()

$prototype=void cursorBackward ( bool mark, int steps = 1 )
$method=|void|cursorBackward|bool,int=1

$prototype=void cursorForward ( bool mark, int steps = 1 )
$method=|void|cursorForward|bool,int=1

$prototypeV2=int cursorPosition() const

$prototypeV2=int cursorPositionAt( const QPoint & pos )

$prototypeV2=void cursorWordBackward( bool mark )

$prototypeV2=void cursorWordForward( bool mark )

$prototypeV2=void del()

$prototypeV2=void deselect()

$prototypeV2=QString displayText() const

$prototypeV2=bool dragEnabled() const

$prototypeV2=QLineEdit::EchoMode echoMode() const

$prototypeV2=void end( bool mark )

$prototypeV2=void getTextMargins( int * left, int * top, int * right, int * bottom ) const

$prototypeV2=bool hasAcceptableInput() const

$prototypeV2=bool hasFrame() const

$prototypeV2=bool hasSelectedText() const

$prototypeV2=void home( bool mark )

$prototypeV2=QString inputMask() const

$prototypeV2=void insert( const QString & newText )

$prototypeV2=bool isModified() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isRedoAvailable() const

$prototypeV2=bool isUndoAvailable() const

$prototypeV2=int maxLength() const

$prototypeV2=QString placeholderText() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=QString selectedText() const

$prototypeV2=int selectionStart() const

$prototypeV2=void setAlignment( Qt::Alignment flag )

$prototypeV2=void setCompleter( QCompleter * c )

$prototypeV2=void setCursorPosition( int )

$prototypeV2=void setDragEnabled( bool b )

$prototypeV2=void setEchoMode( QLineEdit::EchoMode )

$prototypeV2=void setFrame( bool )

$prototypeV2=void setInputMask( const QString & inputMask )

$prototypeV2=void setMaxLength( int )

$prototypeV2=void setModified( bool )

$prototypeV2=void setPlaceholderText( const QString & )

$prototypeV2=void setReadOnly( bool )

$prototypeV2=void setSelection( int start, int length )

$prototype=void setTextMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setTextMargins,setTextMargins1|int,int,int,int

$prototype=void setTextMargins ( const QMargins & margins )
$internalMethod=|void|setTextMargins,setTextMargins2|const QMargins &

/*
[1]void setTextMargins ( int left, int top, int right, int bottom )
[2]void setTextMargins ( const QMargins & margins )
*/

HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLineEdit_setTextMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLineEdit_setTextMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setTextMargins

$prototypeV2=void setValidator( const QValidator * v )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=QString text() const

$prototypeV2=QMargins textMargins() const

$prototypeV2=const QValidator * validator() const

$prototypeV2=virtual bool event( QEvent * e )

$prototypeV2=virtual QVariant inputMethodQuery( Qt::InputMethodQuery property ) const

$prototypeV2=void copy() const

$prototypeV2=void cut()

$prototypeV2=void paste()

$prototypeV2=void redo()

$prototypeV2=void selectAll()

$prototypeV2=void setText( const QString & )

$prototypeV2=void undo()

$beginSignals
$signal=|cursorPositionChanged(int,int)
$signal=|editingFinished()
$signal=|returnPressed()
$signal=|selectionChanged()
$signal=|textChanged(QString)
$signal=|textEdited(QString)
$endSignals

#pragma ENDDUMP
