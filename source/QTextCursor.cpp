/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextCursor>

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

#include <QTextBlock>
#include <QTextDocumentFragment>

/*
QTextCursor ()
*/
HB_FUNC( QTEXTCURSOR_NEW1 )
{
  QTextCursor * o = NULL;
  o = new QTextCursor (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextCursor ( QTextDocument * document )
*/
HB_FUNC( QTEXTCURSOR_NEW2 )
{
  QTextCursor * o = NULL;
  QTextDocument * par1 = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextCursor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextCursor ( QTextFrame * frame )
*/
HB_FUNC( QTEXTCURSOR_NEW3 )
{
  QTextCursor * o = NULL;
  QTextFrame * par1 = (QTextFrame *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextCursor ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextCursor ( const QTextBlock & block )
*/
HB_FUNC( QTEXTCURSOR_NEW4 )
{
  QTextCursor * o = NULL;
  QTextBlock * par1 = (QTextBlock *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextCursor ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC( QTEXTCURSOR_NEW5 )
{
  QTextCursor * o = NULL;
  QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextCursor ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QTextCursor ()
//[2]QTextCursor ( QTextDocument * document )
//[3]QTextCursor ( QTextFrame * frame )
//[4]QTextCursor ( const QTextBlock & block )
//[5]QTextCursor ( const QTextCursor & cursor )

HB_FUNC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QTEXTCURSOR_DELETE )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int anchor () const
*/
HB_FUNC( QTEXTCURSOR_ANCHOR )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->anchor (  );
    hb_retni( i );
  }
}


/*
bool atBlockEnd () const
*/
HB_FUNC( QTEXTCURSOR_ATBLOCKEND )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atBlockEnd (  );
    hb_retl( b );
  }
}


/*
bool atBlockStart () const
*/
HB_FUNC( QTEXTCURSOR_ATBLOCKSTART )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atBlockStart (  );
    hb_retl( b );
  }
}


/*
bool atEnd () const
*/
HB_FUNC( QTEXTCURSOR_ATEND )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atEnd (  );
    hb_retl( b );
  }
}


/*
bool atStart () const
*/
HB_FUNC( QTEXTCURSOR_ATSTART )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atStart (  );
    hb_retl( b );
  }
}


/*
void beginEditBlock ()
*/
HB_FUNC( QTEXTCURSOR_BEGINEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->beginEditBlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextBlock block () const
*/
HB_FUNC( QTEXTCURSOR_BLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->block (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );  }
}


/*
QTextCharFormat blockCharFormat () const
*/
HB_FUNC( QTEXTCURSOR_BLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->blockCharFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
QTextBlockFormat blockFormat () const
*/
HB_FUNC( QTEXTCURSOR_BLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->blockFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );  }
}


/*
int blockNumber () const
*/
HB_FUNC( QTEXTCURSOR_BLOCKNUMBER )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->blockNumber (  );
    hb_retni( i );
  }
}


/*
QTextCharFormat charFormat () const
*/
HB_FUNC( QTEXTCURSOR_CHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );  }
}


/*
void clearSelection ()
*/
HB_FUNC( QTEXTCURSOR_CLEARSELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearSelection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int columnNumber () const
*/
HB_FUNC( QTEXTCURSOR_COLUMNNUMBER )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->columnNumber (  );
    hb_retni( i );
  }
}


/*
QTextList * createList ( const QTextListFormat & format )
*/
HB_FUNC( QTEXTCURSOR_CREATELIST1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextList * ptr = obj->createList ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );  }
}


/*
QTextList * createList ( QTextListFormat::Style style )
*/
HB_FUNC( QTEXTCURSOR_CREATELIST2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextList * ptr = obj->createList (  (QTextListFormat::Style) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );  }
}


//[1]QTextList * createList ( const QTextListFormat & format )
//[2]QTextList * createList ( QTextListFormat::Style style )

HB_FUNC( QTEXTCURSOR_CREATELIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_CREATELIST1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_CREATELIST2 );
  }
}

/*
QTextFrame * currentFrame () const
*/
HB_FUNC( QTEXTCURSOR_CURRENTFRAME )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrame * ptr = obj->currentFrame (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAME" );  }
}


/*
QTextList * currentList () const
*/
HB_FUNC( QTEXTCURSOR_CURRENTLIST )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextList * ptr = obj->currentList (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );  }
}


/*
QTextTable * currentTable () const
*/
HB_FUNC( QTEXTCURSOR_CURRENTTABLE )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTable * ptr = obj->currentTable (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLE" );  }
}


/*
void deleteChar ()
*/
HB_FUNC( QTEXTCURSOR_DELETECHAR )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->deleteChar (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void deletePreviousChar ()
*/
HB_FUNC( QTEXTCURSOR_DELETEPREVIOUSCHAR )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->deletePreviousChar (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextDocument * document () const
*/
HB_FUNC( QTEXTCURSOR_DOCUMENT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );  }
}


/*
void endEditBlock ()
*/
HB_FUNC( QTEXTCURSOR_ENDEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endEditBlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasComplexSelection () const
*/
HB_FUNC( QTEXTCURSOR_HASCOMPLEXSELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasComplexSelection (  );
    hb_retl( b );
  }
}


/*
bool hasSelection () const
*/
HB_FUNC( QTEXTCURSOR_HASSELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasSelection (  );
    hb_retl( b );
  }
}


/*
void insertBlock ()
*/
HB_FUNC( QTEXTCURSOR_INSERTBLOCK1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertBlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertBlock ( const QTextBlockFormat & format )
*/
HB_FUNC( QTEXTCURSOR_INSERTBLOCK2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertBlock ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
*/
HB_FUNC( QTEXTCURSOR_INSERTBLOCK3 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCharFormat * par2 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertBlock ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertBlock ()
//[2]void insertBlock ( const QTextBlockFormat & format )
//[3]void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )

HB_FUNC( QTEXTCURSOR_INSERTBLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTBLOCK1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTBLOCK2 );
  }
  else if( ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTBLOCK3 );
  }
}

/*
void insertFragment ( const QTextDocumentFragment & fragment )
*/
HB_FUNC( QTEXTCURSOR_INSERTFRAGMENT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocumentFragment * par1 = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertFragment ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextFrame * insertFrame ( const QTextFrameFormat & format )
*/
HB_FUNC( QTEXTCURSOR_INSERTFRAME )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrameFormat * par1 = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextFrame * ptr = obj->insertFrame ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAME" );  }
}


/*
void insertHtml ( const QString & html )
*/
HB_FUNC( QTEXTCURSOR_INSERTHTML )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insertHtml ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage ( const QTextImageFormat & format )
*/
HB_FUNC( QTEXTCURSOR_INSERTIMAGE1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextImageFormat * par1 = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertImage ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
*/
HB_FUNC( QTEXTCURSOR_INSERTIMAGE2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextImageFormat * par1 = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->insertImage ( *par1,  (QTextFrameFormat::Position) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage ( const QString & name )
*/
HB_FUNC( QTEXTCURSOR_INSERTIMAGE3 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insertImage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertImage ( const QImage & image, const QString & name = QString() )
*/
HB_FUNC( QTEXTCURSOR_INSERTIMAGE4 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    obj->insertImage ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertImage ( const QTextImageFormat & format )
//[2]void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
//[3]void insertImage ( const QString & name )
//[4]void insertImage ( const QImage & image, const QString & name = QString() )

HB_FUNC( QTEXTCURSOR_INSERTIMAGE )
{
  if( ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTIMAGE1 );
  }
  else if( ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTIMAGE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTIMAGE3 );
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTIMAGE4 );
  }
}

/*
QTextList * insertList ( const QTextListFormat & format )
*/
HB_FUNC( QTEXTCURSOR_INSERTLIST1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextList * ptr = obj->insertList ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );  }
}


/*
QTextList * insertList ( QTextListFormat::Style style )
*/
HB_FUNC( QTEXTCURSOR_INSERTLIST2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextList * ptr = obj->insertList (  (QTextListFormat::Style) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );  }
}


//[1]QTextList * insertList ( const QTextListFormat & format )
//[2]QTextList * insertList ( QTextListFormat::Style style )

HB_FUNC( QTEXTCURSOR_INSERTLIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTLIST1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTLIST2 );
  }
}

/*
QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
*/
HB_FUNC( QTEXTCURSOR_INSERTTABLE1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QTextTableFormat * par3 = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextTable * ptr = obj->insertTable ( par1, par2, *par3 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLE" );  }
}


/*
QTextTable * insertTable ( int rows, int columns )
*/
HB_FUNC( QTEXTCURSOR_INSERTTABLE2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QTextTable * ptr = obj->insertTable ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLE" );  }
}


//[1]QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
//[2]QTextTable * insertTable ( int rows, int columns )

HB_FUNC( QTEXTCURSOR_INSERTTABLE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTEXTTABLEFORMAT(3) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTTABLE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTTABLE2 );
  }
}

/*
void insertText ( const QString & text )
*/
HB_FUNC( QTEXTCURSOR_INSERTTEXT1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insertText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertText ( const QString & text, const QTextCharFormat & format )
*/
HB_FUNC( QTEXTCURSOR_INSERTTEXT2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->insertText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertText ( const QString & text )
//[2]void insertText ( const QString & text, const QTextCharFormat & format )

HB_FUNC( QTEXTCURSOR_INSERTTEXT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTTEXT1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTCHARFORMAT(2) )
  {
    HB_FUNC_EXEC( QTEXTCURSOR_INSERTTEXT2 );
  }
}

/*
bool isCopyOf ( const QTextCursor & other ) const
*/
HB_FUNC( QTEXTCURSOR_ISCOPYOF )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isCopyOf ( *par1 );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QTEXTCURSOR_ISNULL )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
void joinPreviousEditBlock ()
*/
HB_FUNC( QTEXTCURSOR_JOINPREVIOUSEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->joinPreviousEditBlock (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool keepPositionOnInsert () const
*/
HB_FUNC( QTEXTCURSOR_KEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->keepPositionOnInsert (  );
    hb_retl( b );
  }
}


/*
void mergeBlockCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC( QTEXTCURSOR_MERGEBLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->mergeBlockCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeBlockFormat ( const QTextBlockFormat & modifier )
*/
HB_FUNC( QTEXTCURSOR_MERGEBLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->mergeBlockFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC( QTEXTCURSOR_MERGECHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->mergeCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor, int n = 1 )
*/
HB_FUNC( QTEXTCURSOR_MOVEPOSITION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    int par3 = ISNIL(3)? 1 : hb_parni(3);
    bool b = obj->movePosition (  (QTextCursor::MoveOperation) par1,  (QTextCursor::MoveMode) par2, par3 );
    hb_retl( b );
  }
}


/*
int position () const
*/
HB_FUNC( QTEXTCURSOR_POSITION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->position (  );
    hb_retni( i );
  }
}


/*
int positionInBlock () const
*/
HB_FUNC( QTEXTCURSOR_POSITIONINBLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->positionInBlock (  );
    hb_retni( i );
  }
}


/*
void removeSelectedText ()
*/
HB_FUNC( QTEXTCURSOR_REMOVESELECTEDTEXT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeSelectedText (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void select ( SelectionType selection )
*/
HB_FUNC( QTEXTCURSOR_SELECT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->select (  (QTextCursor::SelectionType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectedTableCells ( int * firstRow, int * numRows, int * firstColumn, int * numColumns ) const
*/
HB_FUNC( QTEXTCURSOR_SELECTEDTABLECELLS )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->selectedTableCells ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString selectedText () const
*/
HB_FUNC( QTEXTCURSOR_SELECTEDTEXT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->selectedText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QTextDocumentFragment selection () const
*/
HB_FUNC( QTEXTCURSOR_SELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocumentFragment * ptr = new QTextDocumentFragment( obj->selection (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );  }
}


/*
int selectionEnd () const
*/
HB_FUNC( QTEXTCURSOR_SELECTIONEND )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->selectionEnd (  );
    hb_retni( i );
  }
}


/*
int selectionStart () const
*/
HB_FUNC( QTEXTCURSOR_SELECTIONSTART )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->selectionStart (  );
    hb_retni( i );
  }
}


/*
void setBlockCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC( QTEXTCURSOR_SETBLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBlockCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlockFormat ( const QTextBlockFormat & format )
*/
HB_FUNC( QTEXTCURSOR_SETBLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * par1 = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBlockFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC( QTEXTCURSOR_SETCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCharFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeepPositionOnInsert ( bool b )
*/
HB_FUNC( QTEXTCURSOR_SETKEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setKeepPositionOnInsert ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosition ( int pos, MoveMode m = MoveAnchor )
*/
HB_FUNC( QTEXTCURSOR_SETPOSITION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    obj->setPosition ( par1,  (QTextCursor::MoveMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalMovementX ( int x )
*/
HB_FUNC( QTEXTCURSOR_SETVERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalMovementX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisualNavigation ( bool b )
*/
HB_FUNC( QTEXTCURSOR_SETVISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setVisualNavigation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int verticalMovementX () const
*/
HB_FUNC( QTEXTCURSOR_VERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->verticalMovementX (  );
    hb_retni( i );
  }
}


/*
bool visualNavigation () const
*/
HB_FUNC( QTEXTCURSOR_VISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->visualNavigation (  );
    hb_retl( b );
  }
}



