$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
%% TODO: corrigir
%% REQUEST UCHAR
#endif

CLASS QAbstractVideoBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handle
   METHOD handleType
   METHOD map
   METHOD mapMode
   METHOD unmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractVideoBuffer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

$deleteMethod

$prototype=virtual QVariant handle () const
$virtualMethod=|QVariant|handle|

$prototype=HandleType handleType () const
$method=|QAbstractVideoBuffer::HandleType|handleType|

$prototype=virtual uchar * map ( MapMode mode, int * numBytes, int * bytesPerLine ) = 0
$virtualMethod=|uchar *|map|QAbstractVideoBuffer::MapMode,int *,int *

$prototype=virtual MapMode mapMode () const = 0
$virtualMethod=|QAbstractVideoBuffer::MapMode|mapMode|

$prototype=virtual void unmap () = 0
$virtualMethod=|void|unmap|

$extraMethods

#pragma ENDDUMP
