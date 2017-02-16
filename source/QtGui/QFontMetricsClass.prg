/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QSIZE

CLASS QFontMetrics

   DATA pointer
   DATA class_id INIT Class_Id_QFontMetrics
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect4
   METHOD boundingRect
   METHOD descent
   METHOD elidedText
   METHOD height
   METHOD inFont
   METHOD inFontUcs4
   METHOD leading
   METHOD leftBearing
   METHOD lineSpacing
   METHOD lineWidth
   METHOD maxWidth
   METHOD minLeftBearing
   METHOD minRightBearing
   METHOD overlinePos
   METHOD rightBearing
   METHOD size
   METHOD strikeOutPos
   METHOD tightBoundingRect
   METHOD underlinePos
   METHOD width1
   METHOD width2
   METHOD width
   METHOD xHeight
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QFontMetrics
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QFontMetrics
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QFontMetrics
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QFontMetrics
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QFontMetrics
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QFontMetrics
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFontMetrics>

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
QFontMetrics ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW1 )
{
  QFontMetrics * o = NULL;
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontMetrics ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetrics *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW2 )
{
  QFontMetrics * o = NULL;
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPaintDevice * par2 = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontMetrics ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetrics *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QFontMetrics ( const QFontMetrics & fm )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW3 )
{
  QFontMetrics * o = NULL;
  QFontMetrics * par1 = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontMetrics ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetrics *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QFontMetrics ( const QFont & font )
//[2]QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetrics ( const QFontMetrics & fm )

HB_FUNC_STATIC( QFONTMETRICS_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTMETRICS_DELETE )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int ascent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_ASCENT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->ascent (  );
    hb_retni( i );
  }
}


/*
int averageCharWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_AVERAGECHARWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->averageCharWidth (  );
    hb_retni( i );
  }
}


/*
QRect boundingRect ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT1 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->boundingRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect boundingRect ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT2 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QRect * ptr = new QRect( obj->boundingRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT3 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = hb_parni(5);
    QString par6 = hb_parc(6);
    int par7 = hb_parni(7);
    int* par8 = (int*) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->boundingRect ( par1, par2, par3, par4, par5, par6, par7, par8 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT4 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect  * par1 = (QRect  *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QString par3 = hb_parc(3);
    int par4 = hb_parni(4);
    int* par5 = (int*) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->boundingRect ( *par1, par2, par3, par4, par5 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT2 );
  }
  else if( ISBETWEEN(6,8) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISNUM(7)||ISNIL(7)) && (ISARRAY(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT3 );
  }
  else if( ISBETWEEN(3,5) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT4 );
  }
}

/*
int descent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_DESCENT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->descent (  );
    hb_retni( i );
  }
}


/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, int width, int flags = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_ELIDEDTEXT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = ISNIL(4)? 0 : hb_parni(4);
    QString str1 = obj->elidedText ( par1,  (Qt::TextElideMode) par2, par3, par4 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QFONTMETRICS_HEIGHT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->height (  );
    hb_retni( i );
  }
}


/*
bool inFont ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_INFONT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->inFont ( *par1 ) );
  }
}


/*
bool inFontUcs4 ( uint character ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_INFONTUCS4 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    hb_retl( obj->inFontUcs4 ( par1 ) );
  }
}


/*
int leading () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LEADING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->leading (  );
    hb_retni( i );
  }
}


/*
int leftBearing ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_LEFTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->leftBearing ( *par1 );
    hb_retni( i );
  }
}


/*
int lineSpacing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LINESPACING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->lineSpacing (  );
    hb_retni( i );
  }
}


/*
int lineWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LINEWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->lineWidth (  );
    hb_retni( i );
  }
}


/*
int maxWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MAXWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->maxWidth (  );
    hb_retni( i );
  }
}


/*
int minLeftBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MINLEFTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->minLeftBearing (  );
    hb_retni( i );
  }
}


/*
int minRightBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MINRIGHTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->minRightBearing (  );
    hb_retni( i );
  }
}


/*
int overlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_OVERLINEPOS )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->overlinePos (  );
    hb_retni( i );
  }
}


/*
int rightBearing ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_RIGHTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->rightBearing ( *par1 );
    hb_retni( i );
  }
}


/*
QSize size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_SIZE )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    int* par4 = (int*) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->size ( par1, par2, par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int strikeOutPos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_STRIKEOUTPOS )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->strikeOutPos (  );
    hb_retni( i );
  }
}


/*
QRect tightBoundingRect ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_TIGHTBOUNDINGRECT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QRect * ptr = new QRect( obj->tightBoundingRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int underlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_UNDERLINEPOS )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->underlinePos (  );
    hb_retni( i );
  }
}


/*
int width ( const QString & text, int len = -1 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_WIDTH1 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? -1 : hb_parni(2);
    int i = obj->width ( par1, par2 );
    hb_retni( i );
  }
}


/*
int width ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_WIDTH2 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->width ( *par1 );
    hb_retni( i );
  }
}


//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH2 );
  }
}

/*
int xHeight () const
*/
HB_FUNC_STATIC( QFONTMETRICS_XHEIGHT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->xHeight (  );
    hb_retni( i );
  }
}





#pragma ENDDUMP
