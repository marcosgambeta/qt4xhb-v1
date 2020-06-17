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

$prototype=QDirectPainter ( QObject * parent = 0, SurfaceFlag flag = NonReserved )
$constructor=|new|QObject *=0,QDirectPainter::SurfaceFlag=QDirectPainter::NonReserved

$deleteMethod

$prototypeV2=QRegion allocatedRegion() const

$prototype=void endPainting ()
$internalMethod=|void|endPainting,endPainting1|

$prototype=void endPainting ( const QRegion & region )
$internalMethod=|void|endPainting,endPainting2|const QRegion &

/*
[1]void endPainting ()
[2]void endPainting ( const QRegion & region )
*/

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
$addMethod=endPainting

$prototype=void flush ( const QRegion & region )
$method=|void|flush|const QRegion &

$prototypeV2=QRect geometry() const

$prototypeV2=void lower()

$prototypeV2=void raise()

$prototype=virtual void regionChanged ( const QRegion & newRegion )
$virtualMethod=|void|regionChanged|const QRegion &

$prototypeV2=QRegion requestedRegion() const

$prototype=void setGeometry ( const QRect & rectangle )
$method=|void|setGeometry|const QRect &

$prototype=void setRegion ( const QRegion & region )
$method=|void|setRegion|const QRegion &

$prototype=void startPainting ( bool lockDisplay = true )
$method=|void|startPainting|bool=true

$prototype=uchar * frameBuffer ()
%% TODO: implementar 'uchar *'
%% $method=|uchar *|frameBuffer|

$prototypeV2=static int linestep()

$prototypeV2=static void lock()

$prototypeV2=static int screenDepth()

$prototypeV2=static int screenHeight()

$prototypeV2=static int screenWidth()

$prototypeV2=static void unlock()

#pragma ENDDUMP
