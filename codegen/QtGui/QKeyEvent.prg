$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYEVENT
#endif

CLASS QKeyEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD count
   METHOD isAutoRepeat
   METHOD key
   METHOD matches
   METHOD modifiers
   METHOD nativeModifiers
   METHOD nativeScanCode
   METHOD nativeVirtualKey
   METHOD text
   METHOD createExtendedKeyEvent

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QKeyEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
HB_FUNC_STATIC( QKEYEVENT_NEW )
{
  int par3 = hb_parni(3);
  QKeyEvent * o = new QKeyEvent ( (QEvent::Type) hb_parni(1), PINT(2), (Qt::KeyboardModifiers) par3, OPQSTRING(4,QString()), OPBOOL(5,false), OPUSHORT(6,1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int count () const
*/
$method=|int|count|

/*
bool isAutoRepeat () const
*/
$method=|bool|isAutoRepeat|

/*
int key () const
*/
$method=|int|key|

/*
bool matches ( QKeySequence::StandardKey key ) const
*/
$method=|bool|matches|QKeySequence::StandardKey

/*
Qt::KeyboardModifiers modifiers () const
*/
$method=|Qt::KeyboardModifiers|modifiers|

/*
quint32 nativeModifiers () const
*/
$method=|quint32|nativeModifiers|

/*
quint32 nativeScanCode () const
*/
$method=|quint32|nativeScanCode|

/*
quint32 nativeVirtualKey () const
*/
$method=|quint32|nativeVirtualKey|

/*
QString text () const
*/
$method=|QString|text|

/*
static QKeyEvent *createExtendedKeyEvent(Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey,quint32 nativeModifiers,const QString& text = QString(), bool autorep = false,ushort count = 1)
*/
$staticMethod=|QKeyEvent *|createExtendedKeyEvent|QEvent::Type,int,Qt::KeyboardModifiers,quint32,quint32,quint32,const QString &=QString(),bool=false,ushort=1

#pragma ENDDUMP
