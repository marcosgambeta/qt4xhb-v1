$header

#include "hbclass.ch"

CLASS QSound INHERIT QObject

   METHOD new
   METHOD delete
   METHOD fileName
   METHOD isFinished
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD stop
   METHOD isAvailable
   METHOD play

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSound>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSound ( const QString & filename, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSOUND_NEW )
{
  QSound * o = new QSound ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool isFinished () const
*/
$method=|bool|isFinished|

/*
int loops () const
*/
$method=|int|loops|

/*
int loopsRemaining () const
*/
$method=|int|loopsRemaining|

/*
void setLoops ( int number )
*/
$method=|void|setLoops|int

/*
void stop ()
*/
$method=|void|stop|

/*
static bool isAvailable ()
*/
$staticMethod=|bool|isAvailable|

/*
void play ()
*/
$internalMethod=|void|play,play1|

/*
static void play ( const QString & filename )
*/
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

#pragma ENDDUMP
