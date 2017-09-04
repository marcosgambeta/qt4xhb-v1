$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QPrintEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD abort
   METHOD metric
   METHOD newPage
   METHOD printerState
   METHOD property
   METHOD setProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPrintEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QPRINTENGINE_DELETE )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool abort () = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_ABORT )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->abort () );
  }
}

/*
virtual int metric ( QPaintDevice::PaintDeviceMetric id ) const = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_METRIC )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RINT( obj->metric ( (QPaintDevice::PaintDeviceMetric) par1 ) );
  }
}

/*
virtual bool newPage () = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_NEWPAGE )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->newPage () );
  }
}

/*
virtual QPrinter::PrinterState printerState () const = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_PRINTERSTATE )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->printerState () );
  }
}

/*
virtual QVariant property ( PrintEnginePropertyKey key ) const = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_PROPERTY )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->property ( (QPrintEngine::PrintEnginePropertyKey) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual void setProperty ( PrintEnginePropertyKey key, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QPRINTENGINE_SETPROPERTY )
{
  QPrintEngine * obj = (QPrintEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProperty ( (QPrintEngine::PrintEnginePropertyKey) par1, *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
