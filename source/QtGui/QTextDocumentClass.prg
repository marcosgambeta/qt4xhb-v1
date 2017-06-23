/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
   METHOD find1
   METHOD find2
   METHOD find3
   METHOD find4
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
   METHOD redo1
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
   METHOD undo1
   METHOD useDesignMetrics
   METHOD redo2
   METHOD redo
   METHOD setModified
   METHOD undo2
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

PROCEDURE destroyObject () CLASS QTextDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
HB_FUNC_STATIC( QTEXTDOCUMENT_NEW1 )
{
  QTextDocument * o = new QTextDocument ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTextDocument ( const QString & text, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_NEW2 )
{
  QTextDocument * o = new QTextDocument ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QTextDocument ( QObject * parent = 0 )
//[2]QTextDocument ( const QString & text, QObject * parent = 0 )

HB_FUNC_STATIC( QTEXTDOCUMENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENT_DELETE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addResource ( int type, const QUrl & name, const QVariant & resource )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ADDRESOURCE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addResource ( PINT(1), *PQURL(2), *PQVARIANT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void adjustSize ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ADJUSTSIZE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->adjustSize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVector<QTextFormat> allFormats () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ALLFORMATS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QTextFormat> list = obj->allFormats ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTFORMAT" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTFORMAT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
HB_FUNC_STATIC( QTEXTDOCUMENT_AVAILABLEREDOSTEPS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->availableRedoSteps () );
  }
}


/*
int availableUndoSteps () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_AVAILABLEUNDOSTEPS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->availableUndoSteps () );
  }
}


/*
QTextBlock begin () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_BEGIN )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->begin () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
int blockCount () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_BLOCKCOUNT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->blockCount () );
  }
}


/*
QChar characterAt ( int pos ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CHARACTERAT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->characterAt ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
int characterCount () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CHARACTERCOUNT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->characterCount () );
  }
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLEAR )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearUndoRedoStacks ( Stacks stacksToClear = UndoAndRedoStacks )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLEARUNDOREDOSTACKS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QTextDocument::UndoAndRedoStacks : hb_parni(1);
    obj->clearUndoRedoStacks ( (QTextDocument::Stacks) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextDocument * clone ( QObject * parent = 0 ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_CLONE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextDocument * ptr = obj->clone ( OPQOBJECT(1,0) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}


/*
Qt::CursorMoveStyle defaultCursorMoveStyle () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTCURSORMOVESTYLE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->defaultCursorMoveStyle () );
  }
}


/*
QFont defaultFont () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTFONT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->defaultFont () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
QString defaultStyleSheet () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTSTYLESHEET )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->defaultStyleSheet () );
  }
}


/*
QTextOption defaultTextOption () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DEFAULTTEXTOPTION )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->defaultTextOption () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
QAbstractTextDocumentLayout * documentLayout () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCUMENTLAYOUT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractTextDocumentLayout * ptr = obj->documentLayout ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTTEXTDOCUMENTLAYOUT" );
  }
}


/*
qreal documentMargin () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DOCUMENTMARGIN )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->documentMargin () );
  }
}


/*
void drawContents ( QPainter * p, const QRectF & rect = QRectF() )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_DRAWCONTENTS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF par2 = ISNIL(2)? QRectF() : *(QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->drawContents ( PQPAINTER(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextBlock end () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_END )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->end () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND1 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par2 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( PQSTRING(1), *par2, (QTextDocument::FindFlags) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND2 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCursor * par2 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( *par1, *par2, (QTextDocument::FindFlags) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND3 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( PQSTRING(1), OPINT(2,0), (QTextDocument::FindFlags) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIND4 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QTextCursor * ptr = new QTextCursor( obj->find ( *par1, OPINT(2,0), (QTextDocument::FindFlags) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


//[1]QTextCursor find ( const QString & subString, const QTextCursor & cursor, FindFlags options = 0 ) const
//[2]QTextCursor find ( const QRegExp & expr, const QTextCursor & cursor, FindFlags options = 0 ) const
//[3]QTextCursor find ( const QString & subString, int position = 0, FindFlags options = 0 ) const
//[4]QTextCursor find ( const QRegExp & expr, int position = 0, FindFlags options = 0 ) const

HB_FUNC_STATIC( QTEXTDOCUMENT_FIND )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISQTEXTCURSOR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND1 );
  }
  else if( ISBETWEEN(2,3) && ISQREGEXP(1) && ISQTEXTCURSOR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND3 );
  }
  else if( ISBETWEEN(1,3) && ISQREGEXP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_FIND4 );
  }
}

/*
QTextBlock findBlock ( int pos ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FINDBLOCK )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->findBlock ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock findBlockByLineNumber ( int lineNumber ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FINDBLOCKBYLINENUMBER )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->findBlockByLineNumber ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock findBlockByNumber ( int blockNumber ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FINDBLOCKBYNUMBER )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->findBlockByNumber ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
QTextBlock firstBlock () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_FIRSTBLOCK )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->firstBlock () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
qreal idealWidth () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_IDEALWIDTH )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->idealWidth () );
  }
}


/*
qreal indentWidth () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_INDENTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->indentWidth () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISEMPTY )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isModified () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISMODIFIED )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isModified () );
  }
}


/*
bool isRedoAvailable () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISREDOAVAILABLE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRedoAvailable () );
  }
}


/*
bool isUndoAvailable () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISUNDOAVAILABLE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isUndoAvailable () );
  }
}


/*
bool isUndoRedoEnabled () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ISUNDOREDOENABLED )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isUndoRedoEnabled () );
  }
}


/*
QTextBlock lastBlock () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_LASTBLOCK )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->lastBlock () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
int lineCount () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_LINECOUNT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineCount () );
  }
}


/*
void markContentsDirty ( int position, int length )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_MARKCONTENTSDIRTY )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->markContentsDirty ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int maximumBlockCount () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_MAXIMUMBLOCKCOUNT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maximumBlockCount () );
  }
}


/*
QString metaInformation ( MetaInformation info ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_METAINFORMATION )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->metaInformation ( (QTextDocument::MetaInformation) hb_parni(1) ) );
  }
}


/*
QTextObject * object ( int objectIndex ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_OBJECT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextObject * ptr = obj->object ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOBJECT" );
  }
}


/*
QTextObject * objectForFormat ( const QTextFormat & f ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_OBJECTFORFORMAT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFormat * par1 = (QTextFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextObject * ptr = obj->objectForFormat ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOBJECT" );
  }
}


/*
int pageCount () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_PAGECOUNT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->pageCount () );
  }
}


/*
QSizeF pageSize () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_PAGESIZE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->pageSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void print ( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_PRINT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPrinter * par1 = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->print ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void redo ( QTextCursor * cursor )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_REDO1 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->redo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant resource ( int type, const QUrl & name ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_RESOURCE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->resource ( PINT(1), *PQURL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
int revision () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_REVISION )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->revision () );
  }
}


/*
QTextFrame * rootFrame () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_ROOTFRAME )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextFrame * ptr = obj->rootFrame ();
    _qt4xhb_createReturnClass ( ptr, "QTEXTFRAME" );
  }
}


/*
void setDefaultCursorMoveStyle ( Qt::CursorMoveStyle style )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTCURSORMOVESTYLE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultCursorMoveStyle ( (Qt::CursorMoveStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultFont ( const QFont & font )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTFONT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultStyleSheet ( const QString & sheet )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTSTYLESHEET )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultStyleSheet ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultTextOption ( const QTextOption & option )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDEFAULTTEXTOPTION )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * par1 = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDefaultTextOption ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocumentLayout ( QAbstractTextDocumentLayout * layout )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDOCUMENTLAYOUT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractTextDocumentLayout * par1 = (QAbstractTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDocumentLayout ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDocumentMargin ( qreal margin )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETDOCUMENTMARGIN )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDocumentMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHtml ( const QString & html )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETHTML )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHtml ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndentWidth ( qreal width )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETINDENTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIndentWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumBlockCount ( int maximum )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETMAXIMUMBLOCKCOUNT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximumBlockCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMetaInformation ( MetaInformation info, const QString & string )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETMETAINFORMATION )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMetaInformation ( (QTextDocument::MetaInformation) par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageSize ( const QSizeF & size )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETPAGESIZE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPageSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETPLAINTEXT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPlainText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextWidth ( qreal width )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETTEXTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUndoRedoEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETUNDOREDOENABLED )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUndoRedoEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUseDesignMetrics ( bool b )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETUSEDESIGNMETRICS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUseDesignMetrics ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SIZE )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
qreal textWidth () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TEXTWIDTH )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->textWidth () );
  }
}


/*
QString toHtml ( const QByteArray & encoding = QByteArray() ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TOHTML )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQSTRING( obj->toHtml ( par1 ) );
  }
}


/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_TOPLAINTEXT )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toPlainText () );
  }
}


/*
void undo ( QTextCursor * cursor )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO1 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo ( PQTEXTCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool useDesignMetrics () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_USEDESIGNMETRICS )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->useDesignMetrics () );
  }
}


/*
void redo ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_REDO2 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void redo ( QTextCursor * cursor )
//[2]void redo ()

HB_FUNC_STATIC( QTEXTDOCUMENT_REDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_REDO1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_REDO2 );
  }
}

/*
void setModified ( bool m = true )
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_SETMODIFIED )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setModified ( OPBOOL(1,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void undo ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO2 )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void undo ( QTextCursor * cursor )
//[2]void undo ()

HB_FUNC_STATIC( QTEXTDOCUMENT_UNDO )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_UNDO1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENT_UNDO2 );
  }
}




#pragma ENDDUMP
