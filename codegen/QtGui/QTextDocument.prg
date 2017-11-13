$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFORMAT
REQUEST QTEXTBLOCK
REQUEST QCHAR
REQUEST QTEXTDOCUMENT
REQUEST QFONT
REQUEST QTEXTOPTION
REQUEST QABSTRACTTEXTDOCUMENTLAYOUT
REQUEST QTEXTCURSOR
REQUEST QTEXTOBJECT
REQUEST QSIZEF
REQUEST QVARIANT
REQUEST QTEXTFRAME
#endif

CLASS QTextDocument INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addResource
   METHOD adjustSize
   METHOD allFormats
   METHOD availableRedoSteps
   METHOD availableUndoSteps
   METHOD begin
   METHOD blockCount
   METHOD characterAt
   METHOD characterCount
   METHOD clear
   METHOD clearUndoRedoStacks
   METHOD clone
   METHOD defaultCursorMoveStyle
   METHOD defaultFont
   METHOD defaultStyleSheet
   METHOD defaultTextOption
   METHOD documentLayout
   METHOD documentMargin
   METHOD drawContents
   METHOD end
   METHOD find
   METHOD findBlock
   METHOD findBlockByLineNumber
   METHOD findBlockByNumber
   METHOD firstBlock
   METHOD idealWidth
   METHOD indentWidth
   METHOD isEmpty
   METHOD isModified
   METHOD isRedoAvailable
   METHOD isUndoAvailable
   METHOD isUndoRedoEnabled
   METHOD lastBlock
   METHOD lineCount
   METHOD markContentsDirty
   METHOD maximumBlockCount
   METHOD metaInformation
   METHOD object
   METHOD objectForFormat
   METHOD pageCount
   METHOD pageSize
   METHOD print
   METHOD resource
   METHOD revision
   METHOD rootFrame
   METHOD setDefaultCursorMoveStyle
   METHOD setDefaultFont
   METHOD setDefaultStyleSheet
   METHOD setDefaultTextOption
   METHOD setDocumentLayout
   METHOD setDocumentMargin
   METHOD setHtml
   METHOD setIndentWidth
   METHOD setMaximumBlockCount
   METHOD setMetaInformation
   METHOD setPageSize
   METHOD setPlainText
   METHOD setTextWidth
   METHOD setUndoRedoEnabled
   METHOD setUseDesignMetrics
   METHOD size
   METHOD textWidth
   METHOD toHtml
   METHOD toPlainText
   METHOD useDesignMetrics
   METHOD redo
   METHOD setModified
   METHOD undo

   METHOD onBlockCountChanged
   METHOD onContentsChange
   METHOD onContentsChanged
   METHOD onCursorPositionChanged
   METHOD onDocumentLayoutChanged
   METHOD onModificationChanged
   METHOD onRedoAvailable
   METHOD onUndoAvailable
   METHOD onUndoCommandAdded

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextDocument>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextBlock>
#include <QTextOption>
#include <QTextCursor>
#include <QVariant>

/*
QTextDocument ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QTextDocument ( const QString & text, QObject * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QObject *=0

//[1]QTextDocument ( QObject * parent = 0 )
//[2]QTextDocument ( const QString & text, QObject * parent = 0 )

HB_FUNC_STATIC( QTEXTDOCUMENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QTextDocument_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QTextDocument_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addResource ( int type, const QUrl & name, const QVariant & resource )
*/
$method=|void|addResource|int,const QUrl &,const QVariant &

/*
void adjustSize ()
*/
$method=|void|adjustSize|

/*
QVector<QTextFormat> allFormats () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ALLFORMATS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QTextFormat> list = obj->allFormats ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTEXTFORMAT" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTextFormat *) new QTextFormat ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
int availableRedoSteps () const
*/
$method=|int|availableRedoSteps|

/*
int availableUndoSteps () const
*/
$method=|int|availableUndoSteps|

/*
QTextBlock begin () const
*/
$method=|QTextBlock|begin|

/*
int blockCount () const
*/
$method=|int|blockCount|

/*
QChar characterAt ( int pos ) const
*/
$method=|QChar|characterAt|int

/*
int characterCount () const
*/
$method=|int|characterCount|

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
void clearUndoRedoStacks ( Stacks stacksToClear = UndoAndRedoStacks )
*/
$method=|void|clearUndoRedoStacks|QTextDocument::Stacks=QTextDocument::UndoAndRedoStacks

/*
QTextDocument * clone ( QObject * parent = 0 ) const
*/
$method=|QTextDocument *|clone|QObject *=0

/*
Qt::CursorMoveStyle defaultCursorMoveStyle () const
*/
$method=|Qt::CursorMoveStyle|defaultCursorMoveStyle|

/*
QFont defaultFont () const
*/
$method=|QFont|defaultFont|

/*
QString defaultStyleSheet () const
*/
$method=|QString|defaultStyleSheet|

/*
QTextOption defaultTextOption () const
*/
$method=|QTextOption|defaultTextOption|

/*
QAbstractTextDocumentLayout * documentLayout () const
*/
$method=|QAbstractTextDocumentLayout *|documentLayout|

/*
qreal documentMargin () const
*/
$method=|qreal|documentMargin|

/*
void drawContents ( QPainter * p, const QRectF & rect = QRectF() )
*/
$method=|void|drawContents|QPainter *,const QRectF &=QRectF()

/*
QTextBlock end () const
*/
$method=|QTextBlock|end|

/*
QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
*/
$internalMethod=|QTextCursor|find,find1|const QString &,const QTextCursor &,QTextDocument::FindFlags=0

/*
QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
*/
$internalMethod=|QTextCursor|find,find2|const QRegExp &,const QTextCursor &,QTextDocument::FindFlags=0

/*
QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
*/
$internalMethod=|QTextCursor|find,find3|const QString &,int=0,QTextDocument::FindFlags=0

/*
QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const
*/
$internalMethod=|QTextCursor|find,find4|const QRegExp &,int=0,QTextDocument::FindFlags=0

//[1]QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
//[2]QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
//[3]QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
//[4]QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const

HB_FUNC_STATIC( QTEXTDOCUMENT_FIND )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQTEXTCURSOR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTextDocument_find1();
  }
  else if( ISBETWEEN(2,3) && ISQREGEXP(1) && ISQTEXTCURSOR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QTextDocument_find2();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QTextDocument_find3();
  }
  else if( ISBETWEEN(1,3) && ISQREGEXP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QTextDocument_find4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextBlock findBlock ( int pos ) const
*/
$method=|QTextBlock|findBlock|int

/*
QTextBlock findBlockByLineNumber ( int lineNumber ) const
*/
$method=|QTextBlock|findBlockByLineNumber|int

/*
QTextBlock findBlockByNumber ( int blockNumber ) const
*/
$method=|QTextBlock|findBlockByNumber|int

/*
QTextBlock firstBlock () const
*/
$method=|QTextBlock|firstBlock|

/*
qreal idealWidth () const
*/
$method=|qreal|idealWidth|

/*
qreal indentWidth () const
*/
$method=|qreal|indentWidth|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isModified () const
*/
$method=|bool|isModified|

/*
bool isRedoAvailable () const
*/
$method=|bool|isRedoAvailable|

/*
bool isUndoAvailable () const
*/
$method=|bool|isUndoAvailable|

/*
bool isUndoRedoEnabled () const
*/
$method=|bool|isUndoRedoEnabled|

/*
QTextBlock lastBlock () const
*/
$method=|QTextBlock|lastBlock|

/*
int lineCount () const
*/
$method=|int|lineCount|

/*
void markContentsDirty ( int position, int length )
*/
$method=|void|markContentsDirty|int,int

/*
int maximumBlockCount () const
*/
$method=|int|maximumBlockCount|

/*
QString metaInformation ( MetaInformation info ) const
*/
$method=|QString|metaInformation|QTextDocument::MetaInformation

/*
QTextObject * object ( int objectIndex ) const
*/
$method=|QTextObject *|object|int

/*
QTextObject * objectForFormat ( const QTextFormat & f ) const
*/
$method=|QTextObject *|objectForFormat|const QTextFormat &

/*
int pageCount () const
*/
$method=|int|pageCount|

/*
QSizeF pageSize () const
*/
$method=|QSizeF|pageSize|

/*
void print ( QPrinter * printer ) const
*/
$method=|void|print|QPrinter *

/*
QVariant resource ( int type, const QUrl & name ) const
*/
$method=|QVariant|resource|int,const QUrl &

/*
int revision () const
*/
$method=|int|revision|

/*
QTextFrame * rootFrame () const
*/
$method=|QTextFrame *|rootFrame|

/*
void setDefaultCursorMoveStyle ( Qt::CursorMoveStyle style )
*/
$method=|void|setDefaultCursorMoveStyle|Qt::CursorMoveStyle

/*
void setDefaultFont ( const QFont & font )
*/
$method=|void|setDefaultFont|const QFont &

/*
void setDefaultStyleSheet ( const QString & sheet )
*/
$method=|void|setDefaultStyleSheet|const QString &

/*
void setDefaultTextOption ( const QTextOption & option )
*/
$method=|void|setDefaultTextOption|const QTextOption &

/*
void setDocumentLayout ( QAbstractTextDocumentLayout * layout )
*/
$method=|void|setDocumentLayout|QAbstractTextDocumentLayout *

/*
void setDocumentMargin ( qreal margin )
*/
$method=|void|setDocumentMargin|qreal

/*
void setHtml ( const QString & html )
*/
$method=|void|setHtml|const QString &

/*
void setIndentWidth ( qreal width )
*/
$method=|void|setIndentWidth|qreal

/*
void setMaximumBlockCount ( int maximum )
*/
$method=|void|setMaximumBlockCount|int

/*
void setMetaInformation ( MetaInformation info, const QString & string )
*/
$method=|void|setMetaInformation|QTextDocument::MetaInformation,const QString &

/*
void setPageSize ( const QSizeF & size )
*/
$method=|void|setPageSize|const QSizeF &

/*
void setPlainText ( const QString & text )
*/
$method=|void|setPlainText|const QString &

/*
void setTextWidth ( qreal width )
*/
$method=|void|setTextWidth|qreal

/*
void setUndoRedoEnabled ( bool enable )
*/
$method=|void|setUndoRedoEnabled|bool

/*
void setUseDesignMetrics ( bool b )
*/
$method=|void|setUseDesignMetrics|bool

/*
QSizeF size () const
*/
$method=|QSizeF|size|

/*
qreal textWidth () const
*/
$method=|qreal|textWidth|

/*
QString toHtml ( const QByteArray & encoding = QByteArray() ) const
*/
$method=|QString|toHtml|const QByteArray &=QByteArray()

/*
QString toPlainText () const
*/
$method=|QString|toPlainText|

/*
bool useDesignMetrics () const
*/
$method=|bool|useDesignMetrics|

/*
void redo ( QTextCursor * cursor )
*/
$internalMethod=|void|redo,redo1|QTextCursor *

/*
void redo ()
*/
$internalMethod=|void|redo,redo2|

//[1]void redo ( QTextCursor * cursor )
//[2]void redo ()

HB_FUNC_STATIC( QTEXTDOCUMENT_REDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocument_redo1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocument_redo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setModified ( bool m = true )
*/
$method=|void|setModified|bool=true

/*
void undo ( QTextCursor * cursor )
*/
$internalMethod=|void|undo,undo1|QTextCursor *

/*
void undo ()
*/
$internalMethod=|void|undo,undo2|

//[1]void undo ( QTextCursor * cursor )
//[2]void undo ()

HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocument_undo1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocument_undo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
