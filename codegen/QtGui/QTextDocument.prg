%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextBlock>
#include <QtGui/QTextOption>
#include <QtGui/QTextCursor>
#include <QtCore/QVariant>
#include <QtGui/QAbstractTextDocumentLayout>

$prototype=QTextDocument ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QTextDocument ( const QString & text, QObject * parent = 0 )
$internalConstructor=|new2|const QString &,QObject *=0

/*
[1]QTextDocument ( QObject * parent = 0 )
[2]QTextDocument ( const QString & text, QObject * parent = 0 )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=void addResource( int type, const QUrl & name, const QVariant & resource )

$prototypeV2=void adjustSize()

$prototypeV2=QVector<QTextFormat> allFormats() const

$prototypeV2=int availableRedoSteps() const

$prototypeV2=int availableUndoSteps() const

$prototypeV2=QTextBlock begin() const

$prototypeV2=int blockCount() const

$prototypeV2=QChar characterAt( int pos ) const

$prototypeV2=int characterCount() const

$prototypeV2=virtual void clear()

$prototypeV2=void clearUndoRedoStacks( QTextDocument::Stacks stacksToClear = QTextDocument::UndoAndRedoStacks )

$prototypeV2=QTextDocument * clone( QObject * parent = 0 ) const

$prototypeV2=Qt::CursorMoveStyle defaultCursorMoveStyle() const

$prototypeV2=QFont defaultFont() const

$prototypeV2=QString defaultStyleSheet() const

$prototypeV2=QTextOption defaultTextOption() const

$prototypeV2=QAbstractTextDocumentLayout * documentLayout() const

$prototypeV2=qreal documentMargin() const

$prototypeV2=void drawContents( QPainter * p, const QRectF & rect = QRectF() )

$prototypeV2=QTextBlock end() const

$prototype=QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find1|const QString &,const QTextCursor &,QTextDocument::FindFlags=0

$prototype=QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find2|const QRegExp &,const QTextCursor &,QTextDocument::FindFlags=0

$prototype=QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find3|const QString &,int=0,QTextDocument::FindFlags=0

$prototype=QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const
$internalMethod=|QTextCursor|find,find4|const QRegExp &,int=0,QTextDocument::FindFlags=0

/*
[1]QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
[2]QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
[3]QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
[4]QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const
*/

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
$addMethod=find

$prototypeV2=QTextBlock findBlock( int pos ) const

$prototypeV2=QTextBlock findBlockByLineNumber( int lineNumber ) const

$prototypeV2=QTextBlock findBlockByNumber( int blockNumber ) const

$prototypeV2=QTextBlock firstBlock() const

$prototypeV2=qreal idealWidth() const

$prototypeV2=qreal indentWidth() const

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isModified() const

$prototypeV2=bool isRedoAvailable() const

$prototypeV2=bool isUndoAvailable() const

$prototypeV2=bool isUndoRedoEnabled() const

$prototypeV2=QTextBlock lastBlock() const

$prototypeV2=int lineCount() const

$prototypeV2=void markContentsDirty( int position, int length )

$prototypeV2=int maximumBlockCount() const

$prototypeV2=QString metaInformation( QTextDocument::MetaInformation info ) const

$prototypeV2=QTextObject * object( int objectIndex ) const

$prototypeV2=QTextObject * objectForFormat( const QTextFormat & f ) const

$prototypeV2=int pageCount() const

$prototypeV2=QSizeF pageSize() const

$prototypeV2=void print( QPrinter * printer ) const

$prototypeV2=QVariant resource( int type, const QUrl & name ) const

$prototypeV2=int revision() const

$prototypeV2=QTextFrame * rootFrame() const

$prototypeV2=void setDefaultCursorMoveStyle( Qt::CursorMoveStyle style )

$prototypeV2=void setDefaultFont( const QFont & font )

$prototypeV2=void setDefaultStyleSheet( const QString & sheet )

$prototypeV2=void setDefaultTextOption( const QTextOption & option )

$prototypeV2=void setDocumentLayout( QAbstractTextDocumentLayout * layout )

$prototypeV2=void setDocumentMargin( qreal margin )

$prototypeV2=void setHtml( const QString & html )

$prototypeV2=void setIndentWidth( qreal width )

$prototypeV2=void setMaximumBlockCount( int maximum )

$prototypeV2=void setMetaInformation( QTextDocument::MetaInformation info, const QString & string )

$prototypeV2=void setPageSize( const QSizeF & size )

$prototypeV2=void setPlainText( const QString & text )

$prototypeV2=void setTextWidth( qreal width )

$prototypeV2=void setUndoRedoEnabled( bool enable )

$prototypeV2=void setUseDesignMetrics( bool b )

$prototypeV2=QSizeF size() const

$prototypeV2=qreal textWidth() const

$prototypeV2=QString toHtml( const QByteArray & encoding = QByteArray() ) const

$prototypeV2=QString toPlainText() const

$prototypeV2=bool useDesignMetrics() const

$prototype=void redo ( QTextCursor * cursor )
$internalMethod=|void|redo,redo1|QTextCursor *

$prototype=void redo ()
$internalMethod=|void|redo,redo2|

/*
[1]void redo ( QTextCursor * cursor )
[2]void redo ()
*/

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
$addMethod=redo

$prototypeV2=void setModified( bool m = true )

$prototype=void undo ( QTextCursor * cursor )
$internalMethod=|void|undo,undo1|QTextCursor *

$prototype=void undo ()
$internalMethod=|void|undo,undo2|

/*
[1]void undo ( QTextCursor * cursor )
[2]void undo ()
*/

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
$addMethod=undo

$beginSignals
$signal=|blockCountChanged(int)
$signal=|contentsChange(int,int,int)
$signal=|contentsChanged()
$signal=|cursorPositionChanged(QTextCursor)
$signal=|documentLayoutChanged()
$signal=|modificationChanged(bool)
$signal=|redoAvailable(bool)
$signal=|undoAvailable(bool)
$signal=|undoCommandAdded()
$endSignals

#pragma ENDDUMP
