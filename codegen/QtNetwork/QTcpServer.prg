$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTCPSOCKET
REQUEST QNETWORKPROXY
REQUEST QHOSTADDRESS
#endif

CLASS QTcpServer INHERIT QObject

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

$destructor

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
  QTcpServer * o = new QTcpServer ( OPQOBJECT(1,0) );
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
    obj->close ();
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
    RQSTRING( obj->errorString () );
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
    RBOOL( obj->hasPendingConnections () );
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
    RBOOL( obj->isListening () );
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
    RBOOL( obj->listen ( par1, OPQUINT16(2,0) ) );
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
    RINT( obj->maxPendingConnections () );
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
    QTcpSocket * ptr = obj->nextPendingConnection ();
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
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
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
    QHostAddress * ptr = new QHostAddress( obj->serverAddress () );
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
    hb_retni( (int) obj->serverError () );
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
    RQUINT16( obj->serverPort () );
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
    obj->setMaxPendingConnections ( PINT(1) );
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
    obj->setProxy ( *PQNETWORKPROXY(1) );
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
    RBOOL( obj->setSocketDescriptor ( PINT(1) ) );
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
    RINT( obj->socketDescriptor () );
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
    RBOOL( obj->waitForNewConnection ( OPINT(1,0), &par2 ) );
    hb_storl( par2, 2 );
  }
}






#pragma ENDDUMP
