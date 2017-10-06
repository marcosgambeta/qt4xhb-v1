$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsLayout INHERIT QGraphicsLayoutItem

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activate
   METHOD count
   METHOD invalidate
   METHOD isActivated
   METHOD itemAt
   METHOD removeAt
   METHOD setContentsMargins
   METHOD widgetEvent
   METHOD getContentsMargins
   METHOD updateGeometry
   METHOD instantInvalidatePropagation
   METHOD setInstantInvalidatePropagation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
void activate ()
*/
$method=|void|activate|

/*
virtual int count () const = 0
*/
$virtualMethod=|int|count|

/*
virtual void invalidate ()
*/
$virtualMethod=|void|invalidate|

/*
bool isActivated () const
*/
$method=|bool|isActivated|

/*
virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
*/
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

/*
virtual void removeAt ( int index ) = 0
*/
$virtualMethod=|void|removeAt|int

/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

/*
virtual void widgetEvent ( QEvent * e )
*/
$virtualMethod=|void|widgetEvent|QEvent *

/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

/*
virtual void updateGeometry ()
*/
$virtualMethod=|void|updateGeometry|

/*
static bool instantInvalidatePropagation ()
*/
$staticMethod=|bool|instantInvalidatePropagation|

/*
static void setInstantInvalidatePropagation ( bool enable )
*/
$staticMethod=|void|setInstantInvalidatePropagation|bool

#pragma ENDDUMP
