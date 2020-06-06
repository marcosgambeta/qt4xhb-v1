%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QImage>

$prototype=QRawFont ()
$internalConstructor=|new1|

$prototype=QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
$internalConstructor=|new2|const QString &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

$prototype=QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
$internalConstructor=|new3|const QByteArray &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

$prototype=QRawFont ( const QRawFont & other )
$internalConstructor=|new4|const QRawFont &

/*
[1]QRawFont ()
[2]QRawFont ( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
[3]QRawFont ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting )
[4]QRawFont ( const QRawFont & other )
*/

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
$addMethod=new

$deleteMethod

$prototype=QVector<QPointF> advancesForGlyphIndexes ( const QVector<quint32> & glyphIndexes ) const
$method=|QVector<QPointF>|advancesForGlyphIndexes,advancesForGlyphIndexes1|const QVector<quint32> &

/*
[1]QVector<QPointF> advancesForGlyphIndexes ( const QVector<quint32> & glyphIndexes ) const
[2]bool advancesForGlyphIndexes ( const quint32 * glyphIndexes, QPointF * advances, int numGlyphs ) const
*/

HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  HB_FUNC_EXEC( QRAWFONT_ADVANCESFORGLYPHINDEXES1 );
}
$addMethod=advancesForGlyphIndexes

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
$method=|QVector<quint32>|glyphIndexesForString|const QString &

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
$method=|QList<QFontDatabase::WritingSystem>|supportedWritingSystems|

$prototype=bool supportsCharacter ( QChar character ) const
$internalMethod=|bool|supportsCharacter,supportsCharacter1|QChar

$prototype=bool supportsCharacter ( quint32 ucs4 ) const
$internalMethod=|bool|supportsCharacter,supportsCharacter2|quint32

/*
[1]bool supportsCharacter ( QChar character ) const
[2]bool supportsCharacter ( quint32 ucs4 ) const
*/

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
$addMethod=supportsCharacter

$prototype=qreal unitsPerEm () const
$method=|qreal|unitsPerEm|

$prototypeV2=int weight() const

$prototype=qreal xHeight () const
$method=|qreal|xHeight|

$prototype=static QRawFont fromFont ( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )
$staticMethod=|QRawFont|fromFont|const QFont &,QFontDatabase::WritingSystem=QFontDatabase::Any

$extraMethods

#pragma ENDDUMP
