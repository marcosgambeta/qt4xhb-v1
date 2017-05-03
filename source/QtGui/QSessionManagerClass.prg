/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSessionManager INHERIT QObject

   DATA class_id INIT Class_Id_QSessionManager
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

PROCEDURE destroyObject () CLASS QSessionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSessionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"



/*
bool allowsErrorInteraction ()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSERRORINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->allowsErrorInteraction (  ) );
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
    hb_retl( obj->allowsInteraction (  ) );
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
    obj->cancel (  );
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
    QStringList strl = obj->discardCommand (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    hb_retl( obj->isPhase2 (  ) );
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
    obj->release (  );
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
    obj->requestPhase2 (  );
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
    QStringList strl = obj->restartCommand (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
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
    hb_retni( (int) obj->restartHint (  ) );
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
    QString str1 = obj->sessionId (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QString str1 = obj->sessionKey (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
    obj->setDiscardCommand ( par1 );
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
    QStringList par2 = _qt4xhb_convert_array_parameter_to_qstringlist(2);
    obj->setManagerProperty ( PQSTRING(1), par2 );
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
    QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
    obj->setRestartCommand ( par1 );
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
    int par1 = hb_parni(1);
    obj->setRestartHint (  (QSessionManager::RestartHint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
