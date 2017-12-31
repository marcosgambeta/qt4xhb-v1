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

$prototype=QRawFont ()
$internalConstructor=|new1|

$prototype=QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
$internalConstructor=|new2|const QString &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

$prototype=QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
$internalConstructor=|new3|const QByteArray &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

$prototype=QRawFont ( const QRawFont & other )
$internalConstructor=|new4|const QRawFont &

//[1]QRawFont ()
//[2]QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
//[3]QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
//[4]QRawFont ( const QRawFont & other )

HB_FUNC_STATIC( QRAWFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRawFont_new1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QRawFont_new2();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QRawFont_new3();
  }
  else if( ISNUMPAR(1) && ISQRAWFONT(1) )
  {
    QRawFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QVector<QPointF> advancesForGlyphIndexes ( const QVector<quint32> & glyphIndexes ) const
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
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=QImage alphaMapForGlyph ( quint32 glyphIndex, AntialiasingType antialiasingType = SubPixelAntialiasing, const QTransform & transform = QTransform() ) const
$method=|QImage|alphaMapForGlyph|quint32,QRawFont::AntialiasingType=QRawFont::SubPixelAntialiasing,const QTransform &=QTransform()

$prototype=qreal ascent () const
$method=|qreal|ascent|

$prototype=qreal averageCharWidth () const
$method=|qreal|averageCharWidth|

$prototype=qreal descent () const
$method=|qreal|descent|

$prototype=QString familyName () const
$method=|QString|familyName|

$prototype=QByteArray fontTable ( const char * tagName ) const
$method=|QByteArray|fontTable|const char *

$prototype=QVector<quint32> glyphIndexesForString ( const QString & text ) const
HB_FUNC_STATIC( QRAWFONT_GLYPHINDEXESFORSTRING )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<quint32> list = obj->glyphIndexesForString ( PQSTRING(1) );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=QFont::HintingPreference hintingPreference () const
$method=|QFont::HintingPreference|hintingPreference|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal leading () const
$method=|qreal|leading|

$prototype=void loadFromData ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
$method=|void|loadFromData|const QByteArray &,qreal,QFont::HintingPreference

$prototype=void loadFromFile ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference )
$method=|void|loadFromFile|const QString &,qreal,QFont::HintingPreference

$prototype=qreal maxCharWidth () const
$method=|qreal|maxCharWidth|

$prototype=QPainterPath pathForGlyph ( quint32 glyphIndex ) const
$method=|QPainterPath|pathForGlyph|quint32

$prototype=qreal pixelSize () const
$method=|qreal|pixelSize|

$prototype=void setPixelSize ( qreal pixelSize )
$method=|void|setPixelSize|qreal

$prototype=QFont::Style style () const
$method=|QFont::Style|style|

$prototype=QString styleName () const
$method=|QString|styleName|

$prototype=QList<QFontDatabase::WritingSystem> supportedWritingSystems () const
HB_FUNC_STATIC( QRAWFONT_SUPPORTEDWRITINGSYSTEMS )
{
  QRawFont * obj = (QRawFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QFontDatabase::WritingSystem> list = obj->supportedWritingSystems ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=bool supportsCharacter ( QChar character ) const
$internalMethod=|bool|supportsCharacter,supportsCharacter1|QChar

$prototype=bool supportsCharacter ( quint32 ucs4 ) const
$internalMethod=|bool|supportsCharacter,supportsCharacter2|quint32

//[1]bool supportsCharacter ( QChar character ) const
//[2]bool supportsCharacter ( quint32 ucs4 ) const

HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QRawFont_supportsCharacter1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QRawFont_supportsCharacter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=qreal unitsPerEm () const
$method=|qreal|unitsPerEm|

$prototype=int weight () const
$method=|int|weight|

$prototype=qreal xHeight () const
$method=|qreal|xHeight|

$prototype=static QRawFont fromFont ( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )
$staticMethod=|QRawFont|fromFont|const QFont &,QFontDatabase::WritingSystem=QFontDatabase::Any

$extraMethods

#pragma ENDDUMP
