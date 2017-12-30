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

$prototype=QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
$constructor=|new|QEvent::Type,int,Qt::KeyboardModifiers,const QString &=QString(),bool=false,ushort=1

$deleteMethod

$prototype=int count () const
$method=|int|count|

$prototype=bool isAutoRepeat () const
$method=|bool|isAutoRepeat|

$prototype=int key () const
$method=|int|key|

$prototype=bool matches ( QKeySequence::StandardKey key ) const
$method=|bool|matches|QKeySequence::StandardKey

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=quint32 nativeModifiers () const
$method=|quint32|nativeModifiers|

$prototype=quint32 nativeScanCode () const
$method=|quint32|nativeScanCode|

$prototype=quint32 nativeVirtualKey () const
$method=|quint32|nativeVirtualKey|

$prototype=QString text () const
$method=|QString|text|

$prototype=static QKeyEvent *createExtendedKeyEvent(Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey,quint32 nativeModifiers,const QString& text = QString(), bool autorep = false,ushort count = 1)
$staticMethod=|QKeyEvent *|createExtendedKeyEvent|QEvent::Type,int,Qt::KeyboardModifiers,quint32,quint32,quint32,const QString &=QString(),bool=false,ushort=1

#pragma ENDDUMP
