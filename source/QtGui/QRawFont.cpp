/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QRawFont>

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

#include <QImage>

/*
QRawFont ()
*/
HB_FUNC( QRAWFONT_NEW1 )
{
  QRawFont * o = NULL;
  o = new QRawFont (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
*/
HB_FUNC( QRAWFONT_NEW2 )
{
  QRawFont * o = NULL;
  QString par1 = hb_parc(1);
  qreal par2 = hb_parnd(2);
  int par3 = ISNIL(3)? (int) QFont::PreferDefaultHinting : hb_parni(3);
  o = new QRawFont ( par1, par2,  (QFont::HintingPreference) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
*/
HB_FUNC( QRAWFONT_NEW3 )
{
  QRawFont * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  qreal par2 = hb_parnd(2);
  int par3 = ISNIL(3)? (int) QFont::PreferDefaultHinting : hb_parni(3);
  o = new QRawFont ( *par1, par2,  (QFont::HintingPreference) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QRawFont ( const QRawFont & other )
*/
HB_FUNC( QRAWFONT_NEW4 )
{
  QRawFont * o = NULL;
  QRawFont * par1 = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QRawFont ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRawFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QRawFont ()
//[2]QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
//[3]QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
//[4]QRawFont ( const QRawFont & other )

HB_FUNC( QRAWFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQRAWFONT(1) )
  {
    HB_FUNC_EXEC( QRAWFONT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QRAWFONT_DELETE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QVector<QPointF> advancesForGlyphIndexes ( const QVector<quint32> & glyphIndexes ) const
*/
HB_FUNC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QVector<quint32> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetNI(aValues1, i1+1);
par1 << temp1;
}
    QVector<QPointF> list = obj->advancesForGlyphIndexes ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPOINTF" );
    #else
    pDynSym = hb_dynsymFindName( "QPOINTF" );
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
        hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



//[1]QVector<QPointF> advancesForGlyphIndexes ( const QVector<quint32> & glyphIndexes ) const
//[2]bool advancesForGlyphIndexes ( const quint32 * glyphIndexes, QPointF * advances, int numGlyphs ) const

HB_FUNC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  HB_FUNC_EXEC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 );
}

/*
QImage alphaMapForGlyph ( quint32 glyphIndex, AntialiasingType antialiasingType = SubPixelAntialiasing, const QTransform & transform = QTransform() ) const
*/
HB_FUNC( QRAWFONT_ALPHAMAPFORGLYPH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint32 par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QRawFont::SubPixelAntialiasing : hb_parni(2);
    QTransform par3 = ISNIL(3)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QImage * ptr = new QImage( obj->alphaMapForGlyph ( par1,  (QRawFont::AntialiasingType) par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );  }
}


/*
qreal ascent () const
*/
HB_FUNC( QRAWFONT_ASCENT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->ascent (  );
    hb_retnd( r );
  }
}


/*
qreal averageCharWidth () const
*/
HB_FUNC( QRAWFONT_AVERAGECHARWIDTH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->averageCharWidth (  );
    hb_retnd( r );
  }
}


/*
qreal descent () const
*/
HB_FUNC( QRAWFONT_DESCENT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->descent (  );
    hb_retnd( r );
  }
}


/*
QString familyName () const
*/
HB_FUNC( QRAWFONT_FAMILYNAME )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->familyName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QByteArray fontTable ( const char * tagName ) const
*/
HB_FUNC( QRAWFONT_FONTTABLE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QByteArray * ptr = new QByteArray( obj->fontTable (  (const char *) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}



/*
QVector<quint32> glyphIndexesForString ( const QString & text ) const
*/
HB_FUNC( QRAWFONT_GLYPHINDEXESFORSTRING )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVector<quint32> list = obj->glyphIndexesForString ( par1 );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QFont::HintingPreference hintingPreference () const
*/
HB_FUNC( QRAWFONT_HINTINGPREFERENCE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->hintingPreference (  );
    hb_retni( i );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QRAWFONT_ISVALID )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
qreal leading () const
*/
HB_FUNC( QRAWFONT_LEADING )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->leading (  );
    hb_retnd( r );
  }
}


/*
void loadFromData ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC( QRAWFONT_LOADFROMDATA )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    obj->loadFromData ( *par1, par2,  (QFont::HintingPreference) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void loadFromFile ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC( QRAWFONT_LOADFROMFILE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    obj->loadFromFile ( par1, par2,  (QFont::HintingPreference) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal maxCharWidth () const
*/
HB_FUNC( QRAWFONT_MAXCHARWIDTH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->maxCharWidth (  );
    hb_retnd( r );
  }
}


/*
QPainterPath pathForGlyph ( quint32 glyphIndex ) const
*/
HB_FUNC( QRAWFONT_PATHFORGLYPH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint32 par1 = hb_parni(1);
    QPainterPath * ptr = new QPainterPath( obj->pathForGlyph ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );  }
}


/*
qreal pixelSize () const
*/
HB_FUNC( QRAWFONT_PIXELSIZE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->pixelSize (  );
    hb_retnd( r );
  }
}


/*
void setPixelSize ( qreal pixelSize )
*/
HB_FUNC( QRAWFONT_SETPIXELSIZE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPixelSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont::Style style () const
*/
HB_FUNC( QRAWFONT_STYLE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->style (  );
    hb_retni( i );
  }
}


/*
QString styleName () const
*/
HB_FUNC( QRAWFONT_STYLENAME )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->styleName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QList<QFontDatabase::WritingSystem> supportedWritingSystems () const
*/
HB_FUNC( QRAWFONT_SUPPORTEDWRITINGSYSTEMS )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->supportedWritingSystems (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool supportsCharacter ( QChar character ) const
*/
HB_FUNC( QRAWFONT_SUPPORTSCHARACTER1 )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->supportsCharacter ( *par1 );
    hb_retl( b );
  }
}


/*
bool supportsCharacter ( quint32 ucs4 ) const
*/
HB_FUNC( QRAWFONT_SUPPORTSCHARACTER2 )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint32 par1 = hb_parni(1);
    bool b = obj->supportsCharacter ( par1 );
    hb_retl( b );
  }
}


//[1]bool supportsCharacter ( QChar character ) const
//[2]bool supportsCharacter ( quint32 ucs4 ) const

HB_FUNC( QRAWFONT_SUPPORTSCHARACTER )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QRAWFONT_SUPPORTSCHARACTER1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QRAWFONT_SUPPORTSCHARACTER2 );
  }
}

/*
qreal unitsPerEm () const
*/
HB_FUNC( QRAWFONT_UNITSPEREM )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->unitsPerEm (  );
    hb_retnd( r );
  }
}


/*
int weight () const
*/
HB_FUNC( QRAWFONT_WEIGHT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->weight (  );
    hb_retni( i );
  }
}


/*
qreal xHeight () const
*/
HB_FUNC( QRAWFONT_XHEIGHT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->xHeight (  );
    hb_retnd( r );
  }
}



/*
QRawFont fromFont ( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )
*/
HB_FUNC( QRAWFONT_FROMFONT )
{
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QFontDatabase::Any : hb_parni(2);
  QRawFont * ptr = new QRawFont( QRawFont::fromFont ( *par1,  (QFontDatabase::WritingSystem) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QRAWFONT", true );}



