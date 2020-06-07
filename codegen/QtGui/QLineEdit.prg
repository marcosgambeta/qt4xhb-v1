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

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=void backspace ()
$method=|void|backspace|

$prototype=QCompleter * completer () const
$method=|QCompleter *|completer|

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=void cursorBackward ( bool mark, int steps = 1 )
$method=|void|cursorBackward|bool,int=1

$prototype=void cursorForward ( bool mark, int steps = 1 )
$method=|void|cursorForward|bool,int=1

$prototypeV2=int cursorPosition() const

$prototype=int cursorPositionAt ( const QPoint & pos )
$method=|int|cursorPositionAt|const QPoint &

$prototype=void cursorWordBackward ( bool mark )
$method=|void|cursorWordBackward|bool

$prototype=void cursorWordForward ( bool mark )
$method=|void|cursorWordForward|bool

$prototype=void del ()
$method=|void|del|

$prototype=void deselect ()
$method=|void|deselect|

$prototypeV2=QString displayText() const

$prototypeV2=bool dragEnabled() const

$prototype=EchoMode echoMode () const
$method=|QLineEdit::EchoMode|echoMode|

$prototype=void end ( bool mark )
$method=|void|end|bool

$prototype=void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
$method=|void|getTextMargins|int *,int *,int *,int *

$prototypeV2=bool hasAcceptableInput() const

$prototypeV2=bool hasFrame() const

$prototypeV2=bool hasSelectedText() const

$prototype=void home ( bool mark )
$method=|void|home|bool

$prototypeV2=QString inputMask() const

$prototype=void insert ( const QString & newText )
$method=|void|insert|const QString &

$prototypeV2=bool isModified() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=bool isRedoAvailable() const

$prototypeV2=bool isUndoAvailable() const

$prototypeV2=int maxLength() const

$prototypeV2=QString placeholderText() const

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototypeV2=QString selectedText() const

$prototypeV2=int selectionStart() const

$prototype=void setAlignment ( Qt::Alignment flag )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setCompleter ( QCompleter * c )
$method=|void|setCompleter|QCompleter *

$prototype=void setCursorPosition ( int )
$method=|void|setCursorPosition|int

$prototype=void setDragEnabled ( bool b )
$method=|void|setDragEnabled|bool

$prototype=void setEchoMode ( EchoMode )
$method=|void|setEchoMode|QLineEdit::EchoMode

$prototype=void setFrame ( bool )
$method=|void|setFrame|bool

$prototype=void setInputMask ( const QString & inputMask )
$method=|void|setInputMask|const QString &

$prototype=void setMaxLength ( int )
$method=|void|setMaxLength|int

$prototype=void setModified ( bool )
$method=|void|setModified|bool

$prototype=void setPlaceholderText ( const QString & )
$method=|void|setPlaceholderText|const QString &

$prototype=void setReadOnly ( bool )
$method=|void|setReadOnly|bool

$prototype=void setSelection ( int start, int length )
$method=|void|setSelection|int,int

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

$prototype=void setValidator ( const QValidator * v )
$method=|void|setValidator|const QValidator *

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototypeV2=QString text() const

$prototype=QMargins textMargins () const
$method=|QMargins|textMargins|

$prototype=const QValidator * validator () const
$method=|const QValidator *|validator|

$prototype=virtual bool event ( QEvent * e )
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void copy () const
$method=|void|copy|

$prototype=void cut ()
$method=|void|cut|

$prototype=void paste ()
$method=|void|paste|

$prototype=void redo ()
$method=|void|redo|

$prototype=void selectAll ()
$method=|void|selectAll|

$prototype=void setText ( const QString & )
$method=|void|setText|const QString &

$prototype=void undo ()
$method=|void|undo|

$beginSignals
$signal=|cursorPositionChanged(int,int)
$signal=|editingFinished()
$signal=|returnPressed()
$signal=|selectionChanged()
$signal=|textChanged(QString)
$signal=|textEdited(QString)
$endSignals

#pragma ENDDUMP
