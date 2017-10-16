$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
REQUEST QRECT
REQUEST QTEXTDOCUMENT
REQUEST QVARIANT
#endif

CLASS QPlainTextEdit INHERIT QAbstractScrollArea

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD anchorAt
   METHOD backgroundVisible
   METHOD blockCount
   METHOD canPaste
   METHOD centerOnScroll
   METHOD createStandardContextMenu
   METHOD currentCharFormat
   METHOD cursorForPosition
   METHOD cursorRect1
   METHOD cursorRect2
   METHOD cursorRect
   METHOD cursorWidth
   METHOD document
   METHOD documentTitle
   METHOD ensureCursorVisible
   METHOD find
   METHOD isReadOnly
   METHOD isUndoRedoEnabled
   METHOD lineWrapMode
   METHOD loadResource
   METHOD maximumBlockCount
   METHOD mergeCurrentCharFormat
   METHOD moveCursor
   METHOD overwriteMode
   METHOD print
   METHOD setBackgroundVisible
   METHOD setCenterOnScroll
   METHOD setCurrentCharFormat
   METHOD setCursorWidth
   METHOD setDocument
   METHOD setDocumentTitle
   METHOD setLineWrapMode
   METHOD setMaximumBlockCount
   METHOD setOverwriteMode
   METHOD setReadOnly
   METHOD setTabChangesFocus
   METHOD setTabStopWidth
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setUndoRedoEnabled
   METHOD setWordWrapMode
   METHOD tabChangesFocus
   METHOD tabStopWidth
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD toPlainText
   METHOD wordWrapMode
   METHOD appendHtml
   METHOD appendPlainText
   METHOD centerCursor
   METHOD clear
   METHOD copy
   METHOD cut
   METHOD insertPlainText
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD setPlainText
   METHOD undo

   METHOD onBlockCountChanged
   METHOD onCopyAvailable
   METHOD onCursorPositionChanged
   METHOD onModificationChanged
   METHOD onRedoAvailable
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onUndoAvailable
   METHOD onUpdateRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPlainTextEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPlainTextEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW1 )
{
  QPlainTextEdit * o = new QPlainTextEdit ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW2 )
{
  QPlainTextEdit * o = new QPlainTextEdit ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QPlainTextEdit ( QWidget * parent = 0 )
//[2]QPlainTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPLAINTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPLAINTEXTEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPLAINTEXTEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString anchorAt ( const QPoint & pos ) const
*/
$method=|QString|anchorAt|const QPoint &

/*
bool backgroundVisible () const
*/
$method=|bool|backgroundVisible|

/*
int blockCount () const
*/
$method=|int|blockCount|

/*
bool canPaste () const
*/
$method=|bool|canPaste|

/*
bool centerOnScroll () const
*/
$method=|bool|centerOnScroll|

/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu ();
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QTextCharFormat currentCharFormat () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->currentCharFormat () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}

/*
QTextCursor cursorForPosition ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORFORPOSITION )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->cursorForPosition ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
QRect cursorRect ( const QTextCursor & cursor ) const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT1 )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->cursorRect ( *PQTEXTCURSOR(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect cursorRect () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT2 )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->cursorRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]QRect cursorRect ( const QTextCursor & cursor ) const
//[2]QRect cursorRect () const

HB_FUNC_STATIC( QPLAINTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QPLAINTEXTEDIT_CURSORRECT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPLAINTEXTEDIT_CURSORRECT2 );
  }
}

/*
int cursorWidth () const
*/
$method=|int|cursorWidth|

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_DOCUMENT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
QString documentTitle () const
*/
$method=|QString|documentTitle|

/*
void ensureCursorVisible ()
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_ENSURECURSORVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureCursorVisible ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
*/
$method=|bool|find|const QString &,QTextDocument::FindFlags=0

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
bool isUndoRedoEnabled () const
*/
$method=|bool|isUndoRedoEnabled|

/*
LineWrapMode lineWrapMode () const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_LINEWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->lineWrapMode () );
  }
}

/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_LOADRESOURCE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->loadResource ( PINT(1), *PQURL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
int maximumBlockCount () const
*/
$method=|int|maximumBlockCount|

/*
void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_MERGECURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->mergeCurrentCharFormat ( *PQTEXTCHARFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_MOVECURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    obj->moveCursor ( (QTextCursor::MoveOperation) par1, (QTextCursor::MoveMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool overwriteMode () const
*/
$method=|bool|overwriteMode|

/*
void print ( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QPLAINTEXTEDIT_PRINT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * par1 = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackgroundVisible ( bool visible )
*/
$method=|void|setBackgroundVisible|bool

/*
void setCenterOnScroll ( bool enabled )
*/
$method=|void|setCenterOnScroll|bool

/*
void setCurrentCharFormat ( const QTextCharFormat & format )
*/
$method=|void|setCurrentCharFormat|const QTextCharFormat &

/*
void setCursorWidth ( int width )
*/
$method=|void|setCursorWidth|int

/*
void setDocument ( QTextDocument * document )
*/
$method=|void|setDocument|QTextDocument *

/*
void setDocumentTitle ( const QString & title )
*/
$method=|void|setDocumentTitle|const QString &

/*
void setLineWrapMode ( LineWrapMode mode )
*/
$method=|void|setLineWrapMode|QPlainTextEdit::LineWrapMode

/*
void setMaximumBlockCount ( int maximum )
*/
$method=|void|setMaximumBlockCount|int

/*
void setOverwriteMode ( bool overwrite )
*/
$method=|void|setOverwriteMode|bool

/*
void setReadOnly ( bool ro )
*/
$method=|void|setReadOnly|bool

/*
void setTabChangesFocus ( bool b )
*/
$method=|void|setTabChangesFocus|bool

/*
void setTabStopWidth ( int width )
*/
$method=|void|setTabStopWidth|int

/*
void setTextCursor ( const QTextCursor & cursor )
*/
$method=|void|setTextCursor|const QTextCursor &

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

/*
void setUndoRedoEnabled ( bool enable )
*/
$method=|void|setUndoRedoEnabled|bool

/*
void setWordWrapMode ( QTextOption::WrapMode policy )
*/
$method=|void|setWordWrapMode|QTextOption::WrapMode

/*
bool tabChangesFocus () const
*/
$method=|bool|tabChangesFocus|

/*
int tabStopWidth () const
*/
$method=|int|tabStopWidth|

/*
QTextCursor textCursor () const
*/
$method=|QTextCursor|textCursor|

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
QTextOption::WrapMode wordWrapMode () const
*/
$method=|QTextOption::WrapMode|wordWrapMode|

/*
void appendHtml ( const QString & html )
*/
$method=|void|appendHtml|const QString &

/*
void appendPlainText ( const QString & text )
*/
$method=|void|appendPlainText|const QString &

/*
void centerCursor ()
*/
$method=|void|centerCursor|

/*
void clear ()
*/
$method=|void|clear|

/*
void copy ()
*/
$method=|void|copy|

/*
void cut ()
*/
$method=|void|cut|

/*
void insertPlainText ( const QString & text )
*/
$method=|void|insertPlainText|const QString &

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
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void undo ()
*/
$method=|void|undo|

#pragma ENDDUMP
