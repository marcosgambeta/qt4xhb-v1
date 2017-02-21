/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT
REQUEST QIMAGE

CLASS QPlatformCursorImage

   DATA pointer
   DATA class_id INIT Class_Id_QPlatformCursorImage
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QPlatformCursorImage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPlatformCursorImage>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QPlatformCursorImage ( const uchar * data, const uchar * mask, int width, int height, int hotX, int hotY )
*/
HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_NEW )
{
  QPlatformCursorImage * o = NULL;
  const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const uchar * par2 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  o = new QPlatformCursorImage ( par1, par2, par3, par4, par5, par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPlatformCursorImage *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    QPoint * ptr = new QPoint( obj->hotspot (  ) );
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
    QImage * ptr = obj->image (  );
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
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    int par5 = hb_parni(5);
    int par6 = hb_parni(6);
    obj->set ( par1, par2, par3, par4, par5, par6 );
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
    QImage * par1 = (QImage *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->set ( *par1, par2, par3 );
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
    obj->set (  (Qt::CursorShape) par1 );
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


HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLATFORMCURSORIMAGE_NEWFROM );
}

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLATFORMCURSORIMAGE_NEWFROM );
}

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLATFORMCURSORIMAGE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
