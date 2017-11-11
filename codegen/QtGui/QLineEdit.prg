$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOMPLETER
REQUEST QMENU
REQUEST QSIZE
REQUEST QMARGINS
REQUEST QVALIDATOR
REQUEST QVARIANT
#endif

CLASS QLineEdit INHERIT QWidget

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

$destructor

#pragma BEGINDUMP

#include <QLineEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QLineEdit ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QLineEdit ( QWidget * parent = 0 )
//[2]QLineEdit ( const QString & contents, QWidget * parent = 0 )

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

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
void backspace ()
*/
$method=|void|backspace|

/*
QCompleter * completer () const
*/
$method=|QCompleter *|completer|

/*
QMenu * createStandardContextMenu ()
*/
$method=|QMenu *|createStandardContextMenu|

/*
void cursorBackward ( bool mark, int steps = 1 )
*/
$method=|void|cursorBackward|bool,int=1

/*
void cursorForward ( bool mark, int steps = 1 )
*/
$method=|void|cursorForward|bool,int=1

/*
int cursorPosition () const
*/
$method=|int|cursorPosition|

/*
int cursorPositionAt ( const QPoint & pos )
*/
$method=|int|cursorPositionAt|const QPoint &

/*
void cursorWordBackward ( bool mark )
*/
$method=|void|cursorWordBackward|bool

/*
void cursorWordForward ( bool mark )
*/
$method=|void|cursorWordForward|bool

/*
void del ()
*/
$method=|void|del|

/*
void deselect ()
*/
$method=|void|deselect|

/*
QString displayText () const
*/
$method=|QString|displayText|

/*
bool dragEnabled () const
*/
$method=|bool|dragEnabled|

/*
EchoMode echoMode () const
*/
$method=|QLineEdit::EchoMode|echoMode|

/*
void end ( bool mark )
*/
$method=|void|end|bool

/*
void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
*/
$method=|void|getTextMargins|int *,int *,int *,int *

/*
bool hasAcceptableInput () const
*/
$method=|bool|hasAcceptableInput|

/*
bool hasFrame () const
*/
$method=|bool|hasFrame|

/*
bool hasSelectedText () const
*/
$method=|bool|hasSelectedText|

/*
void home ( bool mark )
*/
$method=|void|home|bool

/*
QString inputMask () const
*/
$method=|QString|inputMask|

/*
void insert ( const QString & newText )
*/
$method=|void|insert|const QString &

/*
bool isModified () const
*/
$method=|bool|isModified|

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
bool isRedoAvailable () const
*/
$method=|bool|isRedoAvailable|

/*
bool isUndoAvailable () const
*/
$method=|bool|isUndoAvailable|

/*
int maxLength () const
*/
$method=|int|maxLength|

/*
QString placeholderText () const
*/
$method=|QString|placeholderText|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
int selectionStart () const
*/
$method=|int|selectionStart|

/*
void setAlignment ( Qt::Alignment flag )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setCompleter ( QCompleter * c )
*/
$method=|void|setCompleter|QCompleter *

/*
void setCursorPosition ( int )
*/
$method=|void|setCursorPosition|int

/*
void setDragEnabled ( bool b )
*/
$method=|void|setDragEnabled|bool

/*
void setEchoMode ( EchoMode )
*/
$method=|void|setEchoMode|QLineEdit::EchoMode

/*
void setFrame ( bool )
*/
$method=|void|setFrame|bool

/*
void setInputMask ( const QString & inputMask )
*/
$method=|void|setInputMask|const QString &

/*
void setMaxLength ( int )
*/
$method=|void|setMaxLength|int

/*
void setModified ( bool )
*/
$method=|void|setModified|bool

/*
void setPlaceholderText ( const QString & )
*/
$method=|void|setPlaceholderText|const QString &

/*
void setReadOnly ( bool )
*/
$method=|void|setReadOnly|bool

/*
void setSelection ( int start, int length )
*/
$method=|void|setSelection|int,int

/*
void setTextMargins ( int left, int top, int right, int bottom )
*/
$internalMethod=|void|setTextMargins,setTextMargins1|int,int,int,int

/*
void setTextMargins ( const QMargins & margins )
*/
$internalMethod=|void|setTextMargins,setTextMargins2|const QMargins &

//[1]void setTextMargins ( int left, int top, int right, int bottom )
//[2]void setTextMargins ( const QMargins & margins )

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

/*
void setValidator ( const QValidator * v )
*/
$method=|void|setValidator|const QValidator *

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
QString text () const
*/
$method=|QString|text|

/*
QMargins textMargins () const
*/
$method=|QMargins|textMargins|

/*
const QValidator * validator () const
*/
$method=|const QValidator *|validator|

/*
virtual bool event ( QEvent * e )
*/
$virtualMethod=|bool|event|QEvent *

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void copy () const
*/
$method=|void|copy|

/*
void cut ()
*/
$method=|void|cut|

/*
void paste ()
*/
$method=|void|paste|

/*
void redo ()
*/
$method=|void|redo|

/*
void selectAll ()
*/
$method=|void|selectAll|

/*
void setText ( const QString & )
*/
$method=|void|setText|const QString &

/*
void undo ()
*/
$method=|void|undo|

#pragma ENDDUMP
