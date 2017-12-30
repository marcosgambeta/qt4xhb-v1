$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFORMAT
REQUEST QRECTF
#endif

CLASS QTextInlineObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD descent
   METHOD format
   METHOD formatIndex
   METHOD height
   METHOD isValid
   METHOD rect
   METHOD setAscent
   METHOD setDescent
   METHOD setWidth
   METHOD textDirection
   METHOD textPosition
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextInlineObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextInlineObject ( int i, QTextEngine * e )
$constructor=|new|int,QTextEngine *

$deleteMethod

$prototype=qreal ascent () const
$method=|qreal|ascent|

$prototype=qreal descent () const
$method=|qreal|descent|

$prototype=QTextFormat format () const
$method=|QTextFormat|format|

$prototype=int formatIndex () const
$method=|int|formatIndex|

$prototype=qreal height () const
$method=|qreal|height|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QRectF rect () const
$method=|QRectF|rect|

$prototype=void setAscent ( qreal a )
$method=|void|setAscent|qreal

$prototype=void setDescent ( qreal d )
$method=|void|setDescent|qreal

$prototype=void setWidth ( qreal w )
$method=|void|setWidth|qreal

$prototype=Qt::LayoutDirection textDirection () const
$method=|Qt::LayoutDirection|textDirection|

$prototype=int textPosition () const
$method=|int|textPosition|

$prototype=qreal width () const
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
