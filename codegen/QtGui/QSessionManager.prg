%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD allowsErrorInteraction
   METHOD allowsInteraction
   METHOD cancel
   METHOD discardCommand
   METHOD isPhase2
   METHOD release
   METHOD requestPhase2
   METHOD restartCommand
   METHOD restartHint
   METHOD sessionId
   METHOD sessionKey
   METHOD setDiscardCommand
   METHOD setManagerProperty
   METHOD setRestartCommand
   METHOD setRestartHint

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=bool allowsErrorInteraction ()
$method=|bool|allowsErrorInteraction|

$prototype=bool allowsInteraction ()
$method=|bool|allowsInteraction|

$prototype=void cancel ()
$method=|void|cancel|

$prototype=QStringList discardCommand () const
$method=|QStringList|discardCommand|

$prototype=bool isPhase2 () const
$method=|bool|isPhase2|

$prototype=void release ()
$method=|void|release|

$prototype=void requestPhase2 ()
$method=|void|requestPhase2|

$prototype=QStringList restartCommand () const
$method=|QStringList|restartCommand|

$prototype=RestartHint restartHint () const
$method=|QSessionManager::RestartHint|restartHint|

$prototype=QString sessionId () const
$method=|QString|sessionId|

$prototype=QString sessionKey () const
$method=|QString|sessionKey|

$prototype=void setDiscardCommand ( const QStringList & list )
$method=|void|setDiscardCommand|const QStringList &

$prototype=void setManagerProperty ( const QString & name, const QStringList & value )
$internalMethod=|void|setManagerProperty,setManagerProperty1|const QString &,const QStringList &

$prototype=void setManagerProperty ( const QString & name, const QString & value )
$internalMethod=|void|setManagerProperty,setManagerProperty2|const QString &,const QString &

//[1]void setManagerProperty ( const QString & name, const QStringList & value )
//[2]void setManagerProperty ( const QString & name, const QString & value )

HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QSessionManager_setManagerProperty1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSessionManager_setManagerProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setRestartCommand ( const QStringList & command )
$method=|void|setRestartCommand|const QStringList &

$prototype=void setRestartHint ( RestartHint hint )
$method=|void|setRestartHint|QSessionManager::RestartHint

#pragma ENDDUMP
