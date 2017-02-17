/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTENGINE

CLASS QPaintDevice

   DATA pointer
   DATA class_id INIT Class_Id_QPaintDevice
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD colorCount
   METHOD depth
   METHOD height
   METHOD heightMM
   METHOD logicalDpiX
   METHOD logicalDpiY
   METHOD numColors
   METHOD paintEngine
   METHOD paintingActive
   METHOD physicalDpiX
   METHOD physicalDpiY
   METHOD width
   METHOD widthMM
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QPaintDevice
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPaintDevice
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPaintDevice
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPaintDevice
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPaintDevice
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QPaintDevice>

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

HB_FUNC_STATIC( QPAINTDEVICE_DELETE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int colorCount () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_COLORCOUNT )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->colorCount (  ) );
  }
}


/*
int depth () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_DEPTH )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->depth (  ) );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_HEIGHT )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}


/*
int heightMM () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_HEIGHTMM )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->heightMM (  ) );
  }
}


/*
int logicalDpiX () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_LOGICALDPIX )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->logicalDpiX (  ) );
  }
}


/*
int logicalDpiY () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_LOGICALDPIY )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->logicalDpiY (  ) );
  }
}


/*
int numColors () const (deprecated)
*/
HB_FUNC_STATIC( QPAINTDEVICE_NUMCOLORS )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->numColors (  ) );
  }
}


/*
virtual QPaintEngine * paintEngine () const = 0
*/
HB_FUNC_STATIC( QPAINTDEVICE_PAINTENGINE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
bool paintingActive () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PAINTINGACTIVE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->paintingActive (  ) );
  }
}


/*
int physicalDpiX () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PHYSICALDPIX )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->physicalDpiX (  ) );
  }
}


/*
int physicalDpiY () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PHYSICALDPIY )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->physicalDpiY (  ) );
  }
}


/*
int width () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_WIDTH )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}


/*
int widthMM () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_WIDTHMM )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->widthMM (  ) );
  }
}





#pragma ENDDUMP
