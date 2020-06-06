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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSharedMemory(QObject *parent = 0)
$internalConstructor=|new1|QObject *=0

$prototype=QSharedMemory(const QString &key, QObject *parent = 0)
$internalConstructor=|new2|const QString &,QObject *=0

/*
[1]QSharedMemory(QObject *parent = 0)
[2]QSharedMemory(const QString &key, QObject *parent = 0)
*/

HB_FUNC_STATIC( QSHAREDMEMORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSharedMemory_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSharedMemory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void setKey(const QString &key)
$method=|void|setKey|const QString &

$prototype=QString key() const
$method=|QString|key|

$prototype=void setNativeKey(const QString &key)
$method=|void|setNativeKey|const QString &

$prototype=QString nativeKey() const
$method=|QString|nativeKey|

$prototype=bool create(int size, AccessMode mode = ReadWrite)
$method=|bool|create|int,QSharedMemory::AccessMode=QSharedMemory::ReadWrite

$prototypeV2=int size() const

$prototype=bool attach(AccessMode mode = ReadWrite)
$method=|bool|attach|QSharedMemory::AccessMode=QSharedMemory::ReadWrite

$prototypeV2=bool isAttached() const

$prototypeV2=bool detach()

$prototype=void *data()
$method=|void *|data|

$prototypeV2=bool lock()

$prototypeV2=bool unlock()

$prototype=SharedMemoryError error() const
$method=|QSharedMemory::SharedMemoryError|error|

$prototype=QString errorString() const
$method=|QString|errorString|

#pragma ENDDUMP
