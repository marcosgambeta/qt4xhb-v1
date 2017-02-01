/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextEdit>

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
QTextEdit ( QWidget * parent = 0 )
*/
HB_FUNC( QTEXTEDIT_NEW1 )
{
  QTextEdit * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextEdit ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextEdit ( const QString & text, QWidget * parent = 0 )
*/
HB_FUNC( QTEXTEDIT_NEW2 )
{
  QTextEdit * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextEdit ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextEdit *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTextEdit ( QWidget * parent = 0 )
//[2]QTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC( QTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTEXTEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QTEXTEDIT_DELETE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool acceptRichText () const
*/
HB_FUNC( QTEXTEDIT_ACCEPTRICHTEXT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->acceptRichText (  );
    hb_retl( b );
  }
}


/*
Qt::Alignment alignment () const
*/
HB_FUNC( QTEXTEDIT_ALIGNMENT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->alignment (  );
    hb_retni( i );
  }
}


/*
QString anchorAt ( const QPoint & pos ) const
*/
HB_FUNC( QTEXTEDIT_ANCHORAT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->anchorAt ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
AutoFormatting autoFormatting () const
*/
HB_FUNC( QTEXTEDIT_AUTOFORMATTING )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->autoFormatting (  );
    hb_retni( i );
  }
}


/*
bool canPaste () const
*/
HB_FUNC( QTEXTEDIT_CANPASTE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->canPaste (  );
    hb_retl( b );
  }
}


/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU1 )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu (  );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );  }
}


/*
QMenu * createStandardContextMenu ( const QPoint & position )
*/
HB_FUNC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU2 )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMenu * ptr = obj->createStandardContextMenu ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );  }
}


//[1]QMenu * createStandardContextMenu ()
//[2]QMenu * createStandardContextMenu ( const QPoint & position )

HB_FUNC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU2 );
  }
}

/*
QTextCharFormat currentCharFormat () const
*/
HB_FUNC( QTEXTEDIT_CURRENTCHARFORMAT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->currentCharFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
QFont currentFont () const
*/
HB_FUNC( QTEXTEDIT_CURRENTFONT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->currentFont (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );  }
}


/*
QTextCursor cursorForPosition ( const QPoint & pos ) const
*/
HB_FUNC( QTEXTEDIT_CURSORFORPOSITION )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCursor * ptr = new QTextCursor( obj->cursorForPosition ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );  }
}


/*
QRect cursorRect ( const QTextCursor & cursor ) const
*/
HB_FUNC( QTEXTEDIT_CURSORRECT1 )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->cursorRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


/*
QRect cursorRect () const
*/
HB_FUNC( QTEXTEDIT_CURSORRECT2 )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->cursorRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );  }
}


//[1]QRect cursorRect ( const QTextCursor & cursor ) const
//[2]QRect cursorRect () const

HB_FUNC( QTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTEDIT_CURSORRECT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTEDIT_CURSORRECT2 );
  }
}

/*
int cursorWidth () const
*/
HB_FUNC( QTEXTEDIT_CURSORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->cursorWidth (  );
    hb_retni( i );
  }
}


/*
QTextDocument * document () const
*/
HB_FUNC( QTEXTEDIT_DOCUMENT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );  }
}


/*
QString documentTitle () const
*/
HB_FUNC( QTEXTEDIT_DOCUMENTTITLE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->documentTitle (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void ensureCursorVisible ()
*/
HB_FUNC( QTEXTEDIT_ENSURECURSORVISIBLE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ensureCursorVisible (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
*/
HB_FUNC( QTEXTEDIT_FIND )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    bool b = obj->find ( par1,  (QTextDocument::FindFlags) par2 );
    hb_retl( b );
  }
}


/*
QString fontFamily () const
*/
HB_FUNC( QTEXTEDIT_FONTFAMILY )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fontFamily (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool fontItalic () const
*/
HB_FUNC( QTEXTEDIT_FONTITALIC )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontItalic (  );
    hb_retl( b );
  }
}


/*
qreal fontPointSize () const
*/
HB_FUNC( QTEXTEDIT_FONTPOINTSIZE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->fontPointSize (  );
    hb_retnd( r );
  }
}


/*
bool fontUnderline () const
*/
HB_FUNC( QTEXTEDIT_FONTUNDERLINE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->fontUnderline (  );
    hb_retl( b );
  }
}


/*
int fontWeight () const
*/
HB_FUNC( QTEXTEDIT_FONTWEIGHT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->fontWeight (  );
    hb_retni( i );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC( QTEXTEDIT_ISREADONLY )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadOnly (  );
    hb_retl( b );
  }
}


/*
bool isUndoRedoEnabled () const
*/
HB_FUNC( QTEXTEDIT_ISUNDOREDOENABLED )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isUndoRedoEnabled (  );
    hb_retl( b );
  }
}


/*
int lineWrapColumnOrWidth () const
*/
HB_FUNC( QTEXTEDIT_LINEWRAPCOLUMNORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->lineWrapColumnOrWidth (  );
    hb_retni( i );
  }
}


/*
LineWrapMode lineWrapMode () const
*/
HB_FUNC( QTEXTEDIT_LINEWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->lineWrapMode (  );
    hb_retni( i );
  }
}


/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC( QTEXTEDIT_LOADRESOURCE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QUrl * par2 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->loadResource ( par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC( QTEXTEDIT_MERGECURRENTCHARFORMAT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_MOVECURSOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_OVERWRITEMODE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->overwriteMode (  );
    hb_retl( b );
  }
}


/*
void print ( QPrinter * printer ) const
*/
HB_FUNC( QTEXTEDIT_PRINT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * par1 = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAcceptRichText ( bool accept )
*/
HB_FUNC( QTEXTEDIT_SETACCEPTRICHTEXT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAcceptRichText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoFormatting ( AutoFormatting features )
*/
HB_FUNC( QTEXTEDIT_SETAUTOFORMATTING )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAutoFormatting (  (QTextEdit::AutoFormatting) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC( QTEXTEDIT_SETCURRENTCHARFORMAT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETCURSORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETDOCUMENT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETDOCUMENTTITLE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDocumentTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setLineWrapColumnOrWidth ( int w )
*/
HB_FUNC( QTEXTEDIT_SETLINEWRAPCOLUMNORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLineWrapColumnOrWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLineWrapMode ( LineWrapMode mode )
*/
HB_FUNC( QTEXTEDIT_SETLINEWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLineWrapMode (  (QTextEdit::LineWrapMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverwriteMode ( bool overwrite )
*/
HB_FUNC( QTEXTEDIT_SETOVERWRITEMODE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETREADONLY )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETTABCHANGESFOCUS )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETTABSTOPWIDTH )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETTEXTCURSOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETTEXTINTERACTIONFLAGS )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETUNDOREDOENABLED )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_SETWORDWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_TABCHANGESFOCUS )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->tabChangesFocus (  );
    hb_retl( b );
  }
}


/*
int tabStopWidth () const
*/
HB_FUNC( QTEXTEDIT_TABSTOPWIDTH )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->tabStopWidth (  );
    hb_retni( i );
  }
}


/*
QColor textBackgroundColor () const
*/
HB_FUNC( QTEXTEDIT_TEXTBACKGROUNDCOLOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->textBackgroundColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
QColor textColor () const
*/
HB_FUNC( QTEXTEDIT_TEXTCOLOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->textColor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );  }
}


/*
QTextCursor textCursor () const
*/
HB_FUNC( QTEXTEDIT_TEXTCURSOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->textCursor (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );  }
}


/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC( QTEXTEDIT_TEXTINTERACTIONFLAGS )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textInteractionFlags (  );
    hb_retni( i );
  }
}


/*
QString toHtml () const
*/
HB_FUNC( QTEXTEDIT_TOHTML )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toHtml (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC( QTEXTEDIT_TOPLAINTEXT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toPlainText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QTextOption::WrapMode wordWrapMode () const
*/
HB_FUNC( QTEXTEDIT_WORDWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->wordWrapMode (  );
    hb_retni( i );
  }
}


/*
void append ( const QString & text )
*/
HB_FUNC( QTEXTEDIT_APPEND )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->append ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC( QTEXTEDIT_CLEAR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void copy ()
*/
HB_FUNC( QTEXTEDIT_COPY )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->copy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cut ()
*/
HB_FUNC( QTEXTEDIT_CUT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cut (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertHtml ( const QString & text )
*/
HB_FUNC( QTEXTEDIT_INSERTHTML )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insertHtml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertPlainText ( const QString & text )
*/
HB_FUNC( QTEXTEDIT_INSERTPLAINTEXT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QTEXTEDIT_PASTE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->paste (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void redo ()
*/
HB_FUNC( QTEXTEDIT_REDO )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToAnchor ( const QString & name )
*/
HB_FUNC( QTEXTEDIT_SCROLLTOANCHOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->scrollToAnchor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectAll ()
*/
HB_FUNC( QTEXTEDIT_SELECTALL )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment ( Qt::Alignment a )
*/
HB_FUNC( QTEXTEDIT_SETALIGNMENT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentFont ( const QFont & f )
*/
HB_FUNC( QTEXTEDIT_SETCURRENTFONT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCurrentFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontFamily ( const QString & fontFamily )
*/
HB_FUNC( QTEXTEDIT_SETFONTFAMILY )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFontFamily ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontItalic ( bool italic )
*/
HB_FUNC( QTEXTEDIT_SETFONTITALIC )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFontItalic ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontPointSize ( qreal s )
*/
HB_FUNC( QTEXTEDIT_SETFONTPOINTSIZE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFontPointSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontUnderline ( bool underline )
*/
HB_FUNC( QTEXTEDIT_SETFONTUNDERLINE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFontUnderline ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFontWeight ( int weight )
*/
HB_FUNC( QTEXTEDIT_SETFONTWEIGHT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFontWeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & text )
*/
HB_FUNC( QTEXTEDIT_SETHTML )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setHtml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlainText ( const QString & text )
*/
HB_FUNC( QTEXTEDIT_SETPLAINTEXT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPlainText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text )
*/
HB_FUNC( QTEXTEDIT_SETTEXT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextBackgroundColor ( const QColor & c )
*/
HB_FUNC( QTEXTEDIT_SETTEXTBACKGROUNDCOLOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setTextBackgroundColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextColor ( const QColor & c )
*/
HB_FUNC( QTEXTEDIT_SETTEXTCOLOR )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setTextColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo ()
*/
HB_FUNC( QTEXTEDIT_UNDO )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void zoomIn ( int range = 1 )
*/
HB_FUNC( QTEXTEDIT_ZOOMIN )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    obj->zoomIn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void zoomOut ( int range = 1 )
*/
HB_FUNC( QTEXTEDIT_ZOOMOUT )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    obj->zoomOut ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





