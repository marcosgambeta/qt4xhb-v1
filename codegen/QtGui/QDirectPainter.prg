$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
REQUEST QRECT
REQUEST UCHAR
#endif

CLASS QDirectPainter INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allocatedRegion
   METHOD endPainting
   METHOD flush
   METHOD geometry
   METHOD lower
   METHOD raise
   METHOD regionChanged
   METHOD requestedRegion
   METHOD setGeometry
   METHOD setRegion
   METHOD startPainting
   METHOD frameBuffer
   METHOD linestep
   METHOD lock
   METHOD screenDepth
   METHOD screenHeight
   METHOD screenWidth
   METHOD unlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDirectPainter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDirectPainter ( QObject * parent = 0, SurfaceFlag flag = NonReserved )
$constructor=|new|QObject *=0,QDirectPainter::SurfaceFlag=QDirectPainter::NonReserved

$deleteMethod

$prototype=QRegion allocatedRegion () const
$method=|QRegion|allocatedRegion|

$prototype=void endPainting ()
$internalMethod=|void|endPainting,endPainting1|

$prototype=void endPainting ( const QRegion & region )
$internalMethod=|void|endPainting,endPainting2|const QRegion &

//[1]void endPainting ()
//[2]void endPainting ( const QRegion & region )

HB_FUNC_STATIC( QDIRECTPAINTER_ENDPAINTING )
{
  if( ISNUMPAR(0) )
  {
    QDirectPainter_endPainting1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QDirectPainter_endPainting2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void flush ( const QRegion & region )
$method=|void|flush|const QRegion &

$prototype=QRect geometry () const
$method=|QRect|geometry|

$prototype=void lower ()
$method=|void|lower|

$prototype=void raise ()
$method=|void|raise|

$prototype=virtual void regionChanged ( const QRegion & newRegion )
$virtualMethod=|void|regionChanged|const QRegion &

$prototype=QRegion requestedRegion () const
$method=|QRegion|requestedRegion|

$prototype=void setGeometry ( const QRect & rectangle )
$method=|void|setGeometry|const QRect &

$prototype=void setRegion ( const QRegion & region )
$method=|void|setRegion|const QRegion &

$prototype=void startPainting ( bool lockDisplay = true )
$method=|void|startPainting|bool=true

$prototype=uchar * frameBuffer ()
$method=|uchar *|frameBuffer|

$prototype=static int linestep ()
$staticMethod=|int|linestep|

$prototype=static void lock ()
$staticMethod=|void|lock|

$prototype=static int screenDepth ()
$staticMethod=|int|screenDepth|

$prototype=static int screenHeight ()
$staticMethod=|int|screenHeight|

$prototype=static int screenWidth ()
$staticMethod=|int|screenWidth|

$prototype=static void unlock ()
$staticMethod=|void|unlock|

#pragma ENDDUMP
