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

$prototype=QTextFragment ()
$internalConstructor=|new1|

$prototype=QTextFragment ( const QTextFragment & other )
$internalConstructor=|new2|const QTextFragment &

/*
[1]QTextFragment ()
[2]QTextFragment ( const QTextFragment & other )
*/

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    QTextFragment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QTextCharFormat charFormat () const
$method=|QTextCharFormat|charFormat|

$prototype=int charFormatIndex () const
$method=|int|charFormatIndex|

$prototype=bool contains ( int position ) const
$method=|bool|contains|int

$prototype=QList<QGlyphRun> glyphRuns () const
$method=|QList<QGlyphRun>|glyphRuns|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int length () const
$method=|int|length|

$prototype=int position () const
$method=|int|position|

$prototype=QString text () const
$method=|QString|text|

$extraMethods

#pragma ENDDUMP
