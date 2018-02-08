%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
#include <QAbstractTextDocumentLayout>

$prototype=QTextDocument ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QTextDocument ( const QString & text, QObject * parent = 0 )
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

$prototype=void addResource ( int type, const QUrl & name, const QVariant & resource )
$method=|void|addResource|int,const QUrl &,const QVariant &

$prototype=void adjustSize ()
$method=|void|adjustSize|

$prototype=QVector<QTextFormat> allFormats () const
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
        hb_vmPushDynSym( pDynSym );
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

$prototype=int availableRedoSteps () const
$method=|int|availableRedoSteps|

$prototype=int availableUndoSteps () const
$method=|int|availableUndoSteps|

$prototype=QTextBlock begin () const
$method=|QTextBlock|begin|

$prototype=int blockCount () const
$method=|int|blockCount|

$prototype=QChar characterAt ( int pos ) const
$method=|QChar|characterAt|int

$prototype=int characterCount () const
$method=|int|characterCount|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=void clearUndoRedoStacks ( Stacks stacksToClear = UndoAndRedoStacks )
$method=|void|clearUndoRedoStacks|QTextDocument::Stacks=QTextDocument::UndoAndRedoStacks

$prototype=QTextDocument * clone ( QObject * parent = 0 ) const
$method=|QTextDocument *|clone|QObject *=0

$prototype=Qt::CursorMoveStyle defaultCursorMoveStyle () const
$method=|Qt::CursorMoveStyle|defaultCursorMoveStyle|

$prototype=QFont defaultFont () const
$method=|QFont|defaultFont|

$prototype=QString defaultStyleSheet () const
$method=|QString|defaultStyleSheet|

$prototype=QTextOption defaultTextOption () const
$method=|QTextOption|defaultTextOption|

$prototype=QAbstractTextDocumentLayout * documentLayout () const
$method=|QAbstractTextDocumentLayout *|documentLayout|

$prototype=qreal documentMargin () const
$method=|qreal|documentMargin|

$prototype=void drawContents ( QPainter * p, const QRectF & rect = QRectF() )
$method=|void|drawContents|QPainter *,const QRectF &=QRectF()

$prototype=QTextBlock end () const
$method=|QTextBlock|end|

$prototype=QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find1|const QString &,const QTextCursor &,QTextDocument::FindFlags=0

$prototype=QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find2|const QRegExp &,const QTextCursor &,QTextDocument::FindFlags=0

$prototype=QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find3|const QString &,int=0,QTextDocument::FindFlags=0

$prototype=QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const
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

$prototype=QTextBlock findBlock ( int pos ) const
$method=|QTextBlock|findBlock|int

$prototype=QTextBlock findBlockByLineNumber ( int lineNumber ) const
$method=|QTextBlock|findBlockByLineNumber|int

$prototype=QTextBlock findBlockByNumber ( int blockNumber ) const
$method=|QTextBlock|findBlockByNumber|int

$prototype=QTextBlock firstBlock () const
$method=|QTextBlock|firstBlock|

$prototype=qreal idealWidth () const
$method=|qreal|idealWidth|

$prototype=qreal indentWidth () const
$method=|qreal|indentWidth|

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isModified () const
$method=|bool|isModified|

$prototype=bool isRedoAvailable () const
$method=|bool|isRedoAvailable|

$prototype=bool isUndoAvailable () const
$method=|bool|isUndoAvailable|

$prototype=bool isUndoRedoEnabled () const
$method=|bool|isUndoRedoEnabled|

$prototype=QTextBlock lastBlock () const
$method=|QTextBlock|lastBlock|

$prototype=int lineCount () const
$method=|int|lineCount|

$prototype=void markContentsDirty ( int position, int length )
$method=|void|markContentsDirty|int,int

$prototype=int maximumBlockCount () const
$method=|int|maximumBlockCount|

$prototype=QString metaInformation ( MetaInformation info ) const
$method=|QString|metaInformation|QTextDocument::MetaInformation

$prototype=QTextObject * object ( int objectIndex ) const
$method=|QTextObject *|object|int

$prototype=QTextObject * objectForFormat ( const QTextFormat & f ) const
$method=|QTextObject *|objectForFormat|const QTextFormat &

$prototype=int pageCount () const
$method=|int|pageCount|

$prototype=QSizeF pageSize () const
$method=|QSizeF|pageSize|

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=QVariant resource ( int type, const QUrl & name ) const
$method=|QVariant|resource|int,const QUrl &

$prototype=int revision () const
$method=|int|revision|

$prototype=QTextFrame * rootFrame () const
$method=|QTextFrame *|rootFrame|

$prototype=void setDefaultCursorMoveStyle ( Qt::CursorMoveStyle style )
$method=|void|setDefaultCursorMoveStyle|Qt::CursorMoveStyle

$prototype=void setDefaultFont ( const QFont & font )
$method=|void|setDefaultFont|const QFont &

$prototype=void setDefaultStyleSheet ( const QString & sheet )
$method=|void|setDefaultStyleSheet|const QString &

$prototype=void setDefaultTextOption ( const QTextOption & option )
$method=|void|setDefaultTextOption|const QTextOption &

$prototype=void setDocumentLayout ( QAbstractTextDocumentLayout * layout )
$method=|void|setDocumentLayout|QAbstractTextDocumentLayout *

$prototype=void setDocumentMargin ( qreal margin )
$method=|void|setDocumentMargin|qreal

$prototype=void setHtml ( const QString & html )
$method=|void|setHtml|const QString &

$prototype=void setIndentWidth ( qreal width )
$method=|void|setIndentWidth|qreal

$prototype=void setMaximumBlockCount ( int maximum )
$method=|void|setMaximumBlockCount|int

$prototype=void setMetaInformation ( MetaInformation info, const QString & string )
$method=|void|setMetaInformation|QTextDocument::MetaInformation,const QString &

$prototype=void setPageSize ( const QSizeF & size )
$method=|void|setPageSize|const QSizeF &

$prototype=void setPlainText ( const QString & text )
$method=|void|setPlainText|const QString &

$prototype=void setTextWidth ( qreal width )
$method=|void|setTextWidth|qreal

$prototype=void setUndoRedoEnabled ( bool enable )
$method=|void|setUndoRedoEnabled|bool

$prototype=void setUseDesignMetrics ( bool b )
$method=|void|setUseDesignMetrics|bool

$prototype=QSizeF size () const
$method=|QSizeF|size|

$prototype=qreal textWidth () const
$method=|qreal|textWidth|

$prototype=QString toHtml ( const QByteArray & encoding = QByteArray() ) const
$method=|QString|toHtml|const QByteArray &=QByteArray()

$prototype=QString toPlainText () const
$method=|QString|toPlainText|

$prototype=bool useDesignMetrics () const
$method=|bool|useDesignMetrics|

$prototype=void redo ( QTextCursor * cursor )
$internalMethod=|void|redo,redo1|QTextCursor *

$prototype=void redo ()
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

$prototype=void setModified ( bool m = true )
$method=|void|setModified|bool=true

$prototype=void undo ( QTextCursor * cursor )
$internalMethod=|void|undo,undo1|QTextCursor *

$prototype=void undo ()
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
