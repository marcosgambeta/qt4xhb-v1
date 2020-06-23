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

$prototype=QGlyphRun ()
$internalConstructor=|new1|

$prototype=QGlyphRun ( const QGlyphRun & other )
$internalConstructor=|new2|const QGlyphRun &

/*
[1]QGlyphRun ()
[2]QGlyphRun ( const QGlyphRun & other )
*/

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGlyphRun_new1();
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    QGlyphRun_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=QVector<quint32> glyphIndexes() const

$prototypeV2=bool overline() const

$prototypeV2=QVector<QPointF> positions() const

$prototypeV2=QRawFont rawFont() const

$prototypeV2=void setGlyphIndexes( const QVector<quint32> & glyphIndexes )

$prototypeV2=void setOverline( bool overline )

$prototypeV2=void setPositions( const QVector<QPointF> & positions )

$prototypeV2=void setRawFont( const QRawFont & rawFont )

$prototypeV2=void setStrikeOut( bool strikeOut )

$prototypeV2=void setUnderline( bool underline )

$prototypeV2=bool strikeOut() const

$prototypeV2=bool underline() const

$extraMethods

#pragma ENDDUMP
