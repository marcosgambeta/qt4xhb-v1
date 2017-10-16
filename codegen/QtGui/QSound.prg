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
   METHOD play1
   METHOD stop
   METHOD isAvailable
   METHOD play2
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
void play ()
*/
$method=|void|play,play1|

/*
void stop ()
*/
$method=|void|stop|

/*
static bool isAvailable ()
*/
$staticMethod=|bool|isAvailable|

/*
static void play ( const QString & filename )
*/
$staticMethod=|void|play,play2|const QString &

//[1]void play ()
//[2]void play ( const QString & filename )

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
}

#pragma ENDDUMP
