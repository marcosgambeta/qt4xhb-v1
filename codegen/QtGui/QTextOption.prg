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

$prototype=QTextOption ()
$internalConstructor=|new1|

$prototype=QTextOption ( Qt::Alignment alignment )
$internalConstructor=|new2|Qt::Alignment

$prototype=QTextOption ( const QTextOption & other )
$internalConstructor=|new3|const QTextOption &

/*
[1]QTextOption ()
[2]QTextOption ( Qt::Alignment alignment )
[3]QTextOption ( const QTextOption & other )
*/

HB_FUNC_STATIC( QTEXTOPTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextOption_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextOption_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
  {
    QTextOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QTextOption::Flags flags() const

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=void setFlags( QTextOption::Flags flags )

$prototypeV2=void setTabArray( QList<qreal> tabStops )

$prototypeV2=void setTabStop( qreal tabStop )

$prototypeV2=void setTextDirection( Qt::LayoutDirection direction )

$prototypeV2=void setUseDesignMetrics( bool enable )

$prototypeV2=void setWrapMode( QTextOption::WrapMode mode )

$prototypeV2=QList<qreal> tabArray() const

$prototypeV2=qreal tabStop() const

$prototypeV2=Qt::LayoutDirection textDirection() const

$prototypeV2=bool useDesignMetrics() const

$prototypeV2=QTextOption::WrapMode wrapMode() const

$extraMethods

#pragma ENDDUMP
