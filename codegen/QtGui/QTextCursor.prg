$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTLIST
REQUEST QTEXTFRAME
REQUEST QTEXTTABLE
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTFRAGMENT
#endif

CLASS QTextCursor

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QTextCursor>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextBlock>
#include <QTextDocumentFragment>

/*
QTextCursor ()
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW1 )
{
  QTextCursor * o = new QTextCursor ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextCursor ( QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW2 )
{
  QTextCursor * o = new QTextCursor ( PQTEXTDOCUMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextCursor ( QTextFrame * frame )
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW3 )
{
  QTextCursor * o = new QTextCursor ( PQTEXTFRAME(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextCursor ( const QTextBlock & block )
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW4 )
{
  QTextCursor * o = new QTextCursor ( *PQTEXTBLOCK(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QTEXTCURSOR_NEW5 )
{
  QTextCursor * o = new QTextCursor ( *PQTEXTCURSOR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
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

$deleteMethod

/*
int anchor () const
*/
$method=|int|anchor|

/*
bool atBlockEnd () const
*/
$method=|bool|atBlockEnd|

/*
bool atBlockStart () const
*/
$method=|bool|atBlockStart|

/*
bool atEnd () const
*/
$method=|bool|atEnd|

/*
bool atStart () const
*/
$method=|bool|atStart|

/*
void beginEditBlock ()
*/
$method=|void|beginEditBlock|

/*
QTextBlock block () const
*/
$method=|QTextBlock|block|

/*
QTextCharFormat blockCharFormat () const
*/
$method=|QTextCharFormat|blockCharFormat|

/*
QTextBlockFormat blockFormat () const
*/
$method=|QTextBlockFormat|blockFormat|

/*
int blockNumber () const
*/
$method=|int|blockNumber|

/*
QTextCharFormat charFormat () const
*/
$method=|QTextCharFormat|charFormat|

/*
void clearSelection ()
*/
$method=|void|clearSelection|

/*
int columnNumber () const
*/
$method=|int|columnNumber|

/*
QTextList * createList ( const QTextListFormat & format )
*/
$method=|QTextList *|createList,createList1|const QTextListFormat &

/*
QTextList * createList ( QTextListFormat::Style style )
*/
$method=|QTextList *|createList,createList2|QTextListFormat::Style

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
$method=|QTextFrame *|currentFrame|

/*
QTextList * currentList () const
*/
$method=|QTextList *|currentList|

/*
QTextTable * currentTable () const
*/
$method=|QTextTable *|currentTable|

/*
void deleteChar ()
*/
$method=|void|deleteChar|

/*
void deletePreviousChar ()
*/
$method=|void|deletePreviousChar|

/*
QTextDocument * document () const
*/
$method=|QTextDocument *|document|

/*
void endEditBlock ()
*/
$method=|void|endEditBlock|

/*
bool hasComplexSelection () const
*/
$method=|bool|hasComplexSelection|

/*
bool hasSelection () const
*/
$method=|bool|hasSelection|

/*
void insertBlock ()
*/
$method=|void|insertBlock,insertBlock1|

/*
void insertBlock ( const QTextBlockFormat & format )
*/
$method=|void|insertBlock,insertBlock2|const QTextBlockFormat &

/*
void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
*/
$method=|void|insertBlock,insertBlock3|const QTextBlockFormat &,const QTextCharFormat &

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
$method=|void|insertFragment|const QTextDocumentFragment &

/*
QTextFrame * insertFrame ( const QTextFrameFormat & format )
*/
$method=|QTextFrame *|insertFrame|const QTextFrameFormat &

/*
void insertHtml ( const QString & html )
*/
$method=|void|insertHtml|const QString &

/*
void insertImage ( const QTextImageFormat & format )
*/
$method=|void|insertImage,insertImage1|const QTextImageFormat &

/*
void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
*/
$method=|void|insertImage,insertImage2|const QTextImageFormat &,QTextFrameFormat::Position

/*
void insertImage ( const QString & name )
*/
$method=|void|insertImage,insertImage3|const QString &

/*
void insertImage ( const QImage & image, const QString & name = QString() )
*/
$method=|void|insertImage,insertImage4|const QImage &,const QString &=QString()

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
$method=|QTextList *|insertList,insertList1|const QTextListFormat &

/*
QTextList * insertList ( QTextListFormat::Style style )
*/
$method=|QTextList *|insertList,insertList2|QTextListFormat::Style

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
$method=|QTextTable *|insertTable,insertTable1|int,int,const QTextTableFormat &

/*
QTextTable * insertTable ( int rows, int columns )
*/
$method=|QTextTable *|insertTable,insertTable2|int,int

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
$method=|void|insertText,insertText1|const QString &

/*
void insertText ( const QString & text, const QTextCharFormat & format )
*/
$method=|void|insertText,insertText2|const QString &,const QTextCharFormat &

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
$method=|bool|isCopyOf|const QTextCursor &

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
void joinPreviousEditBlock ()
*/
$method=|void|joinPreviousEditBlock|

/*
bool keepPositionOnInsert () const
*/
$method=|bool|keepPositionOnInsert|

/*
void mergeBlockCharFormat ( const QTextCharFormat & modifier )
*/
$method=|void|mergeBlockCharFormat|const QTextCharFormat &

/*
void mergeBlockFormat ( const QTextBlockFormat & modifier )
*/
$method=|void|mergeBlockFormat|const QTextBlockFormat &

/*
void mergeCharFormat ( const QTextCharFormat & modifier )
*/
$method=|void|mergeCharFormat|const QTextCharFormat &

/*
bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor, int n = 1 )
*/
$method=|bool|movePosition|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor,int=1

/*
int position () const
*/
$method=|int|position|

/*
int positionInBlock () const
*/
$method=|int|positionInBlock|

/*
void removeSelectedText ()
*/
$method=|void|removeSelectedText|

/*
void select ( SelectionType selection )
*/
$method=|void|select|QTextCursor::SelectionType

/*
void selectedTableCells ( int * firstRow, int * numRows, int * firstColumn, int * numColumns ) const
*/
$method=|void|selectedTableCells|int *,int *,int *,int *

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
QTextDocumentFragment selection () const
*/
$method=|QTextDocumentFragment|selection|

/*
int selectionEnd () const
*/
$method=|int|selectionEnd|

/*
int selectionStart () const
*/
$method=|int|selectionStart|

/*
void setBlockCharFormat ( const QTextCharFormat & format )
*/
$method=|void|setBlockCharFormat|const QTextCharFormat &

/*
void setBlockFormat ( const QTextBlockFormat & format )
*/
$method=|void|setBlockFormat|const QTextBlockFormat &

/*
void setCharFormat ( const QTextCharFormat & format )
*/
$method=|void|setCharFormat|const QTextCharFormat &

/*
void setKeepPositionOnInsert ( bool b )
*/
$method=|void|setKeepPositionOnInsert|bool

/*
void setPosition ( int pos, MoveMode m = MoveAnchor )
*/
$method=|void|setPosition|int,QTextCursor::MoveMode=QTextCursor::MoveAnchor

/*
void setVerticalMovementX ( int x )
*/
$method=|void|setVerticalMovementX|int

/*
void setVisualNavigation ( bool b )
*/
$method=|void|setVisualNavigation|bool

/*
int verticalMovementX () const
*/
$method=|int|verticalMovementX|

/*
bool visualNavigation () const
*/
$method=|bool|visualNavigation|

$extraMethods

#pragma ENDDUMP
