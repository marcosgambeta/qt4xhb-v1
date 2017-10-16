$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTENGINE
#endif

CLASS QPaintDevice

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QPaintDevice>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
int colorCount () const
*/
$method=|int|colorCount|

/*
int depth () const
*/
$method=|int|depth|

/*
int height () const
*/
$method=|int|height|

/*
int heightMM () const
*/
$method=|int|heightMM|

/*
int logicalDpiX () const
*/
$method=|int|logicalDpiX|

/*
int logicalDpiY () const
*/
$method=|int|logicalDpiY|

/*
int numColors () const (deprecated)
*/
$method=|int|numColors|

/*
virtual QPaintEngine * paintEngine () const = 0
*/
$virtualMethod=|QPaintEngine *|paintEngine|

/*
bool paintingActive () const
*/
$method=|bool|paintingActive|

/*
int physicalDpiX () const
*/
$method=|int|physicalDpiX|

/*
int physicalDpiY () const
*/
$method=|int|physicalDpiY|

/*
int width () const
*/
$method=|int|width|

/*
int widthMM () const
*/
$method=|int|widthMM|

$extraMethods

#pragma ENDDUMP
