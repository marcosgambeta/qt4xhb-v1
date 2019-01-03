%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QSound ( const QString & filename, QObject * parent = 0 )
$constructor=|new|const QString &,QObject *=0

$deleteMethod

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=bool isFinished () const
$method=|bool|isFinished|

$prototype=int loops () const
$method=|int|loops|

$prototype=int loopsRemaining () const
$method=|int|loopsRemaining|

$prototype=void setLoops ( int number )
$method=|void|setLoops|int

$prototype=void stop ()
$method=|void|stop|

$prototype=static bool isAvailable ()
$staticMethod=|bool|isAvailable|

$prototype=void play ()
$internalMethod=|void|play,play1|

$prototype=static void play ( const QString & filename )
$internalStaticMethod=|void|play,play2|const QString &

//[1]void play ()
//[2]void play ( const QString & filename )

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    QSound_play1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSound_play2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=play

#pragma ENDDUMP
