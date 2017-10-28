$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
REQUEST QICON
#endif

CLASS QIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD cacheKey
   METHOD isNull
   METHOD name
   METHOD paint1
   METHOD paint2
   METHOD paint
   METHOD pixmap1
   METHOD pixmap2
   METHOD pixmap3
   METHOD pixmap
   METHOD fromTheme
   METHOD hasThemeIcon
   METHOD setThemeName
   METHOD setThemeSearchPaths
   METHOD themeName
   METHOD themeSearchPaths

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIcon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QIcon ()
*/
$constructor=|new1|

/*
QIcon ( const QPixmap & pixmap )
*/
$constructor=|new2|const QPixmap &

/*
QIcon ( const QIcon & other )
*/
$constructor=|new3|const QIcon &

/*
QIcon ( const QString & fileName )
*/
$constructor=|new4|const QString &

/*
QIcon ( QIconEngine * engine )
*/
$constructor=|new5|QIconEngine *

/*
QIcon ( QIconEngineV2 * engine )
*/
$constructor=|new6|QIconEngineV2 *

//[1]QIcon ()
//[2]QIcon ( const QPixmap & pixmap )
//[3]QIcon ( const QIcon & other )
//[4]QIcon ( const QString & fileName )
//[5]QIcon ( QIconEngine * engine )
//[6]QIcon ( QIconEngineV2 * engine )

HB_FUNC_STATIC( QICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QICON_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QICON_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    HB_FUNC_EXEC( QICON_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QICON_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQICONENGINE(1) )
  {
    HB_FUNC_EXEC( QICON_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQICONENGINEV2(1) )
  {
    HB_FUNC_EXEC( QICON_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSize actualSize ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
$method=|QSize|actualSize|const QSize &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
void addFile ( const QString & fileName, const QSize & size = QSize(), Mode mode = Normal, State state = Off )
*/
$method=|void|addFile|const QString &,const QSize &=QSize(),QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
void addPixmap ( const QPixmap & pixmap, Mode mode = Normal, State state = Off )
*/
$method=|void|addPixmap|const QPixmap &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
QList<QSize> availableSizes ( Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_AVAILABLESIZES )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
    QList<QSize> list = obj->availableSizes ( (QIcon::Mode) par1, (QIcon::State) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
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
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
qint64 cacheKey () const
*/
$method=|qint64|cacheKey|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QString name () const
*/
$method=|QString|name|

/*
void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
$method=|void|paint,paint1|QPainter *,const QRect &,Qt::Alignment=Qt::AlignCenter,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
$method=|void|paint,paint2|QPainter *,int,int,int,int,Qt::Alignment=Qt::AlignCenter,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

//[1]void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
//[2]void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PAINT )
{
  if( ISBETWEEN(2,5) && ISQPAINTER(1) && ISQRECT(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QICON_PAINT1 );
  }
  else if( ISBETWEEN(5,8) && ISQPAINTER(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) && (ISNUM(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QICON_PAINT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
$method=|QPixmap|pixmap,pixmap1|const QSize &,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
*/
$method=|QPixmap|pixmap,pixmap2|int,int,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

/*
QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const
*/
$method=|QPixmap|pixmap,pixmap3|int,QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

//[1]QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
//[2]QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
//[3]QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PIXMAP )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QICON_PIXMAP1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QICON_PIXMAP2 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QICON_PIXMAP3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QIcon fromTheme ( const QString & name, const QIcon & fallback = QIcon() )
*/
HB_FUNC_STATIC( QICON_FROMTHEME )
{
  QIcon par2 = ISNIL(2)? QIcon() : ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
  QIcon * ptr = new QIcon( QIcon::fromTheme ( PQSTRING(1), par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QICON", true );
}

/*
static bool hasThemeIcon ( const QString & name )
*/
$staticMethod=|bool|hasThemeIcon|const QString &

/*
static void setThemeName ( const QString & name )
*/
$staticMethod=|void|setThemeName|const QString &

/*
static void setThemeSearchPaths ( const QStringList & paths )
*/
$staticMethod=|void|setThemeSearchPaths|const QStringList &

/*
static QString themeName ()
*/
$staticMethod=|QString|themeName|

/*
static QStringList themeSearchPaths ()
*/
$staticMethod=|QStringList|themeSearchPaths|

$extraMethods

#pragma ENDDUMP
