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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void addGlyphOutlinesToPath ( uint * glyphs, int numGlyphs, FixedPoint * positions, QPainterPath * path )
%% TODO: implementar 'uint *'
%% $virtualMethod=|void|addGlyphOutlinesToPath|uint *,int,QAbstractFontEngine::FixedPoint *,QPainterPath *

$prototypeV2=virtual QAbstractFontEngine::Capabilities capabilities() const = 0

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
