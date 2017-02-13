/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QPIXMAP
REQUEST QICON

CLASS QIcon

   DATA pointer
   DATA class_id INIT Class_Id_QIcon
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QIcon
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QIcon
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QIcon
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QIcon
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QIcon
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QIcon>

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
QIcon ()
*/
HB_FUNC( QICON_NEW1 )
{
  QIcon * o = NULL;
  o = new QIcon (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QIcon ( const QPixmap & pixmap )
*/
HB_FUNC( QICON_NEW2 )
{
  QIcon * o = NULL;
  QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QIcon ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QIcon ( const QIcon & other )
*/
HB_FUNC( QICON_NEW3 )
{
  QIcon * o = NULL;
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  o = new QIcon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QIcon ( const QString & fileName )
*/
HB_FUNC( QICON_NEW4 )
{
  QIcon * o = NULL;
  QString par1 = hb_parc(1);
  o = new QIcon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QIcon ( QIconEngine * engine )
*/
HB_FUNC( QICON_NEW5 )
{
  QIcon * o = NULL;
  QIconEngine * par1 = (QIconEngine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QIcon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QIcon ( QIconEngineV2 * engine )
*/
HB_FUNC( QICON_NEW6 )
{
  QIcon * o = NULL;
  QIconEngineV2 * par1 = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QIcon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIcon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QIcon ()
//[2]QIcon ( const QPixmap & pixmap )
//[3]QIcon ( const QIcon & other )
//[4]QIcon ( const QString & fileName )
//[5]QIcon ( QIconEngine * engine )
//[6]QIcon ( QIconEngineV2 * engine )

HB_FUNC( QICON_NEW )
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

HB_FUNC( QICON_DELETE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSize actualSize ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_ACTUALSIZE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    QSize * ptr = new QSize( obj->actualSize ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void addFile ( const QString & fileName, const QSize & size = QSize(), Mode mode = Normal, State state = Off )
*/
HB_FUNC( QICON_ADDFILE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSize par2 = ISNIL(2)? QSize() : *(QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) QIcon::Normal : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIcon::Off : hb_parni(4);
    obj->addFile ( par1, par2,  (QIcon::Mode) par3,  (QIcon::State) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addPixmap ( const QPixmap & pixmap, Mode mode = Normal, State state = Off )
*/
HB_FUNC( QICON_ADDPIXMAP )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    obj->addPixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QSize> availableSizes ( Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_AVAILABLESIZES )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
    QList<QSize> list = obj->availableSizes (  (QIcon::Mode) par1,  (QIcon::State) par2 );
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
HB_FUNC( QICON_CACHEKEY )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->cacheKey (  );
    hb_retni( i );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QICON_ISNULL )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
QString name () const
*/
HB_FUNC( QICON_NAME )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_PAINT1 )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * par2 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) Qt::AlignCenter : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIcon::Normal : hb_parni(4);
    int par5 = ISNIL(5)? (int) QIcon::Off : hb_parni(5);
    obj->paint ( par1, *par2,  (Qt::Alignment) par3,  (QIcon::Mode) par4,  (QIcon::State) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_PAINT2 )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = hb_parni(5);
    int par6 = ISNIL(6)? (int) Qt::AlignCenter : hb_parni(6);
    int par7 = ISNIL(7)? (int) QIcon::Normal : hb_parni(7);
    int par8 = ISNIL(8)? (int) QIcon::Off : hb_parni(8);
    obj->paint ( par1, par2, par3, par4, par5,  (Qt::Alignment) par6,  (QIcon::Mode) par7,  (QIcon::State) par8 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
//[2]void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const

HB_FUNC( QICON_PAINT )
{
  if( ISBETWEEN(2,5) && ISQPAINTER(1) && ISQRECT(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QICON_PAINT1 );
  }
  else if( ISBETWEEN(5,8) && ISQPAINTER(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) && (ISNUM(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QICON_PAINT2 );
  }
}

/*
QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_PIXMAP1 )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( *par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_PIXMAP2 )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Normal : hb_parni(3);
    int par4 = ISNIL(4)? (int) QIcon::Off : hb_parni(4);
    QPixmap * ptr = new QPixmap( obj->pixmap ( par1, par2,  (QIcon::Mode) par3,  (QIcon::State) par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC( QICON_PIXMAP3 )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Normal : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIcon::Off : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->pixmap ( par1,  (QIcon::Mode) par2,  (QIcon::State) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


//[1]QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
//[2]QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
//[3]QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const

HB_FUNC( QICON_PIXMAP )
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
}


/*
QIcon fromTheme ( const QString & name, const QIcon & fallback = QIcon() )
*/
HB_FUNC( QICON_FROMTHEME )
{
  QString par1 = hb_parc(1);
  QIcon par2 = ISNIL(2)? QIcon() : ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
  QIcon * ptr = new QIcon( QIcon::fromTheme ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QICON", true );}


/*
bool hasThemeIcon ( const QString & name )
*/
HB_FUNC( QICON_HASTHEMEICON )
{
  QString par1 = hb_parc(1);
  bool b = QIcon::hasThemeIcon ( par1 );
  hb_retl( b );
}


/*
void setThemeName ( const QString & name )
*/
HB_FUNC( QICON_SETTHEMENAME )
{
  QString par1 = hb_parc(1);
  QIcon::setThemeName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setThemeSearchPaths ( const QStringList & paths )
*/
HB_FUNC( QICON_SETTHEMESEARCHPATHS )
{
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
  QIcon::setThemeSearchPaths ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString themeName ()
*/
HB_FUNC( QICON_THEMENAME )
{
  QString str1 = QIcon::themeName (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList themeSearchPaths ()
*/
HB_FUNC( QICON_THEMESEARCHPATHS )
{
  QStringList strl = QIcon::themeSearchPaths (  );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}




#pragma ENDDUMP
