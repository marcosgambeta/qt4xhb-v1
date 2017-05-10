/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTCPSOCKET
REQUEST QNETWORKPROXY
REQUEST QHOSTADDRESS
#endif

CLASS QTcpServer INHERIT QObject

   DATA class_id INIT Class_Id_QTcpServer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD proxy
   METHOD serverAddress
   METHOD serverError
   METHOD serverPort
   METHOD setMaxPendingConnections
   METHOD setProxy
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD waitForNewConnection
   METHOD onNewConnection
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTcpServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTcpServer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QNetworkProxy>

/*
QTcpServer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTCPSERVER_NEW )
{
  QTcpServer * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTcpServer ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QTCPSERVER_DELETE )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void close ()
*/
HB_FUNC_STATIC( QTCPSERVER_CLOSE )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QTCPSERVER_ERRORSTRING )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
virtual bool hasPendingConnections () const
*/
HB_FUNC_STATIC( QTCPSERVER_HASPENDINGCONNECTIONS )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasPendingConnections (  ) );
  }
}


/*
bool isListening () const
*/
HB_FUNC_STATIC( QTCPSERVER_ISLISTENING )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isListening (  ) );
  }
}


/*
bool listen ( const QHostAddress & address = QHostAddress::Any, quint16 port = 0 )
*/
HB_FUNC_STATIC( QTCPSERVER_LISTEN )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress par1 = ISNIL(1)? QHostAddress::Any : *(QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    quint16 par2 = ISNIL(2)? 0 : hb_parni(2);
    hb_retl( obj->listen ( par1, par2 ) );
  }
}


/*
int maxPendingConnections () const
*/
HB_FUNC_STATIC( QTCPSERVER_MAXPENDINGCONNECTIONS )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maxPendingConnections (  ) );
  }
}


/*
virtual QTcpSocket * nextPendingConnection ()
*/
HB_FUNC_STATIC( QTCPSERVER_NEXTPENDINGCONNECTION )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTcpSocket * ptr = obj->nextPendingConnection (  );
    _qt4xhb_createReturnClass ( ptr, "QTCPSOCKET" );
  }
}


/*
QNetworkProxy proxy () const
*/
HB_FUNC_STATIC( QTCPSERVER_PROXY )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
}


/*
QHostAddress serverAddress () const
*/
HB_FUNC_STATIC( QTCPSERVER_SERVERADDRESS )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->serverAddress (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QAbstractSocket::SocketError serverError () const
*/
HB_FUNC_STATIC( QTCPSERVER_SERVERERROR )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->serverError (  ) );
  }
}


/*
quint16 serverPort () const
*/
HB_FUNC_STATIC( QTCPSERVER_SERVERPORT )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    quint16 i = obj->serverPort (  );
    hb_retni( i );
  }
}


/*
void setMaxPendingConnections ( int numConnections )
*/
HB_FUNC_STATIC( QTCPSERVER_SETMAXPENDINGCONNECTIONS )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaxPendingConnections ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProxy ( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QTCPSERVER_SETPROXY )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxy * par1 = (QNetworkProxy *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProxy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setSocketDescriptor ( int socketDescriptor )
*/
HB_FUNC_STATIC( QTCPSERVER_SETSOCKETDESCRIPTOR )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setSocketDescriptor ( par1 ) );
  }
}


/*
int socketDescriptor () const
*/
HB_FUNC_STATIC( QTCPSERVER_SOCKETDESCRIPTOR )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->socketDescriptor (  ) );
  }
}


/*
bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
*/
HB_FUNC_STATIC( QTCPSERVER_WAITFORNEWCONNECTION )
{
  QTcpServer * obj = (QTcpServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    hb_retl( obj->waitForNewConnection ( OPINT(1,0), &par2 ) );
    hb_storl( par2, 2 );
  }
}






#pragma ENDDUMP
