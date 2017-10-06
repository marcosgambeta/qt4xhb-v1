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

$destructor

#pragma BEGINDUMP

#include <QPrintEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual bool abort () = 0
*/
$virtualMethod=|bool|abort|

/*
virtual int metric ( QPaintDevice::PaintDeviceMetric id ) const = 0
*/
$virtualMethod=|int|metric|QPaintDevice::PaintDeviceMetric

/*
virtual bool newPage () = 0
*/
$virtualMethod=|bool|newPage|

/*
virtual QPrinter::PrinterState printerState () const = 0
*/
$virtualMethod=|QPrinter::PrinterState|printerState|

/*
virtual QVariant property ( PrintEnginePropertyKey key ) const = 0
*/
$virtualMethod=|QVariant|property|QPrintEngine::PrintEnginePropertyKey

/*
virtual void setProperty ( PrintEnginePropertyKey key, const QVariant & value ) = 0
*/
$virtualMethod=|void|setProperty|QPrintEngine::PrintEnginePropertyKey,const QVariant &

$extraMethods

#pragma ENDDUMP
