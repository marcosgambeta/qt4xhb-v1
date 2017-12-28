$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsOpacityEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGraphicsOpacityEffect ( QObject * parent = 0 )
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_NEW )
{
  QGraphicsOpacityEffect * o = new QGraphicsOpacityEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=qreal opacity () const
$method=|qreal|opacity|

$prototype=QBrush opacityMask () const
$method=|QBrush|opacityMask|

$prototype=void setOpacity ( qreal opacity )
$method=|void|setOpacity|qreal

$prototype=void setOpacityMask ( const QBrush & mask )
$method=|void|setOpacityMask|const QBrush &

#pragma ENDDUMP
