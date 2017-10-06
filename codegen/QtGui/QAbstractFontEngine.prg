$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAbstractFontEngine INHERIT QObject

   METHOD delete
   METHOD addGlyphOutlinesToPath
   METHOD capabilities
   METHOD convertStringToGlyphIndices
   METHOD fontProperty
   METHOD getGlyphAdvances
   METHOD renderGlyph

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractFontEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void addGlyphOutlinesToPath ( uint * glyphs, int numGlyphs, FixedPoint * positions, QPainterPath * path )
*/
$virtualMethod=|void|addGlyphOutlinesToPath|uint *,int,QAbstractFontEngine::FixedPoint *,QPainterPath *

/*
virtual Capabilities capabilities () const = 0
*/
$virtualMethod=|QAbstractFontEngine::Capabilities|capabilities|

/*
virtual bool convertStringToGlyphIndices ( const QChar * string, int length, uint * glyphs, int * numGlyphs, TextShapingFlags flags ) const = 0
*/
$virtualMethod=|bool|convertStringToGlyphIndices|const QChar *,int,uint *,int *,QAbstractFontEngine::TextShapingFlags

/*
virtual QVariant fontProperty ( FontProperty property ) const = 0
*/
$virtualMethod=|QVariant|fontProperty|QAbstractFontEngine::FontProperty

/*
virtual void getGlyphAdvances ( const uint * glyphs, int numGlyphs, Fixed * advances, TextShapingFlags flags ) const = 0
*/
$virtualMethod=|void|getGlyphAdvances|const uint *,int,QAbstractFontEngine::Fixed *,QAbstractFontEngine::TextShapingFlags

/*
virtual bool renderGlyph ( uint glyph, int depth, int bytesPerLine, int height, uchar * buffer )
*/
$virtualMethod=|bool|renderGlyph|uint,int,int,int,uchar *

#pragma ENDDUMP
