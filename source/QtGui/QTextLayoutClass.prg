/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QTEXTLINE
REQUEST QFONT
REQUEST QGLYPHRUN
REQUEST QPOINTF
REQUEST QTEXTOPTION

CLASS QTextLayout

   DATA pointer
   DATA class_id INIT Class_Id_QTextLayout
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QTextLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextLayout>

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

/*
QTextLayout ()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW1 )
{
  QTextLayout * o = NULL;
  o = new QTextLayout (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextLayout ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW2 )
{
  QTextLayout * o = NULL;
  QString par1 = hb_parc(1);
  o = new QTextLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW3 )
{
  QTextLayout * o = NULL;
  QString par1 = hb_parc(1);
  QFont * par2 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPaintDevice * par3 = ISNIL(3)? 0 : (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextLayout ( par1, *par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


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

HB_FUNC_STATIC( QTEXTLAYOUT_DELETE )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void beginLayout ()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_BEGINLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->beginLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_BOUNDINGRECT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool cacheEnabled () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CACHEENABLED )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->cacheEnabled (  ) );
  }
}


/*
void clearAdditionalFormats ()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CLEARADDITIONALFORMATS )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearAdditionalFormats (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearLayout ()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CLEARLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLine createLine ()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CREATELINE )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->createLine (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
Qt::CursorMoveStyle cursorMoveStyle () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CURSORMOVESTYLE )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->cursorMoveStyle (  ) );
  }
}



/*
void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR1 )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->drawCursor ( par1, *par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR2 )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    obj->drawCursor ( par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
}

/*
void endLayout ()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ENDLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_FONT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
QList<QGlyphRun> glyphRuns () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_GLYPHRUNS )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGLYPHRUN" );
    #else
    pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
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
HB_FUNC_STATIC( QTEXTLAYOUT_ISVALIDCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isValidCursorPosition ( par1 ) );
  }
}


/*
int leftCursorPosition ( int oldPos ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LEFTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->leftCursorPosition ( par1 ) );
  }
}


/*
QTextLine lineAt ( int i ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINEAT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextLine * ptr = new QTextLine( obj->lineAt ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
int lineCount () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINECOUNT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->lineCount (  ) );
  }
}


/*
QTextLine lineForTextPosition ( int pos ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINEFORTEXTPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextLine * ptr = new QTextLine( obj->lineForTextPosition ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
qreal maximumWidth () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_MAXIMUMWIDTH )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->maximumWidth (  );
    hb_retnd( r );
  }
}


/*
qreal minimumWidth () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_MINIMUMWIDTH )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->minimumWidth (  );
    hb_retnd( r );
  }
}


/*
int nextCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEXTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextLayout::SkipCharacters : hb_parni(2);
    hb_retni( obj->nextCursorPosition ( par1,  (QTextLayout::CursorMode) par2 ) );
  }
}


/*
QPointF position () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_POSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
int preeditAreaPosition () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREEDITAREAPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->preeditAreaPosition (  ) );
  }
}


/*
QString preeditAreaText () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREEDITAREATEXT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->preeditAreaText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int previousCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREVIOUSCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QTextLayout::SkipCharacters : hb_parni(2);
    hb_retni( obj->previousCursorPosition ( par1,  (QTextLayout::CursorMode) par2 ) );
  }
}


/*
int rightCursorPosition ( int oldPos ) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_RIGHTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->rightCursorPosition ( par1 ) );
  }
}



/*
void setCacheEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETCACHEENABLED )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setCacheEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCursorMoveStyle ( Qt::CursorMoveStyle style )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETCURSORMOVESTYLE )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCursorMoveStyle (  (Qt::CursorMoveStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETFONT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosition ( const QPointF & p )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETPOSITION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPosition ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreeditArea ( int position, const QString & text )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETPREEDITAREA )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setPreeditArea ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & string )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETTEXT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTextOption ( const QTextOption & option )
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETTEXTOPTION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * par1 = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTextOption ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_TEXT )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QTextOption textOption () const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_TEXTOPTION )
{
  QTextLayout * obj = (QTextLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->textOption (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


HB_FUNC_STATIC( QTEXTLAYOUT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTLAYOUT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTLAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLAYOUT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTLAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLAYOUT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTLAYOUT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
