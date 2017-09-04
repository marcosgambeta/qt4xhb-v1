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

/*
QPlatformCursorImage ( const uchar * data, const uchar * mask, int width, int height, int hotX, int hotY )
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_NEW )
{
  const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const uchar * par2 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPlatformCursorImage * o = new QPlatformCursorImage ( par1, par2, PINT(3), PINT(4), PINT(5), PINT(6) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_DELETE )
{
  QPlatformCursorImage * obj = (QPlatformCursorImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint hotspot ()
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_HOTSPOT )
{
  QPlatformCursorImage * obj = (QPlatformCursorImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotspot () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QImage * image ()
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_IMAGE )
{
  QPlatformCursorImage * obj = (QPlatformCursorImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = obj->image ();
    _qt4xhb_createReturnClass ( ptr, "QIMAGE" );
  }
}

/*
void set ( const uchar * data, const uchar * mask, int width, int height, int hx, int hy )
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SET1 )
{
  QPlatformCursorImage * obj = (QPlatformCursorImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const uchar * par2 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->set ( par1, par2, PINT(3), PINT(4), PINT(5), PINT(6) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void set ( const QImage & image, int hx, int hy )
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SET2 )
{
  QPlatformCursorImage * obj = (QPlatformCursorImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->set ( *PQIMAGE(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void set ( Qt::CursorShape id )
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SET3 )
{
  QPlatformCursorImage * obj = (QPlatformCursorImage *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->set ( (Qt::CursorShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
}

$extraMethods

#pragma ENDDUMP
