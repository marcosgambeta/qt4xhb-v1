%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QIMAGE
#endif

CLASS QPlatformCursorImage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hotspot
   METHOD image
   METHOD set

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPlatformCursorImage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QPlatformCursorImage ( const uchar * data, const uchar * mask, int width, int height, int hotX, int hotY )
$constructor=|new|const uchar *,const uchar *,int,int,int,int

$deleteMethod

$prototype=QPoint hotspot ()
$method=|QPoint|hotspot|

$prototype=QImage * image ()
$method=|QImage *|image|

$prototype=void set ( const uchar * data, const uchar * mask, int width, int height, int hx, int hy )
$internalMethod=|void|set,set1|const uchar *,const uchar *,int,int,int,int

$prototype=void set ( const QImage & image, int hx, int hy )
$internalMethod=|void|set,set2|const QImage &,int,int

$prototype=void set ( Qt::CursorShape id )
$internalMethod=|void|set,set3|Qt::CursorShape

//[1]void set ( const uchar * data, const uchar * mask, int width, int height, int hx, int hy )
//[2]void set ( const QImage & image, int hx, int hy )
//[3]void set ( Qt::CursorShape id )

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SET )
{
  if( ISNUMPAR(6) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPlatformCursorImage_set1();
  }
  else if( ISNUMPAR(3) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) )
  {
    QPlatformCursorImage_set2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPlatformCursorImage_set3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
