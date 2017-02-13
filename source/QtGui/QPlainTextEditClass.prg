/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMENU
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
REQUEST QRECT
REQUEST QTEXTDOCUMENT
REQUEST QVARIANT

CLASS QPlainTextEdit INHERIT QAbstractScrollArea

   DATA class_id INIT Class_Id_QPlainTextEdit
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QPlainTextEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QPlainTextEdit>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QPlainTextEdit ( QWidget * parent = 0 )
*/
HB_FUNC( QPLAINTEXTEDIT_NEW1 )
{
  QPlainTextEdit * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPlainTextEdit ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlainTextEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QPlainTextEdit ( const QString & text, QWidget * parent = 0 )
*/
HB_FUNC( QPLAINTEXTEDIT_NEW2 )
{
  QPlainTextEdit * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPlainTextEdit ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlainTextEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QPlainTextEdit ( QWidget * parent = 0 )
//[2]QPlainTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC( QPLAINTEXTEDIT_NEW )
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

HB_FUNC( QPLAINTEXTEDIT_DELETE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString anchorAt ( const QPoint & pos ) const
*/
HB_FUNC( QPLAINTEXTEDIT_ANCHORAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->anchorAt ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool backgroundVisible () const
*/
HB_FUNC( QPLAINTEXTEDIT_BACKGROUNDVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->backgroundVisible (  );
    hb_retl( b );
  }
}


/*
int blockCount () const
*/
HB_FUNC( QPLAINTEXTEDIT_BLOCKCOUNT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->blockCount (  );
    hb_retni( i );
  }
}


/*
bool canPaste () const
*/
HB_FUNC( QPLAINTEXTEDIT_CANPASTE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->canPaste (  );
    hb_retl( b );
  }
}


/*
bool centerOnScroll () const
*/
HB_FUNC( QPLAINTEXTEDIT_CENTERONSCROLL )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->centerOnScroll (  );
    hb_retl( b );
  }
}


/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC( QPLAINTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu (  );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );  }
}


/*
QTextCharFormat currentCharFormat () const
*/
HB_FUNC( QPLAINTEXTEDIT_CURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->currentCharFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
QTextCursor cursorForPosition ( const QPoint & pos ) const
*/
HB_FUNC( QPLAINTEXTEDIT_CURSORFORPOSITION )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCursor * ptr = new QTextCursor( obj->cursorForPosition ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );  }
}


/*
QRect cursorRect ( const QTextCursor & cursor ) const
*/
HB_FUNC( QPLAINTEXTEDIT_CURSORRECT1 )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->cursorRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
QRect cursorRect () const
*/
HB_FUNC( QPLAINTEXTEDIT_CURSORRECT2 )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->cursorRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


//[1]QRect cursorRect ( const QTextCursor & cursor ) const
//[2]QRect cursorRect () const

HB_FUNC( QPLAINTEXTEDIT_CURSORRECT )
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
HB_FUNC( QPLAINTEXTEDIT_CURSORWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->cursorWidth (  );
    hb_retni( i );
  }
}


/*
QTextDocument * document () const
*/
HB_FUNC( QPLAINTEXTEDIT_DOCUMENT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );  }
}


/*
QString documentTitle () const
*/
HB_FUNC( QPLAINTEXTEDIT_DOCUMENTTITLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->documentTitle (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void ensureCursorVisible ()
*/
HB_FUNC( QPLAINTEXTEDIT_ENSURECURSORVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureCursorVisible (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
*/
HB_FUNC( QPLAINTEXTEDIT_FIND )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    bool b = obj->find ( par1,  (QTextDocument::FindFlags) par2 );
    hb_retl( b );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC( QPLAINTEXTEDIT_ISREADONLY )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadOnly (  );
    hb_retl( b );
  }
}


/*
bool isUndoRedoEnabled () const
*/
HB_FUNC( QPLAINTEXTEDIT_ISUNDOREDOENABLED )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isUndoRedoEnabled (  );
    hb_retl( b );
  }
}


/*
LineWrapMode lineWrapMode () const
*/
HB_FUNC( QPLAINTEXTEDIT_LINEWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->lineWrapMode (  );
    hb_retni( i );
  }
}


/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC( QPLAINTEXTEDIT_LOADRESOURCE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QUrl * par2 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->loadResource ( par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
int maximumBlockCount () const
*/
HB_FUNC( QPLAINTEXTEDIT_MAXIMUMBLOCKCOUNT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->maximumBlockCount (  );
    hb_retni( i );
  }
}


/*
void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC( QPLAINTEXTEDIT_MERGECURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->mergeCurrentCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
*/
HB_FUNC( QPLAINTEXTEDIT_MOVECURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    obj->moveCursor (  (QTextCursor::MoveOperation) par1,  (QTextCursor::MoveMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool overwriteMode () const
*/
HB_FUNC( QPLAINTEXTEDIT_OVERWRITEMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->overwriteMode (  );
    hb_retl( b );
  }
}


/*
void print ( QPrinter * printer ) const
*/
HB_FUNC( QPLAINTEXTEDIT_PRINT )
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
HB_FUNC( QPLAINTEXTEDIT_SETBACKGROUNDVISIBLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setBackgroundVisible ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCenterOnScroll ( bool enabled )
*/
HB_FUNC( QPLAINTEXTEDIT_SETCENTERONSCROLL )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setCenterOnScroll ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC( QPLAINTEXTEDIT_SETCURRENTCHARFORMAT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCurrentCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursorWidth ( int width )
*/
HB_FUNC( QPLAINTEXTEDIT_SETCURSORWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCursorWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocument ( QTextDocument * document )
*/
HB_FUNC( QPLAINTEXTEDIT_SETDOCUMENT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * par1 = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDocument ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocumentTitle ( const QString & title )
*/
HB_FUNC( QPLAINTEXTEDIT_SETDOCUMENTTITLE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDocumentTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setLineWrapMode ( LineWrapMode mode )
*/
HB_FUNC( QPLAINTEXTEDIT_SETLINEWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLineWrapMode (  (QPlainTextEdit::LineWrapMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumBlockCount ( int maximum )
*/
HB_FUNC( QPLAINTEXTEDIT_SETMAXIMUMBLOCKCOUNT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaximumBlockCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverwriteMode ( bool overwrite )
*/
HB_FUNC( QPLAINTEXTEDIT_SETOVERWRITEMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setOverwriteMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadOnly ( bool ro )
*/
HB_FUNC( QPLAINTEXTEDIT_SETREADONLY )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setReadOnly ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabChangesFocus ( bool b )
*/
HB_FUNC( QPLAINTEXTEDIT_SETTABCHANGESFOCUS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setTabChangesFocus ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTabStopWidth ( int width )
*/
HB_FUNC( QPLAINTEXTEDIT_SETTABSTOPWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTabStopWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC( QPLAINTEXTEDIT_SETTEXTCURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTextCursor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC( QPLAINTEXTEDIT_SETTEXTINTERACTIONFLAGS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextInteractionFlags (  (Qt::TextInteractionFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUndoRedoEnabled ( bool enable )
*/
HB_FUNC( QPLAINTEXTEDIT_SETUNDOREDOENABLED )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setUndoRedoEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrapMode ( QTextOption::WrapMode policy )
*/
HB_FUNC( QPLAINTEXTEDIT_SETWORDWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWordWrapMode (  (QTextOption::WrapMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tabChangesFocus () const
*/
HB_FUNC( QPLAINTEXTEDIT_TABCHANGESFOCUS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tabChangesFocus (  );
    hb_retl( b );
  }
}


/*
int tabStopWidth () const
*/
HB_FUNC( QPLAINTEXTEDIT_TABSTOPWIDTH )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->tabStopWidth (  );
    hb_retni( i );
  }
}


/*
QTextCursor textCursor () const
*/
HB_FUNC( QPLAINTEXTEDIT_TEXTCURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->textCursor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );  }
}


/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC( QPLAINTEXTEDIT_TEXTINTERACTIONFLAGS )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textInteractionFlags (  );
    hb_retni( i );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC( QPLAINTEXTEDIT_TOPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toPlainText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QTextOption::WrapMode wordWrapMode () const
*/
HB_FUNC( QPLAINTEXTEDIT_WORDWRAPMODE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->wordWrapMode (  );
    hb_retni( i );
  }
}


/*
void appendHtml ( const QString & html )
*/
HB_FUNC( QPLAINTEXTEDIT_APPENDHTML )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->appendHtml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendPlainText ( const QString & text )
*/
HB_FUNC( QPLAINTEXTEDIT_APPENDPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->appendPlainText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void centerCursor ()
*/
HB_FUNC( QPLAINTEXTEDIT_CENTERCURSOR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->centerCursor (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC( QPLAINTEXTEDIT_CLEAR )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void copy ()
*/
HB_FUNC( QPLAINTEXTEDIT_COPY )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->copy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cut ()
*/
HB_FUNC( QPLAINTEXTEDIT_CUT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cut (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertPlainText ( const QString & text )
*/
HB_FUNC( QPLAINTEXTEDIT_INSERTPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insertPlainText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void paste ()
*/
HB_FUNC( QPLAINTEXTEDIT_PASTE )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->paste (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void redo ()
*/
HB_FUNC( QPLAINTEXTEDIT_REDO )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectAll ()
*/
HB_FUNC( QPLAINTEXTEDIT_SELECTALL )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlainText ( const QString & text )
*/
HB_FUNC( QPLAINTEXTEDIT_SETPLAINTEXT )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPlainText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo ()
*/
HB_FUNC( QPLAINTEXTEDIT_UNDO )
{
  QPlainTextEdit * obj = (QPlainTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
