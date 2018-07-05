%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontEngineInfo ()
$internalConstructor=|new1|

$prototype=QFontEngineInfo ( const QString & family )
$internalConstructor=|new2|const QString &

$prototype=QFontEngineInfo ( const QFontEngineInfo & other )
$internalConstructor=|new3|const QFontEngineInfo &

//[1]QFontEngineInfo ()
//[2]QFontEngineInfo ( const QString & family )
//[3]QFontEngineInfo ( const QFontEngineInfo & other )

HB_FUNC_STATIC( QFONTENGINEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFontEngineInfo_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontEngineInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQFONTENGINEINFO(1) )
  {
    QFontEngineInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString family () const
$method=|QString|family|

$prototype=qreal pixelSize () const
$method=|qreal|pixelSize|

$prototype=void setFamily ( const QString & name )
$method=|void|setFamily|const QString &

$prototype=void setPixelSize ( qreal size )
$method=|void|setPixelSize|qreal

$prototype=void setStyle ( QFont::Style style )
$method=|void|setStyle|QFont::Style

$prototype=void setWeight ( int weight )
$method=|void|setWeight|int

$prototype=void setWritingSystems ( const QList<QFontDatabase::WritingSystem> & writingSystems )
$method=|void|setWritingSystems|QList<QFontDatabase::WritingSystem>

$prototype=QFont::Style style () const
$method=|QFont::Style|style|

$prototype=int weight () const
$method=|int|weight|

$prototype=QList<QFontDatabase::WritingSystem> writingSystems () const
$method=|QList<QFontDatabase::WritingSystem>|writingSystems|

$extraMethods

#pragma ENDDUMP
