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

#include <QtCore/QVariant>

$prototype=QColor ()
$internalConstructor=|new1|

$prototype=QColor ( int r, int g, int b, int a = 255 )
$internalConstructor=|new2|int,int,int,int=255

$prototype=QColor ( QRgb color )
$constructor=|new3|QRgb

$prototype=QColor ( const QString & name )
$constructor=|new4|const QString &

$prototype=QColor ( const char * name )
$constructor=|new5|const char *

$prototype=QColor ( const QColor & color )
$internalConstructor=|new6|const QColor &

$prototype=QColor ( Qt::GlobalColor color )
$constructor=|new7|Qt::GlobalColor

/*
[1]QColor ()
[2]QColor ( int r, int g, int b, int a = 255 )
[3]QColor ( QRgb color )
[4]QColor ( const QString & name )
[5]QColor ( const char * name )
[6]QColor ( const QColor & color )
[7]QColor ( Qt::GlobalColor color )
*/

%% TODO: conflitos entre [3] e [7] e [4] e [5]

HB_FUNC_STATIC( QCOLOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QColor_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QColor_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQCOLOR(1) )
  {
    QColor_new6();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCOLOR_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int alpha() const

$prototype=qreal alphaF () const
$method=|qreal|alphaF|

$prototypeV2=int black() const

$prototype=qreal blackF () const
$method=|qreal|blackF|

$prototypeV2=int blue() const

$prototype=qreal blueF () const
$method=|qreal|blueF|

$prototype=QColor convertTo ( Spec colorSpec ) const
$method=|QColor|convertTo|QColor::Spec

$prototypeV2=int cyan() const

$prototype=qreal cyanF () const
$method=|qreal|cyanF|

$prototype=QColor darker ( int factor = 200 ) const
$method=|QColor|darker|int=200

$prototype=void getCmyk ( int * c, int * m, int * y, int * k, int * a = 0 )
$method=|void|getCmyk|int *,int *,int *,int *,int *=0

$prototype=void getCmykF ( qreal * c, qreal * m, qreal * y, qreal * k, qreal * a = 0 )
$method=|void|getCmykF|qreal *,qreal *,qreal *,qreal *,qreal *=0

$prototype=void getHsl ( int * h, int * s, int * l, int * a = 0 ) const
$method=|void|getHsl|int *,int *,int *,int *=0

$prototype=void getHslF ( qreal * h, qreal * s, qreal * l, qreal * a = 0 ) const
$method=|void|getHslF|qreal *,qreal *,qreal *,qreal *=0

$prototype=void getHsv ( int * h, int * s, int * v, int * a = 0 ) const
$method=|void|getHsv|int *,int *,int *,int *=0

$prototype=void getHsvF ( qreal * h, qreal * s, qreal * v, qreal * a = 0 ) const
$method=|void|getHsvF|qreal *,qreal *,qreal *,qreal *=0

$prototype=void getRgb ( int * r, int * g, int * b, int * a = 0 ) const
$method=|void|getRgb|int *,int *,int *,int *=0

$prototype=void getRgbF ( qreal * r, qreal * g, qreal * b, qreal * a = 0 ) const
$method=|void|getRgbF|qreal *,qreal *,qreal *,qreal *=0

$prototypeV2=int green() const

$prototype=qreal greenF () const
$method=|qreal|greenF|

$prototypeV2=int hslHue() const

$prototype=qreal hslHueF () const
$method=|qreal|hslHueF|

$prototypeV2=int hslSaturation() const

$prototype=qreal hslSaturationF () const
$method=|qreal|hslSaturationF|

$prototypeV2=int hsvHue() const

$prototype=qreal hsvHueF () const
$method=|qreal|hsvHueF|

$prototypeV2=int hsvSaturation() const

$prototype=qreal hsvSaturationF () const
$method=|qreal|hsvSaturationF|

$prototypeV2=int hue() const

$prototype=qreal hueF () const
$method=|qreal|hueF|

$prototypeV2=bool isValid() const

$prototype=QColor lighter ( int factor = 150 ) const
$method=|QColor|lighter|int=150

$prototypeV2=int lightness() const

$prototype=qreal lightnessF () const
$method=|qreal|lightnessF|

$prototypeV2=int magenta() const

$prototype=qreal magentaF () const
$method=|qreal|magentaF|

$prototypeV2=QString name() const

$prototypeV2=int red() const

$prototype=qreal redF () const
$method=|qreal|redF|

$prototype=QRgb rgb () const
$method=|QRgb|rgb|

$prototype=QRgb rgba () const
$method=|QRgb|rgba|

$prototypeV2=int saturation() const

$prototype=qreal saturationF () const
$method=|qreal|saturationF|

$prototype=void setAlpha ( int alpha )
$method=|void|setAlpha|int

$prototype=void setAlphaF ( qreal alpha )
$method=|void|setAlphaF|qreal

$prototype=void setBlue ( int blue )
$method=|void|setBlue|int

$prototype=void setBlueF ( qreal blue )
$method=|void|setBlueF|qreal

$prototype=void setCmyk ( int c, int m, int y, int k, int a = 255 )
$method=|void|setCmyk|int,int,int,int,int=255

$prototype=void setCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
$method=|void|setCmykF|qreal,qreal,qreal,qreal,qreal=1.0

$prototype=void setGreen ( int green )
$method=|void|setGreen|int

$prototype=void setGreenF ( qreal green )
$method=|void|setGreenF|qreal

$prototype=void setHsl ( int h, int s, int l, int a = 255 )
$method=|void|setHsl|int,int,int,int=255

$prototype=void setHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
$method=|void|setHslF|qreal,qreal,qreal,qreal=1.0

$prototype=void setHsv ( int h, int s, int v, int a = 255 )
$method=|void|setHsv|int,int,int,int=255

$prototype=void setHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
$method=|void|setHsvF|qreal,qreal,qreal,qreal=1.0

$prototype=void setNamedColor ( const QString & name )
$method=|void|setNamedColor|const QString &

$prototype=void setRed ( int red )
$method=|void|setRed|int

$prototype=void setRedF ( qreal red )
$method=|void|setRedF|qreal

$prototype=void setRgb ( int r, int g, int b, int a = 255 )
$internalMethod=|void|setRgb,setRgb1|int,int,int,int=255

$prototype=void setRgb ( QRgb rgb )
$internalMethod=|void|setRgb,setRgb2|QRgb

/*
[1]void setRgb ( int r, int g, int b, int a = 255 )
[2]void setRgb ( QRgb rgb )
*/

HB_FUNC_STATIC( QCOLOR_SETRGB )
{
  if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QColor_setRgb1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColor_setRgb2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setRgb

$prototype=void setRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
$method=|void|setRgbF|qreal,qreal,qreal,qreal=1.0

$prototype=void setRgba ( QRgb rgba )
$method=|void|setRgba|QRgb

$prototype=Spec spec () const
$method=|QColor::Spec|spec|

$prototype=QColor toCmyk () const
$method=|QColor|toCmyk|

$prototype=QColor toHsl () const
$method=|QColor|toHsl|

$prototype=QColor toHsv () const
$method=|QColor|toHsv|

$prototype=QColor toRgb () const
$method=|QColor|toRgb|

$prototypeV2=int value() const

$prototype=qreal valueF () const
$method=|qreal|valueF|

$prototypeV2=int yellow() const

$prototype=qreal yellowF () const
$method=|qreal|yellowF|

$prototype=static QStringList colorNames ()
$staticMethod=|QStringList|colorNames|

$prototype=static QColor fromCmyk ( int c, int m, int y, int k, int a = 255 )
$staticMethod=|QColor|fromCmyk|int,int,int,int,int=255

$prototype=static QColor fromCmykF ( qreal c, qreal m, qreal y, qreal k, qreal a = 1.0 )
$staticMethod=|QColor|fromCmykF|qreal,qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromHsl ( int h, int s, int l, int a = 255 )
$staticMethod=|QColor|fromHsl|int,int,int,int=255

$prototype=static QColor fromHslF ( qreal h, qreal s, qreal l, qreal a = 1.0 )
$staticMethod=|QColor|fromHslF|qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromHsv ( int h, int s, int v, int a = 255 )
$staticMethod=|QColor|fromHsv|int,int,int,int=255

$prototype=static QColor fromHsvF ( qreal h, qreal s, qreal v, qreal a = 1.0 )
$staticMethod=|QColor|fromHsvF|qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromRgb ( QRgb rgb )
$internalStaticMethod=|QColor|fromRgb,fromRgb1|QRgb

$prototype=static QColor fromRgb ( int r, int g, int b, int a = 255 )
$internalStaticMethod=|QColor|fromRgb,fromRgb2|int,int,int,int=255

/*
[1]static QColor fromRgb ( QRgb rgb )
[2]static QColor fromRgb ( int r, int g, int b, int a = 255 )
*/

HB_FUNC_STATIC( QCOLOR_FROMRGB )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColor_fromRgb1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QColor_fromRgb2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromRgb

$prototype=static QColor fromRgbF ( qreal r, qreal g, qreal b, qreal a = 1.0 )
$staticMethod=|QColor|fromRgbF|qreal,qreal,qreal,qreal=1.0

$prototype=static QColor fromRgba ( QRgb rgba )
$staticMethod=|QColor|fromRgba|QRgb

$prototype=static bool isValidColor ( const QString & name )
$staticMethod=|bool|isValidColor|const QString &

%% TODO implementar $function=

$prototype=int qAlpha ( QRgb rgba )
HB_FUNC( QALPHA )
{
  RINT( qAlpha ( (QRgb) hb_parni(1) ) );
}

$prototype=int qBlue ( QRgb rgb )
HB_FUNC( QBLUE )
{
  RINT( qBlue ( (QRgb) hb_parni(1) ) );
}

$prototype=int qGray ( int r, int g, int b )
HB_FUNC( QGRAY1 )
{
  RINT( qGray ( PINT(1), PINT(2), PINT(3) ) );
}

$prototype=int qGray ( QRgb rgb )
HB_FUNC( QGRAY2 )
{
  RINT( qGray ( (QRgb) hb_parni(1) ) );
}

/*
[1]int qGray ( int r, int g, int b )
[2]int qGray ( QRgb rgb )
*/

HB_FUNC( QGRAY )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGRAY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAY2 );
  }
}

$prototype=int qGreen ( QRgb rgb )
HB_FUNC( QGREEN )
{
  RINT( qGreen ( (QRgb) hb_parni(1) ) );
}

$prototype=int qRed ( QRgb rgb )
HB_FUNC( QRED )
{
  RINT( qRed ( (QRgb) hb_parni(1) ) );
}

$prototype=QRgb qRgb ( int r, int g, int b )
HB_FUNC( QRGB )
{
  hb_retni( qRgb ( PINT(1), PINT(2), PINT(3) ) );
}

$prototype=QRgb qRgba ( int r, int g, int b, int a )
HB_FUNC( QRGBA )
{
  hb_retni( qRgba ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
}

$variantMethods

$extraMethods

#pragma ENDDUMP
