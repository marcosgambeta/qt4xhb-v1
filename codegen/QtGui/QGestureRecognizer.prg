$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

CLASS QGestureRecognizer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGestureRecognizer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QGesture * create ( QObject * target )
$virtualMethod=|QGesture *|create|QObject *

$prototype=virtual Result recognize ( QGesture * gesture, QObject * watched, QEvent * event ) = 0
HB_FUNC_STATIC( QGESTURERECOGNIZER_RECOGNIZE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGesture * par1 = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->recognize ( par1, PQOBJECT(2), PQEVENT(3) ) );
  }
}

$prototype=virtual void reset ( QGesture * gesture )
$virtualMethod=|void|reset|QGesture *

$prototype=static Qt::GestureType registerRecognizer ( QGestureRecognizer * recognizer )
$staticMethod=|Qt::GestureType|registerRecognizer|QGestureRecognizer *

$prototype=static void unregisterRecognizer ( Qt::GestureType type )
$staticMethod=|void|unregisterRecognizer|Qt::GestureType

$extraMethods

#pragma ENDDUMP
