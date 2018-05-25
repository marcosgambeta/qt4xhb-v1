%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD error
   METHOD errorString
   METHOD key
   METHOD release
   METHOD setKey

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSystemSemaphore ( const QString & key, int initialValue = 0, AccessMode mode = Open )
$constructor=|new|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$deleteMethod

$prototype=bool acquire ()
$method=|bool|acquire|

$prototype=SystemSemaphoreError error () const
$method=|QSystemSemaphore::SystemSemaphoreError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString key () const
$method=|QString|key|

$prototype=bool release ( int n = 1 )
$method=|bool|release|int=1

$prototype=void setKey ( const QString & key, int initialValue = 0, AccessMode mode = Open )
$method=|void|setKey|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$extraMethods

#pragma ENDDUMP
