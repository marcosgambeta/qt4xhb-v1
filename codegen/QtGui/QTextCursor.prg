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
   METHOD insertBlock
   METHOD insertFragment
   METHOD insertFrame
   METHOD insertHtml
   METHOD insertImage
   METHOD insertList
   METHOD insertTable
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
$internalConstructor=|new1|

/*
QTextCursor ( QTextDocument * document )
*/
$internalConstructor=|new2|QTextDocument *

/*
QTextCursor ( QTextFrame * frame )
*/
$internalConstructor=|new3|QTextFrame *

/*
QTextCursor ( const QTextBlock & block )
*/
$internalConstructor=|new4|const QTextBlock &

/*
QTextCursor ( const QTextCursor & cursor )
*/
$internalConstructor=|new5|const QTextCursor &

//[1]QTextCursor ()
//[2]QTextCursor ( QTextDocument * document )
//[3]QTextCursor ( QTextFrame * frame )
//[4]QTextCursor ( const QTextBlock & block )
//[5]QTextCursor ( const QTextCursor & cursor )

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextCursor_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    QTextCursor_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextCursor_new4();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextCursor_new5();
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
$internalMethod=|QTextList *|createList,createList1|const QTextListFormat &

/*
QTextList * createList ( QTextListFormat::Style style )
*/
$internalMethod=|QTextList *|createList,createList2|QTextListFormat::Style

//[1]QTextList * createList ( const QTextListFormat & format )
//[2]QTextList * createList ( QTextListFormat::Style style )

HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_createList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_createList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
$internalMethod=|void|insertBlock,insertBlock1|

/*
void insertBlock ( const QTextBlockFormat & format )
*/
$internalMethod=|void|insertBlock,insertBlock2|const QTextBlockFormat &

/*
void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
*/
$internalMethod=|void|insertBlock,insertBlock3|const QTextBlockFormat &,const QTextCharFormat &

//[1]void insertBlock ()
//[2]void insertBlock ( const QTextBlockFormat & format )
//[3]void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_insertBlock1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
  {
    QTextCursor_insertBlock2();
  }
  else if( ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertBlock3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
$internalMethod=|void|insertImage,insertImage1|const QTextImageFormat &

/*
void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
*/
$internalMethod=|void|insertImage,insertImage2|const QTextImageFormat &,QTextFrameFormat::Position

/*
void insertImage ( const QString & name )
*/
$internalMethod=|void|insertImage,insertImage3|const QString &

/*
void insertImage ( const QImage & image, const QString & name = QString() )
*/
$internalMethod=|void|insertImage,insertImage4|const QImage &,const QString &=QString()

//[1]void insertImage ( const QTextImageFormat & format )
//[2]void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
//[3]void insertImage ( const QString & name )
//[4]void insertImage ( const QImage & image, const QString & name = QString() )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE )
{
  if( ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1) )
  {
    QTextCursor_insertImage1();
  }
  else if( ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && ISNUM(2) )
  {
    QTextCursor_insertImage2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertImage3();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QTextCursor_insertImage4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextList * insertList ( const QTextListFormat & format )
*/
$internalMethod=|QTextList *|insertList,insertList1|const QTextListFormat &

/*
QTextList * insertList ( QTextListFormat::Style style )
*/
$internalMethod=|QTextList *|insertList,insertList2|QTextListFormat::Style

//[1]QTextList * insertList ( const QTextListFormat & format )
//[2]QTextList * insertList ( QTextListFormat::Style style )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_insertList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_insertList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
*/
$internalMethod=|QTextTable *|insertTable,insertTable1|int,int,const QTextTableFormat &

/*
QTextTable * insertTable ( int rows, int columns )
*/
$internalMethod=|QTextTable *|insertTable,insertTable2|int,int

//[1]QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
//[2]QTextTable * insertTable ( int rows, int columns )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTEXTTABLEFORMAT(3) )
  {
    QTextCursor_insertTable1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextCursor_insertTable2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertText ( const QString & text )
*/
$internalMethod=|void|insertText,insertText1|const QString &

/*
void insertText ( const QString & text, const QTextCharFormat & format )
*/
$internalMethod=|void|insertText,insertText2|const QString &,const QTextCharFormat &

//[1]void insertText ( const QString & text )
//[2]void insertText ( const QString & text, const QTextCharFormat & format )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertText1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
