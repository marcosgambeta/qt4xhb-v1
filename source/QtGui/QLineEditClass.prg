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

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLineEdit>

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

#include <QVariant>

/*
QLineEdit ( QWidget * parent = 0 )
*/
HB_FUNC( QLINEEDIT_NEW1 )
{
  QLineEdit * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLineEdit ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLineEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/
HB_FUNC( QLINEEDIT_NEW2 )
{
  QLineEdit * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLineEdit ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLineEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QLineEdit ( QWidget * parent = 0 )
//[2]QLineEdit ( const QString & contents, QWidget * parent = 0 )

HB_FUNC( QLINEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QLINEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLINEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QLINEEDIT_DELETE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::Alignment alignment () const
*/
HB_FUNC( QLINEEDIT_ALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->alignment (  );
    hb_retni( i );
  }
}


/*
void backspace ()
*/
HB_FUNC( QLINEEDIT_BACKSPACE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->backspace (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QCompleter * completer () const
*/
HB_FUNC( QLINEEDIT_COMPLETER )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCompleter * ptr = obj->completer (  );
    _qt4xhb_createReturnClass ( ptr, "QCOMPLETER" );  }
}


/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC( QLINEEDIT_CREATESTANDARDCONTEXTMENU )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu (  );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );  }
}


/*
void cursorBackward ( bool mark, int steps = 1 )
*/
HB_FUNC( QLINEEDIT_CURSORBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    int par2 = ISNIL(2)? 1 : hb_parni(2);
    obj->cursorBackward ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cursorForward ( bool mark, int steps = 1 )
*/
HB_FUNC( QLINEEDIT_CURSORFORWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    int par2 = ISNIL(2)? 1 : hb_parni(2);
    obj->cursorForward ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int cursorPosition () const
*/
HB_FUNC( QLINEEDIT_CURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->cursorPosition (  );
    hb_retni( i );
  }
}


/*
int cursorPositionAt ( const QPoint & pos )
*/
HB_FUNC( QLINEEDIT_CURSORPOSITIONAT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->cursorPositionAt ( *par1 );
    hb_retni( i );
  }
}


/*
void cursorWordBackward ( bool mark )
*/
HB_FUNC( QLINEEDIT_CURSORWORDBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->cursorWordBackward ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cursorWordForward ( bool mark )
*/
HB_FUNC( QLINEEDIT_CURSORWORDFORWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->cursorWordForward ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void del ()
*/
HB_FUNC( QLINEEDIT_DEL )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->del (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void deselect ()
*/
HB_FUNC( QLINEEDIT_DESELECT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->deselect (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString displayText () const
*/
HB_FUNC( QLINEEDIT_DISPLAYTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->displayText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool dragEnabled () const
*/
HB_FUNC( QLINEEDIT_DRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->dragEnabled (  );
    hb_retl( b );
  }
}


/*
EchoMode echoMode () const
*/
HB_FUNC( QLINEEDIT_ECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->echoMode (  );
    hb_retni( i );
  }
}


/*
void end ( bool mark )
*/
HB_FUNC( QLINEEDIT_END )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->end ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC( QLINEEDIT_GETTEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getTextMargins ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasAcceptableInput () const
*/
HB_FUNC( QLINEEDIT_HASACCEPTABLEINPUT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasAcceptableInput (  );
    hb_retl( b );
  }
}


/*
bool hasFrame () const
*/
HB_FUNC( QLINEEDIT_HASFRAME )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasFrame (  );
    hb_retl( b );
  }
}


/*
bool hasSelectedText () const
*/
HB_FUNC( QLINEEDIT_HASSELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasSelectedText (  );
    hb_retl( b );
  }
}


/*
void home ( bool mark )
*/
HB_FUNC( QLINEEDIT_HOME )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->home ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString inputMask () const
*/
HB_FUNC( QLINEEDIT_INPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->inputMask (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void insert ( const QString & newText )
*/
HB_FUNC( QLINEEDIT_INSERT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insert ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isModified () const
*/
HB_FUNC( QLINEEDIT_ISMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isModified (  );
    hb_retl( b );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC( QLINEEDIT_ISREADONLY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadOnly (  );
    hb_retl( b );
  }
}


/*
bool isRedoAvailable () const
*/
HB_FUNC( QLINEEDIT_ISREDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRedoAvailable (  );
    hb_retl( b );
  }
}


/*
bool isUndoAvailable () const
*/
HB_FUNC( QLINEEDIT_ISUNDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isUndoAvailable (  );
    hb_retl( b );
  }
}


/*
int maxLength () const
*/
HB_FUNC( QLINEEDIT_MAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->maxLength (  );
    hb_retni( i );
  }
}


/*
QString placeholderText () const
*/
HB_FUNC( QLINEEDIT_PLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->placeholderText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC( QLINEEDIT_MINIMUMSIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
QString selectedText () const
*/
HB_FUNC( QLINEEDIT_SELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->selectedText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int selectionStart () const
*/
HB_FUNC( QLINEEDIT_SELECTIONSTART )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->selectionStart (  );
    hb_retni( i );
  }
}


/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC( QLINEEDIT_SETALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCompleter ( QCompleter * c )
*/
HB_FUNC( QLINEEDIT_SETCOMPLETER )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCompleter * par1 = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCompleter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursorPosition ( int )
*/
HB_FUNC( QLINEEDIT_SETCURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCursorPosition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDragEnabled ( bool b )
*/
HB_FUNC( QLINEEDIT_SETDRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDragEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEchoMode ( EchoMode )
*/
HB_FUNC( QLINEEDIT_SETECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEchoMode (  (QLineEdit::EchoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrame ( bool )
*/
HB_FUNC( QLINEEDIT_SETFRAME )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFrame ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInputMask ( const QString & inputMask )
*/
HB_FUNC( QLINEEDIT_SETINPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setInputMask ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaxLength ( int )
*/
HB_FUNC( QLINEEDIT_SETMAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaxLength ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModified ( bool )
*/
HB_FUNC( QLINEEDIT_SETMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setModified ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlaceholderText ( const QString & )
*/
HB_FUNC( QLINEEDIT_SETPLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPlaceholderText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadOnly ( bool )
*/
HB_FUNC( QLINEEDIT_SETREADONLY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setReadOnly ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSelection ( int start, int length )
*/
HB_FUNC( QLINEEDIT_SETSELECTION )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setSelection ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC( QLINEEDIT_SETTEXTMARGINS1 )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->setTextMargins ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextMargins ( const QMargins & margins )
*/
HB_FUNC( QLINEEDIT_SETTEXTMARGINS2 )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMargins * par1 = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTextMargins ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setTextMargins ( int left, int top, int right, int bottom )
//[2]void setTextMargins ( const QMargins & margins )

HB_FUNC( QLINEEDIT_SETTEXTMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINEEDIT_SETTEXTMARGINS1 );
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    HB_FUNC_EXEC( QLINEEDIT_SETTEXTMARGINS2 );
  }
}

/*
void setValidator ( const QValidator * v )
*/
HB_FUNC( QLINEEDIT_SETVALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QValidator * par1 = (const QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValidator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC( QLINEEDIT_SIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
QString text () const
*/
HB_FUNC( QLINEEDIT_TEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QMargins textMargins () const
*/
HB_FUNC( QLINEEDIT_TEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->textMargins (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMARGINS", true );  }
}


/*
const QValidator * validator () const
*/
HB_FUNC( QLINEEDIT_VALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QValidator * ptr = obj->validator (  );
    _qt4xhb_createReturnClass ( ptr, "QVALIDATOR" );  }
}


/*
virtual bool event ( QEvent * e )
*/
HB_FUNC( QLINEEDIT_EVENT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->event ( par1 );
    hb_retl( b );
  }
}


/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
HB_FUNC( QLINEEDIT_INPUTMETHODQUERY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}




/*
void copy () const
*/
HB_FUNC( QLINEEDIT_COPY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->copy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cut ()
*/
HB_FUNC( QLINEEDIT_CUT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cut (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void paste ()
*/
HB_FUNC( QLINEEDIT_PASTE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->paste (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void redo ()
*/
HB_FUNC( QLINEEDIT_REDO )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectAll ()
*/
HB_FUNC( QLINEEDIT_SELECTALL )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & )
*/
HB_FUNC( QLINEEDIT_SETTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo ()
*/
HB_FUNC( QLINEEDIT_UNDO )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
