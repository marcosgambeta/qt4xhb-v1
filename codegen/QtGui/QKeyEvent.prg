%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
$constructor=|new|QEvent::Type,int,Qt::KeyboardModifiers,const QString &=QString(),bool=false,ushort=1

$deleteMethod

$prototypeV2=int count() const

$prototypeV2=bool isAutoRepeat() const

$prototypeV2=int key() const

$prototype=bool matches ( QKeySequence::StandardKey key ) const
$method=|bool|matches|QKeySequence::StandardKey

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=quint32 nativeModifiers() const

$prototypeV2=quint32 nativeScanCode() const

$prototypeV2=quint32 nativeVirtualKey() const

$prototypeV2=QString text() const

$prototype=static QKeyEvent *createExtendedKeyEvent(Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey,quint32 nativeModifiers,const QString& text = QString(), bool autorep = false,ushort count = 1)
$staticMethod=|QKeyEvent *|createExtendedKeyEvent|QEvent::Type,int,Qt::KeyboardModifiers,quint32,quint32,quint32,const QString &=QString(),bool=false,ushort=1

#pragma ENDDUMP
