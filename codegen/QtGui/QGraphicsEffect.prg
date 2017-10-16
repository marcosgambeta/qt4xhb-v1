$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsEffect INHERIT QObject

   METHOD delete
   METHOD boundingRect
   METHOD boundingRectFor
   METHOD isEnabled
   METHOD setEnabled
   METHOD update

   METHOD onEnabledChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
void setEnabled ( bool enable )
*/
$method=|void|setEnabled|bool

/*
void update ()
*/
$method=|void|update|

#pragma ENDDUMP
