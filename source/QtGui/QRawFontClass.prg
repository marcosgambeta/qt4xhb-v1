/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QIMAGE
REQUEST QBYTEARRAY
REQUEST QPAINTERPATH
REQUEST QRAWFONT
#endif

CLASS QRawFont

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD advancesForGlyphIndexes1
   METHOD advancesForGlyphIndexes
   METHOD alphaMapForGlyph
   METHOD ascent
   METHOD averageCharWidth
   METHOD descent
   METHOD familyName
   METHOD fontTable
   METHOD glyphIndexesForString
   METHOD hintingPreference
   METHOD isValid
   METHOD leading
   METHOD loadFromData
   METHOD loadFromFile
   METHOD maxCharWidth
   METHOD pathForGlyph
   METHOD pixelSize
   METHOD setPixelSize
   METHOD style
   METHOD styleName
   METHOD supportedWritingSystems
   METHOD supportsCharacter1
   METHOD supportsCharacter2
   METHOD supportsCharacter
   METHOD unitsPerEm
   METHOD weight
   METHOD xHeight
   METHOD fromFont

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRawFont
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QRawFont>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QImage>

/*
QRawFont ()
*/
HB_FUNC_STATIC( QRAWFONT_NEW1 )
{
  QRawFont * o = new QRawFont ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
*/
HB_FUNC_STATIC( QRAWFONT_NEW2 )
{
  int par3 = ISNIL(3)? (int) QFont::PreferDefaultHinting : hb_parni(3);
  QRawFont * o = new QRawFont ( PQSTRING(1), PQREAL(2), (QFont::HintingPreference) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
*/
HB_FUNC_STATIC( QRAWFONT_NEW3 )
{
  int par3 = ISNIL(3)? (int) QFont::PreferDefaultHinting : hb_parni(3);
  QRawFont * o = new QRawFont ( *PQBYTEARRAY(1), PQREAL(2), (QFont::HintingPreference) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRawFont ( const QRawFont & other )
*/
HB_FUNC_STATIC( QRAWFONT_NEW4 )
{
  QRawFont * o = new QRawFont ( *PQRAWFONT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QRawFont ()
//[2]QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
//[3]QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
//[4]QRawFont ( const QRawFont & other )

HB_FUNC_STATIC( QRAWFONT_NEW )
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

HB_FUNC_STATIC( QRAWFONT_DELETE )
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
HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 )
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
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  HB_FUNC_EXEC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 );
}

/*
QImage alphaMapForGlyph ( quint32 glyphIndex, AntialiasingType antialiasingType = SubPixelAntialiasing, const QTransform & transform = QTransform() ) const
*/
HB_FUNC_STATIC( QRAWFONT_ALPHAMAPFORGLYPH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QRawFont::SubPixelAntialiasing : hb_parni(2);
    QTransform par3 = ISNIL(3)? QTransform() : *(QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QImage * ptr = new QImage( obj->alphaMapForGlyph ( PQUINT32(1), (QRawFont::AntialiasingType) par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
qreal ascent () const
*/
HB_FUNC_STATIC( QRAWFONT_ASCENT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}

/*
qreal averageCharWidth () const
*/
HB_FUNC_STATIC( QRAWFONT_AVERAGECHARWIDTH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->averageCharWidth () );
  }
}

/*
qreal descent () const
*/
HB_FUNC_STATIC( QRAWFONT_DESCENT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}

/*
QString familyName () const
*/
HB_FUNC_STATIC( QRAWFONT_FAMILYNAME )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->familyName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray fontTable ( const char * tagName ) const
*/
HB_FUNC_STATIC( QRAWFONT_FONTTABLE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->fontTable ( (const char *) hb_parc(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QVector<quint32> glyphIndexesForString ( const QString & text ) const
*/
HB_FUNC_STATIC( QRAWFONT_GLYPHINDEXESFORSTRING )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<quint32> list = obj->glyphIndexesForString ( PQSTRING(1) );
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
HB_FUNC_STATIC( QRAWFONT_HINTINGPREFERENCE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->hintingPreference () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QRAWFONT_ISVALID )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
qreal leading () const
*/
HB_FUNC_STATIC( QRAWFONT_LEADING )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->leading () );
  }
}

/*
void loadFromData ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QRAWFONT_LOADFROMDATA )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    obj->loadFromData ( *PQBYTEARRAY(1), PQREAL(2), (QFont::HintingPreference) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void loadFromFile ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QRAWFONT_LOADFROMFILE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    obj->loadFromFile ( PQSTRING(1), PQREAL(2), (QFont::HintingPreference) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal maxCharWidth () const
*/
HB_FUNC_STATIC( QRAWFONT_MAXCHARWIDTH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->maxCharWidth () );
  }
}

/*
QPainterPath pathForGlyph ( quint32 glyphIndex ) const
*/
HB_FUNC_STATIC( QRAWFONT_PATHFORGLYPH )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->pathForGlyph ( PQUINT32(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
qreal pixelSize () const
*/
HB_FUNC_STATIC( QRAWFONT_PIXELSIZE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->pixelSize () );
  }
}

/*
void setPixelSize ( qreal pixelSize )
*/
HB_FUNC_STATIC( QRAWFONT_SETPIXELSIZE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixelSize ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont::Style style () const
*/
HB_FUNC_STATIC( QRAWFONT_STYLE )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->style () );
  }
}

/*
QString styleName () const
*/
HB_FUNC_STATIC( QRAWFONT_STYLENAME )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->styleName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QFontDatabase::WritingSystem> supportedWritingSystems () const
*/
HB_FUNC_STATIC( QRAWFONT_SUPPORTEDWRITINGSYSTEMS )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->supportedWritingSystems ();
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
HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER1 )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->supportsCharacter ( *par1 ) );
  }
}

/*
bool supportsCharacter ( quint32 ucs4 ) const
*/
HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER2 )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsCharacter ( PQUINT32(1) ) );
  }
}

//[1]bool supportsCharacter ( QChar character ) const
//[2]bool supportsCharacter ( quint32 ucs4 ) const

HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER )
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
HB_FUNC_STATIC( QRAWFONT_UNITSPEREM )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->unitsPerEm () );
  }
}

/*
int weight () const
*/
HB_FUNC_STATIC( QRAWFONT_WEIGHT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->weight () );
  }
}

/*
qreal xHeight () const
*/
HB_FUNC_STATIC( QRAWFONT_XHEIGHT )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->xHeight () );
  }
}

/*
QRawFont fromFont ( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )
*/
HB_FUNC_STATIC( QRAWFONT_FROMFONT )
{
  int par2 = ISNIL(2)? (int) QFontDatabase::Any : hb_parni(2);
  QRawFont * ptr = new QRawFont( QRawFont::fromFont ( *PQFONT(1), (QFontDatabase::WritingSystem) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QRAWFONT", true );
}

HB_FUNC_STATIC( QRAWFONT_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QRAWFONT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QRAWFONT_NEWFROM );
}

HB_FUNC_STATIC( QRAWFONT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QRAWFONT_NEWFROM );
}

HB_FUNC_STATIC( QRAWFONT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QRAWFONT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
