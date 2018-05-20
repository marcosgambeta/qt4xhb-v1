%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

$beginClassFrom=QObject

   METHOD delete
%%   METHOD addGlyphOutlinesToPath
   METHOD capabilities
%%   METHOD convertStringToGlyphIndices
   METHOD fontProperty
%%   METHOD getGlyphAdvances
   METHOD renderGlyph

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void addGlyphOutlinesToPath ( uint * glyphs, int numGlyphs, FixedPoint * positions, QPainterPath * path )
%% TODO: implementar 'uint *'
%% $virtualMethod=|void|addGlyphOutlinesToPath|uint *,int,QAbstractFontEngine::FixedPoint *,QPainterPath *

$prototype=virtual Capabilities capabilities () const = 0
$virtualMethod=|QAbstractFontEngine::Capabilities|capabilities|

$prototype=virtual bool convertStringToGlyphIndices ( const QChar * string, int length, uint * glyphs, int * numGlyphs, TextShapingFlags flags ) const = 0
%% TODO: implementar 'uint *'
%% $virtualMethod=|bool|convertStringToGlyphIndices|const QChar *,int,uint *,int *,QAbstractFontEngine::TextShapingFlags

$prototype=virtual QVariant fontProperty ( FontProperty property ) const = 0
$virtualMethod=|QVariant|fontProperty|QAbstractFontEngine::FontProperty

$prototype=virtual void getGlyphAdvances ( const uint * glyphs, int numGlyphs, Fixed * advances, TextShapingFlags flags ) const = 0
%% TODO: implementar 'uint *'
%% $virtualMethod=|void|getGlyphAdvances|const uint *,int,QAbstractFontEngine::Fixed *,QAbstractFontEngine::TextShapingFlags

$prototype=virtual bool renderGlyph ( uint glyph, int depth, int bytesPerLine, int height, uchar * buffer )
$virtualMethod=|bool|renderGlyph|uint,int,int,int,uchar *

#pragma ENDDUMP
