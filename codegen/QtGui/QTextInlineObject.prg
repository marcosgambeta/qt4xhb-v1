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

/*
QTextInlineObject ( int i, QTextEngine * e )
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
  QTextInlineObject * o = new QTextInlineObject ( PINT(1), PQTEXTENGINE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal ascent () const
*/
$method=|qreal|ascent|

/*
qreal descent () const
*/
$method=|qreal|descent|

/*
QTextFormat format () const
*/
$method=|QTextFormat|format|

/*
int formatIndex () const
*/
$method=|int|formatIndex|

/*
qreal height () const
*/
$method=|qreal|height|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QRectF rect () const
*/
$method=|QRectF|rect|

/*
void setAscent ( qreal a )
*/
$method=|void|setAscent|qreal

/*
void setDescent ( qreal d )
*/
$method=|void|setDescent|qreal

/*
void setWidth ( qreal w )
*/
$method=|void|setWidth|qreal

/*
Qt::LayoutDirection textDirection () const
*/
$method=|Qt::LayoutDirection|textDirection|

/*
int textPosition () const
*/
$method=|int|textPosition|

/*
qreal width () const
*/
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
