$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QTextItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD ascent
   METHOD descent
   METHOD font
   METHOD renderFlags
   METHOD text
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

#include <QTextItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

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
QFont font () const
*/
$method=|QFont|font|

/*
RenderFlags renderFlags () const
*/
HB_FUNC_STATIC( QTEXTITEM_RENDERFLAGS )
{
  QTextItem * obj = (QTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->renderFlags () );
  }
}

/*
QString text () const
*/
$method=|QString|text|

/*
qreal width () const
*/
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
