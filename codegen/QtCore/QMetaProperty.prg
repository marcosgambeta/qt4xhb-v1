%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMetaProperty()
$constructor=|new|

$deleteMethod

$prototype=const char *name() const
$method=|const char *|name|

$prototype=const char *typeName() const
$method=|const char *|typeName|

$prototypeV2=QVariant::Type type() const

$prototypeV2=int userType() const

$prototypeV2=int propertyIndex() const

$prototypeV2=bool isReadable() const

$prototypeV2=bool isWritable() const

$prototypeV2=bool isResettable() const

$prototype=bool isDesignable(const QObject *obj = 0) const
$method=|bool|isDesignable|const QObject *=0

$prototype=bool isScriptable(const QObject *obj = 0) const
$method=|bool|isScriptable|const QObject *=0

$prototype=bool isStored(const QObject *obj = 0) const
$method=|bool|isStored|const QObject *=0

$prototype=bool isEditable(const QObject *obj = 0) const
$method=|bool|isEditable|const QObject *=0

$prototype=bool isUser(const QObject *obj = 0) const
$method=|bool|isUser|const QObject *=0

$prototypeV2=bool isConstant() const

$prototypeV2=bool isFinal() const

$prototypeV2=bool isFlagType() const

$prototypeV2=bool isEnumType() const

$prototypeV2=QMetaEnum enumerator() const

$prototypeV2=bool hasNotifySignal() const

$prototypeV2=QMetaMethod notifySignal() const

$prototypeV2=int notifySignalIndex() const

$prototypeV2=int revision() const

$prototype=QVariant read(const QObject *obj) const
$method=|QVariant|read|const QObject *

$prototype=bool write(QObject *obj, const QVariant &value) const
$method=|bool|write|QObject *,const QVariant &

$prototype=bool reset(QObject *obj) const
$method=|bool|reset|QObject *

$prototypeV2=bool hasStdCppSet() const

$prototypeV2=bool isValid() const

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$extraMethods

#pragma ENDDUMP
