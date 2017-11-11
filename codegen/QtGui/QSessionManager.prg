$header

#include "hbclass.ch"

CLASS QSessionManager INHERIT QObject

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSessionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
bool allowsErrorInteraction ()
*/
$method=|bool|allowsErrorInteraction|

/*
bool allowsInteraction ()
*/
$method=|bool|allowsInteraction|

/*
void cancel ()
*/
$method=|void|cancel|

/*
QStringList discardCommand () const
*/
$method=|QStringList|discardCommand|

/*
bool isPhase2 () const
*/
$method=|bool|isPhase2|

/*
void release ()
*/
$method=|void|release|

/*
void requestPhase2 ()
*/
$method=|void|requestPhase2|

/*
QStringList restartCommand () const
*/
$method=|QStringList|restartCommand|

/*
RestartHint restartHint () const
*/
$method=|QSessionManager::RestartHint|restartHint|

/*
QString sessionId () const
*/
$method=|QString|sessionId|

/*
QString sessionKey () const
*/
$method=|QString|sessionKey|

/*
void setDiscardCommand ( const QStringList & list )
*/
$method=|void|setDiscardCommand|const QStringList &

/*
void setManagerProperty ( const QString & name, const QStringList & value )
*/
$internalMethod=|void|setManagerProperty,setManagerProperty1|const QString &,const QStringList &

/*
void setManagerProperty ( const QString & name, const QString & value )
*/
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

/*
void setRestartCommand ( const QStringList & command )
*/
$method=|void|setRestartCommand|const QStringList &

/*
void setRestartHint ( RestartHint hint )
*/
$method=|void|setRestartHint|QSessionManager::RestartHint

#pragma ENDDUMP
