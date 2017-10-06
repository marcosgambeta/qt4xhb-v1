$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QShortcutEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_NEW )
{
  QShortcutEvent * o = new QShortcutEvent ( *PQKEYSEQUENCE(1), PINT(2), OPBOOL(3,false) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const QKeySequence &key()
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_KEY )
{
  QShortcutEvent * obj = (QShortcutEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QKeySequence * ptr = &obj->key ();
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE" );
  }
}

/*
int shortcutId()
*/
$method=|int|shortcutId|

/*
bool isAmbiguous()
*/
$method=|bool|isAmbiguous|

#pragma ENDDUMP
