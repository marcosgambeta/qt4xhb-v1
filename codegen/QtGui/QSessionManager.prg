$header

#include "hbclass.ch"

CLASS QSessionManager INHERIT QObject

   DATA self_destruction INIT .F.

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
   METHOD setManagerProperty1
   METHOD setManagerProperty2
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
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSERRORINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->allowsErrorInteraction () );
  }
}

/*
bool allowsInteraction ()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->allowsInteraction () );
  }
}

/*
void cancel ()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_CANCEL )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancel ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList discardCommand () const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_DISCARDCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->discardCommand () );
  }
}

/*
bool isPhase2 () const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ISPHASE2 )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isPhase2 () );
  }
}

/*
void release ()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RELEASE )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->release ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void requestPhase2 ()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_REQUESTPHASE2 )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->requestPhase2 ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList restartCommand () const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RESTARTCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->restartCommand () );
  }
}

/*
RestartHint restartHint () const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RESTARTHINT )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->restartHint () );
  }
}

/*
QString sessionId () const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONID )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->sessionId () );
  }
}

/*
QString sessionKey () const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONKEY )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->sessionKey () );
  }
}

/*
void setDiscardCommand ( const QStringList & list )
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETDISCARDCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDiscardCommand ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManagerProperty ( const QString & name, const QStringList & value )
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY1 )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setManagerProperty ( PQSTRING(1), PQSTRINGLIST(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManagerProperty ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY2 )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setManagerProperty ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setManagerProperty ( const QString & name, const QStringList & value )
//[2]void setManagerProperty ( const QString & name, const QString & value )

HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSESSIONMANAGER_SETMANAGERPROPERTY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSESSIONMANAGER_SETMANAGERPROPERTY2 );
  }
}

/*
void setRestartCommand ( const QStringList & command )
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETRESTARTCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRestartCommand ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRestartHint ( RestartHint hint )
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETRESTARTHINT )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRestartHint ( (QSessionManager::RestartHint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
