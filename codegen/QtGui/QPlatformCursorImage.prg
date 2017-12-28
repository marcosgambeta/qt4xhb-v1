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
   METHOD set1
   METHOD set2
   METHOD set3
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
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_NEW )
{
  const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const uchar * par2 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPlatformCursorImage * o = new QPlatformCursorImage ( par1, par2, PINT(3), PINT(4), PINT(5), PINT(6) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QPoint hotspot ()
$method=|QPoint|hotspot|

$prototype=QImage * image ()
$method=|QImage *|image|

$prototype=void set ( const uchar * data, const uchar * mask, int width, int height, int hx, int hy )
$method=|void|set,set1|const uchar *,const uchar *,int,int,int,int

$prototype=void set ( const QImage & image, int hx, int hy )
$method=|void|set,set2|const QImage &,int,int

$prototype=void set ( Qt::CursorShape id )
$method=|void|set,set3|Qt::CursorShape

//[1]void set ( const uchar * data, const uchar * mask, int width, int height, int hx, int hy )
//[2]void set ( const QImage & image, int hx, int hy )
//[3]void set ( Qt::CursorShape id )

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SET )
{
  if( ISNUMPAR(6) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPLATFORMCURSORIMAGE_SET1 );
  }
  else if( ISNUMPAR(3) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPLATFORMCURSORIMAGE_SET2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPLATFORMCURSORIMAGE_SET3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
