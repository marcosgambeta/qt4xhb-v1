%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSvg

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSvgGenerator ()
$constructor=|new|

$deleteMethod

$prototypeV2=QString description() const

$prototypeV2=QString fileName() const

$prototypeV2=QIODevice * outputDevice() const

$prototypeV2=int resolution() const

$prototypeV2=void setDescription( const QString & description )

$prototypeV2=void setFileName( const QString & fileName )

$prototypeV2=void setOutputDevice( QIODevice * outputDevice )

$prototypeV2=void setResolution( int dpi )

$prototypeV2=void setSize( const QSize & size )

$prototypeV2=void setTitle( const QString & title )

$prototype=void setViewBox ( const QRect & viewBox )
$internalMethod=|void|setViewBox,setViewBox1|const QRect &

$prototype=void setViewBox ( const QRectF & viewBox )
$internalMethod=|void|setViewBox,setViewBox2|const QRectF &

/*
[1]void setViewBox ( const QRect & viewBox )
[2]void setViewBox ( const QRectF & viewBox )
*/

HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgGenerator_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgGenerator_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setViewBox

$prototypeV2=QSize size() const

$prototypeV2=QString title() const

$prototypeV2=QRect viewBox() const

$prototypeV2=QRectF viewBoxF() const

#pragma ENDDUMP
