/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTBLOCK
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTLIST
REQUEST QTEXTFRAME
REQUEST QTEXTTABLE
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTFRAGMENT

CLASS QTextCursor

   DATA pointer
   DATA class_id INIT Class_Id_QTextCursor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD anchor
   METHOD atBlockEnd
   METHOD atBlockStart
   METHOD atEnd
   METHOD atStart
   METHOD beginEditBlock
   METHOD block
   METHOD blockCharFormat
   METHOD blockFormat
   METHOD blockNumber
   METHOD charFormat
   METHOD clearSelection
   METHOD columnNumber
   METHOD createList1
   METHOD createList2
   METHOD createList
   METHOD currentFrame
   METHOD currentList
   METHOD currentTable
   METHOD deleteChar
   METHOD deletePreviousChar
   METHOD document
   METHOD endEditBlock
   METHOD hasComplexSelection
   METHOD hasSelection
   METHOD insertBlock1
   METHOD insertBlock2
   METHOD insertBlock3
   METHOD insertBlock
   METHOD insertFragment
   METHOD insertFrame
   METHOD insertHtml
   METHOD insertImage1
   METHOD insertImage2
   METHOD insertImage3
   METHOD insertImage4
   METHOD insertImage
   METHOD insertList1
   METHOD insertList2
   METHOD insertList
   METHOD insertTable1
   METHOD insertTable2
   METHOD insertTable
   METHOD insertText1
   METHOD insertText2
   METHOD insertText
   METHOD isCopyOf
   METHOD isNull
   METHOD joinPreviousEditBlock
   METHOD keepPositionOnInsert
   METHOD mergeBlockCharFormat
   METHOD mergeBlockFormat
   METHOD mergeCharFormat
   METHOD movePosition
   METHOD position
   METHOD positionInBlock
   METHOD removeSelectedText
   METHOD select
   METHOD selectedTableCells
   METHOD selectedText
   METHOD selection
   METHOD selectionEnd
   METHOD selectionStart
   METHOD setBlockCharFormat
   METHOD setBlockFormat
   METHOD setCharFormat
   METHOD setKeepPositionOnInsert
   METHOD setPosition
   METHOD setVerticalMovementX
   METHOD setVisualNavigation
   METHOD verticalMovementX
   METHOD visualNavigation
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextCursor
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextCursor
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextCursor
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextCursor
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextCursor
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

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
HB_FUNC_STATIC( QTEXTCURSOR_NEW1 )
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
HB_FUNC_STATIC( QTEXTCURSOR_NEW2 )
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
HB_FUNC_STATIC( QTEXTCURSOR_NEW3 )
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
HB_FUNC_STATIC( QTEXTCURSOR_NEW4 )
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
HB_FUNC_STATIC( QTEXTCURSOR_NEW5 )
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

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
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

HB_FUNC_STATIC( QTEXTCURSOR_DELETE )
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
HB_FUNC_STATIC( QTEXTCURSOR_ANCHOR )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->anchor (  ) );
  }
}


/*
bool atBlockEnd () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATBLOCKEND )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atBlockEnd (  ) );
  }
}


/*
bool atBlockStart () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATBLOCKSTART )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atBlockStart (  ) );
  }
}


/*
bool atEnd () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATEND )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
bool atStart () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATSTART )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atStart (  ) );
  }
}


/*
void beginEditBlock ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_BEGINEDITBLOCK )
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
HB_FUNC_STATIC( QTEXTCURSOR_BLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->block (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextCharFormat blockCharFormat () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->blockCharFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
QTextBlockFormat blockFormat () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlockFormat * ptr = new QTextBlockFormat( obj->blockFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCKFORMAT" );
  }
}


/*
int blockNumber () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKNUMBER )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->blockNumber (  ) );
  }
}


/*
QTextCharFormat charFormat () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
void clearSelection ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_CLEARSELECTION )
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
HB_FUNC_STATIC( QTEXTCURSOR_COLUMNNUMBER )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->columnNumber (  ) );
  }
}


/*
QTextList * createList ( const QTextListFormat & format )
*/
HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextList * ptr = obj->createList ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextList * createList ( QTextListFormat::Style style )
*/
HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextList * ptr = obj->createList (  (QTextListFormat::Style) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


//[1]QTextList * createList ( const QTextListFormat & format )
//[2]QTextList * createList ( QTextListFormat::Style style )

HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST )
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
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTFRAME )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrame * ptr = obj->currentFrame (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
QTextList * currentList () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTLIST )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextList * ptr = obj->currentList (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextTable * currentTable () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTTABLE )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTable * ptr = obj->currentTable (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLE" );
  }
}


/*
void deleteChar ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_DELETECHAR )
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
HB_FUNC_STATIC( QTEXTCURSOR_DELETEPREVIOUSCHAR )
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
HB_FUNC_STATIC( QTEXTCURSOR_DOCUMENT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
void endEditBlock ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_ENDEDITBLOCK )
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
HB_FUNC_STATIC( QTEXTCURSOR_HASCOMPLEXSELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasComplexSelection (  ) );
  }
}


/*
bool hasSelection () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_HASSELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasSelection (  ) );
  }
}


/*
void insertBlock ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK1 )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK2 )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK3 )
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

HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTFRAGMENT )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTFRAME )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrameFormat * par1 = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextFrame * ptr = obj->insertFrame ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
void insertHtml ( const QString & html )
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTHTML )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE1 )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE2 )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE3 )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE4 )
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

HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextListFormat * par1 = (QTextListFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextList * ptr = obj->insertList ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


/*
QTextList * insertList ( QTextListFormat::Style style )
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextList * ptr = obj->insertList (  (QTextListFormat::Style) par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLIST" );
  }
}


//[1]QTextList * insertList ( const QTextListFormat & format )
//[2]QTextList * insertList ( QTextListFormat::Style style )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE1 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QTextTableFormat * par3 = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextTable * ptr = obj->insertTable ( par1, par2, *par3 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLE" );
  }
}


/*
QTextTable * insertTable ( int rows, int columns )
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE2 )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QTextTable * ptr = obj->insertTable ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLE" );
  }
}


//[1]QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
//[2]QTextTable * insertTable ( int rows, int columns )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT1 )
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
HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT2 )
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

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT )
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
HB_FUNC_STATIC( QTEXTCURSOR_ISCOPYOF )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isCopyOf ( *par1 ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ISNULL )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
void joinPreviousEditBlock ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_JOINPREVIOUSEDITBLOCK )
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
HB_FUNC_STATIC( QTEXTCURSOR_KEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->keepPositionOnInsert (  ) );
  }
}


/*
void mergeBlockCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGEBLOCKCHARFORMAT )
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
HB_FUNC_STATIC( QTEXTCURSOR_MERGEBLOCKFORMAT )
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
HB_FUNC_STATIC( QTEXTCURSOR_MERGECHARFORMAT )
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
HB_FUNC_STATIC( QTEXTCURSOR_MOVEPOSITION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
    int par3 = ISNIL(3)? 1 : hb_parni(3);
    hb_retl( obj->movePosition (  (QTextCursor::MoveOperation) par1,  (QTextCursor::MoveMode) par2, par3 ) );
  }
}


/*
int position () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_POSITION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}


/*
int positionInBlock () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_POSITIONINBLOCK )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->positionInBlock (  ) );
  }
}


/*
void removeSelectedText ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_REMOVESELECTEDTEXT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SELECT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SELECTEDTABLECELLS )
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
HB_FUNC_STATIC( QTEXTCURSOR_SELECTEDTEXT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SELECTION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocumentFragment * ptr = new QTextDocumentFragment( obj->selection (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
  }
}


/*
int selectionEnd () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTIONEND )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->selectionEnd (  ) );
  }
}


/*
int selectionStart () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTIONSTART )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->selectionStart (  ) );
  }
}


/*
void setBlockCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETBLOCKCHARFORMAT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SETBLOCKFORMAT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SETCHARFORMAT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SETKEEPPOSITIONONINSERT )
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
HB_FUNC_STATIC( QTEXTCURSOR_SETPOSITION )
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
HB_FUNC_STATIC( QTEXTCURSOR_SETVERTICALMOVEMENTX )
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
HB_FUNC_STATIC( QTEXTCURSOR_SETVISUALNAVIGATION )
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
HB_FUNC_STATIC( QTEXTCURSOR_VERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->verticalMovementX (  ) );
  }
}


/*
bool visualNavigation () const
*/
HB_FUNC_STATIC( QTEXTCURSOR_VISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->visualNavigation (  ) );
  }
}




#pragma ENDDUMP
