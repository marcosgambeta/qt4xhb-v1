$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTLINE
REQUEST QFONT
REQUEST QGLYPHRUN
REQUEST QPOINTF
REQUEST QTEXTOPTION
#endif

CLASS QTextLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD beginLayout
   METHOD boundingRect
   METHOD cacheEnabled
   METHOD clearAdditionalFormats
   METHOD clearLayout
   METHOD createLine
   METHOD cursorMoveStyle
   METHOD drawCursor1
   METHOD drawCursor2
   METHOD drawCursor
   METHOD endLayout
   METHOD font
   METHOD glyphRuns
   METHOD isValidCursorPosition
   METHOD leftCursorPosition
   METHOD lineAt
   METHOD lineCount
   METHOD lineForTextPosition
   METHOD maximumWidth
   METHOD minimumWidth
   METHOD nextCursorPosition
   METHOD position
   METHOD preeditAreaPosition
   METHOD preeditAreaText
   METHOD previousCursorPosition
   METHOD rightCursorPosition
   METHOD setCacheEnabled
   METHOD setCursorMoveStyle
   METHOD setFont
   METHOD setPosition
   METHOD setPreeditArea
   METHOD setText
   METHOD setTextOption
   METHOD text
   METHOD textOption

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextLayout ()
*/
$constructor=|new1|

/*
QTextLayout ( const QString & text )
*/
$constructor=|new2|const QString &

/*
QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )
*/
$constructor=|new3|const QString &,const QFont &,QPaintDevice *=0

//[1]QTextLayout ()
//[2]QTextLayout ( const QString & text )
//[3]QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )

HB_FUNC_STATIC( QTEXTLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQFONT(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void beginLayout ()
*/
$method=|void|beginLayout|

/*
QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
bool cacheEnabled () const
*/
$method=|bool|cacheEnabled|

/*
void clearAdditionalFormats ()
*/
$method=|void|clearAdditionalFormats|

/*
void clearLayout ()
*/
$method=|void|clearLayout|

/*
QTextLine createLine ()
*/
$method=|QTextLine|createLine|

/*
Qt::CursorMoveStyle cursorMoveStyle () const
*/
$method=|Qt::CursorMoveStyle|cursorMoveStyle|

/*
void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
*/
$method=|void|drawCursor,drawCursor1|QPainter *,const QPointF &,int,int

/*
void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const
*/
$method=|void|drawCursor,drawCursor2|QPainter *,const QPointF &,int

//[1]void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
//[2]void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const

HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR )
{
  if( ISNUMPAR(4) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_DRAWCURSOR1 );
  }
  else if( ISNUMPAR(3) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_DRAWCURSOR2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void endLayout ()
*/
$method=|void|endLayout|

/*
QFont font () const
*/
$method=|QFont|font|

/*
QList<QGlyphRun> glyphRuns () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_GLYPHRUNS )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
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
        hb_itemPutPtr( pItem, (QGlyphRun *) new QGlyphRun ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool isValidCursorPosition ( int pos ) const
*/
$method=|bool|isValidCursorPosition|int

/*
int leftCursorPosition ( int oldPos ) const
*/
$method=|int|leftCursorPosition|int

/*
QTextLine lineAt ( int i ) const
*/
$method=|QTextLine|lineAt|int

/*
int lineCount () const
*/
$method=|int|lineCount|

/*
QTextLine lineForTextPosition ( int pos ) const
*/
$method=|QTextLine|lineForTextPosition|int

/*
qreal maximumWidth () const
*/
$method=|qreal|maximumWidth|

/*
qreal minimumWidth () const
*/
$method=|qreal|minimumWidth|

/*
int nextCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
*/
$method=|int|nextCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

/*
QPointF position () const
*/
$method=|QPointF|position|

/*
int preeditAreaPosition () const
*/
$method=|int|preeditAreaPosition|

/*
QString preeditAreaText () const
*/
$method=|QString|preeditAreaText|

/*
int previousCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
*/
$method=|int|previousCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

/*
int rightCursorPosition ( int oldPos ) const
*/
$method=|int|rightCursorPosition|int

/*
void setCacheEnabled ( bool enable )
*/
$method=|void|setCacheEnabled|bool

/*
void setCursorMoveStyle ( Qt::CursorMoveStyle style )
*/
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setPosition ( const QPointF & p )
*/
$method=|void|setPosition|const QPointF &

/*
void setPreeditArea ( int position, const QString & text )
*/
$method=|void|setPreeditArea|int,const QString &

/*
void setText ( const QString & string )
*/
$method=|void|setText|const QString &

/*
void setTextOption ( const QTextOption & option )
*/
$method=|void|setTextOption|const QTextOption &

/*
QString text () const
*/
$method=|QString|text|

/*
QTextOption textOption () const
*/
$method=|QTextOption|textOption|

$extraMethods

#pragma ENDDUMP
