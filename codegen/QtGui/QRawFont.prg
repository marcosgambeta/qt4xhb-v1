$header

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

$destructor

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

$deleteMethod

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

HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  HB_FUNC_EXEC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 );
}

/*
QImage alphaMapForGlyph ( quint32 glyphIndex, AntialiasingType antialiasingType = SubPixelAntialiasing, const QTransform & transform = QTransform() ) const
*/
$method=|QImage|alphaMapForGlyph|quint32,QRawFont::AntialiasingType=QRawFont::SubPixelAntialiasing,const QTransform &=QTransform()

/*
qreal ascent () const
*/
$method=|qreal|ascent|

/*
qreal averageCharWidth () const
*/
$method=|qreal|averageCharWidth|

/*
qreal descent () const
*/
$method=|qreal|descent|

/*
QString familyName () const
*/
$method=|QString|familyName|

/*
QByteArray fontTable ( const char * tagName ) const
*/
$method=|QByteArray|fontTable|const char *

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
$method=|QFont::HintingPreference|hintingPreference|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qreal leading () const
*/
$method=|qreal|leading|

/*
void loadFromData ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
$method=|void|loadFromData|const QByteArray &,qreal,QFont::HintingPreference

/*
void loadFromFile ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
$method=|void|loadFromFile|const QString &,qreal,QFont::HintingPreference

/*
qreal maxCharWidth () const
*/
$method=|qreal|maxCharWidth|

/*
QPainterPath pathForGlyph ( quint32 glyphIndex ) const
*/
$method=|QPainterPath|pathForGlyph|quint32

/*
qreal pixelSize () const
*/
$method=|qreal|pixelSize|

/*
void setPixelSize ( qreal pixelSize )
*/
$method=|void|setPixelSize|qreal

/*
QFont::Style style () const
*/
$method=|QFont::Style|style|

/*
QString styleName () const
*/
$method=|QString|styleName|

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
$method=|bool|supportsCharacter,supportsCharacter1|QChar

/*
bool supportsCharacter ( quint32 ucs4 ) const
*/
$method=|bool|supportsCharacter,supportsCharacter2|quint32

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal unitsPerEm () const
*/
$method=|qreal|unitsPerEm|

/*
int weight () const
*/
$method=|int|weight|

/*
qreal xHeight () const
*/
$method=|qreal|xHeight|

/*
QRawFont fromFont ( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )
*/
HB_FUNC_STATIC( QRAWFONT_FROMFONT )
{
  int par2 = ISNIL(2)? (int) QFontDatabase::Any : hb_parni(2);
  QRawFont * ptr = new QRawFont( QRawFont::fromFont ( *PQFONT(1), (QFontDatabase::WritingSystem) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QRAWFONT", true );
}

$extraMethods

#pragma ENDDUMP
