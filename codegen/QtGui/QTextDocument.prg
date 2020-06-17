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

$prototype=void addResource ( int type, const QUrl & name, const QVariant & resource )
$method=|void|addResource|int,const QUrl &,const QVariant &

$prototypeV2=void adjustSize()

$prototype=QVector<QTextFormat> allFormats () const
$method=|QVector<QTextFormat>|allFormats|

$prototypeV2=int availableRedoSteps() const

$prototypeV2=int availableUndoSteps() const

$prototypeV2=QTextBlock begin() const

$prototypeV2=int blockCount() const

$prototype=QChar characterAt ( int pos ) const
$method=|QChar|characterAt|int

$prototypeV2=int characterCount() const

$prototypeV2=virtual void clear()

$prototype=void clearUndoRedoStacks ( Stacks stacksToClear = UndoAndRedoStacks )
$method=|void|clearUndoRedoStacks|QTextDocument::Stacks=QTextDocument::UndoAndRedoStacks

$prototype=QTextDocument * clone ( QObject * parent = 0 ) const
$method=|QTextDocument *|clone|QObject *=0

$prototypeV2=Qt::CursorMoveStyle defaultCursorMoveStyle() const

$prototypeV2=QFont defaultFont() const

$prototypeV2=QString defaultStyleSheet() const

$prototypeV2=QTextOption defaultTextOption() const

$prototypeV2=QAbstractTextDocumentLayout * documentLayout() const

$prototypeV2=qreal documentMargin() const

$prototype=void drawContents ( QPainter * p, const QRectF & rect = QRectF() )
$method=|void|drawContents|QPainter *,const QRectF &=QRectF()

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

$prototype=QTextBlock findBlock ( int pos ) const
$method=|QTextBlock|findBlock|int

$prototype=QTextBlock findBlockByLineNumber ( int lineNumber ) const
$method=|QTextBlock|findBlockByLineNumber|int

$prototype=QTextBlock findBlockByNumber ( int blockNumber ) const
$method=|QTextBlock|findBlockByNumber|int

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

$prototype=void markContentsDirty ( int position, int length )
$method=|void|markContentsDirty|int,int

$prototypeV2=int maximumBlockCount() const

$prototype=QString metaInformation ( MetaInformation info ) const
$method=|QString|metaInformation|QTextDocument::MetaInformation

$prototype=QTextObject * object ( int objectIndex ) const
$method=|QTextObject *|object|int

$prototype=QTextObject * objectForFormat ( const QTextFormat & f ) const
$method=|QTextObject *|objectForFormat|const QTextFormat &

$prototypeV2=int pageCount() const

$prototypeV2=QSizeF pageSize() const

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$prototype=QVariant resource ( int type, const QUrl & name ) const
$method=|QVariant|resource|int,const QUrl &

$prototypeV2=int revision() const

$prototypeV2=QTextFrame * rootFrame() const

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

$prototypeV2=QSizeF size() const

$prototypeV2=qreal textWidth() const

$prototype=QString toHtml ( const QByteArray & encoding = QByteArray() ) const
$method=|QString|toHtml|const QByteArray &=QByteArray()

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

$prototype=void setModified ( bool m = true )
$method=|void|setModified|bool=true

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
