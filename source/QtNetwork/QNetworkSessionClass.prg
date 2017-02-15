/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKINTERFACE
REQUEST QVARIANT

CLASS QNetworkSession INHERIT QObject

   DATA class_id INIT Class_Id_QNetworkSession
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeTime
   METHOD bytesReceived
   METHOD bytesWritten
   METHOD configuration
   METHOD error
   METHOD errorString
   METHOD interface
   METHOD isOpen
   METHOD sessionProperty
   METHOD setSessionProperty
   METHOD state
   METHOD waitForOpened
   METHOD accept
   METHOD close
   METHOD ignore
   METHOD migrate
   METHOD open
   METHOD reject
   METHOD stop
   METHOD onClosed
   METHOD onError
   METHOD onNewConfigurationActivated
   METHOD onOpened
   METHOD onPreferredConfigurationChanged
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkSession
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QNetworkSession>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_NEW )
{
  QNetworkSession * o = NULL;
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkSession ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkSession *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QNETWORKSESSION_DELETE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint64 activeTime () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACTIVETIME )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint64 i = obj->activeTime (  );
    hb_retni( i );
  }
}


/*
quint64 bytesReceived () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESRECEIVED )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint64 i = obj->bytesReceived (  );
    hb_retni( i );
  }
}


/*
quint64 bytesWritten () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_BYTESWRITTEN )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint64 i = obj->bytesWritten (  );
    hb_retni( i );
  }
}


/*
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_CONFIGURATION )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
SessionError error () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERROR )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ERRORSTRING )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QNetworkInterface interface () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_INTERFACE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkInterface * ptr = new QNetworkInterface( obj->interface (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
  }
}


/*
bool isOpen () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_ISOPEN )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isOpen (  );
    hb_retl( b );
  }
}


/*
QVariant sessionProperty ( const QString & key ) const
*/
HB_FUNC_STATIC( QNETWORKSESSION_SESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * ptr = new QVariant( obj->sessionProperty ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void setSessionProperty ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKSESSION_SETSESSIONPROPERTY )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSessionProperty ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state () const
*/
HB_FUNC_STATIC( QNETWORKSESSION_STATE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
bool waitForOpened ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QNETWORKSESSION_WAITFOROPENED )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 30000 : hb_parni(1);
    bool b = obj->waitForOpened ( par1 );
    hb_retl( b );
  }
}


/*
void accept ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_ACCEPT )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void close ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_CLOSE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ignore ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_IGNORE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ignore (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void migrate ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_MIGRATE )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->migrate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_OPEN )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reject ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_REJECT )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reject (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QNETWORKSESSION_STOP )
{
  QNetworkSession * obj = (QNetworkSession *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
