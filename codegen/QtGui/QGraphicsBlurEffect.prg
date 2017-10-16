$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsBlurEffect INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD blurHints
   METHOD blurRadius
   METHOD boundingRectFor
   METHOD setBlurHints
   METHOD setBlurRadius

   METHOD onBlurHintsChanged
   METHOD onBlurRadiusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsBlurEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsBlurEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_NEW )
{
  QGraphicsBlurEffect * o = new QGraphicsBlurEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
BlurHints blurHints () const
*/
$method=|QGraphicsBlurEffect::BlurHints|blurHints|

/*
qreal blurRadius () const
*/
$method=|qreal|blurRadius|

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

/*
void setBlurHints ( BlurHints hints )
*/
$method=|void|setBlurHints|QGraphicsBlurEffect::BlurHints

/*
void setBlurRadius ( qreal blurRadius )
*/
$method=|void|setBlurRadius|qreal

#pragma ENDDUMP
