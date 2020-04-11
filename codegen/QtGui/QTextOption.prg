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

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=Flags flags () const
$method=|QTextOption::Flags|flags|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setFlags ( Flags flags )
$method=|void|setFlags|QTextOption::Flags

$prototype=void setTabArray ( QList<qreal> tabStops )
$method=|void|setTabArray|QList<qreal>

$prototype=void setTabStop ( qreal tabStop )
$method=|void|setTabStop|qreal

$prototype=void setTextDirection ( Qt::LayoutDirection direction )
$method=|void|setTextDirection|Qt::LayoutDirection

$prototype=void setUseDesignMetrics ( bool enable )
$method=|void|setUseDesignMetrics|bool

$prototype=void setWrapMode ( WrapMode mode )
$method=|void|setWrapMode|QTextOption::WrapMode

$prototype=QList<qreal> tabArray () const
$method=|QList<qreal>|tabArray|

$prototype=qreal tabStop () const
$method=|qreal|tabStop|

$prototype=Qt::LayoutDirection textDirection () const
$method=|Qt::LayoutDirection|textDirection|

$prototype=bool useDesignMetrics () const
$method=|bool|useDesignMetrics|

$prototype=WrapMode wrapMode () const
$method=|QTextOption::WrapMode|wrapMode|

$extraMethods

#pragma ENDDUMP
