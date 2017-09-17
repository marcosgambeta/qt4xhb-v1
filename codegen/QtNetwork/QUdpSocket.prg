$header

#include "hbclass.ch"

CLASS QUdpSocket INHERIT QAbstractSocket

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bind1
   METHOD bind2
   METHOD bind3
   METHOD bind4
   METHOD bind
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD readDatagram
   METHOD writeDatagram1
   METHOD writeDatagram2
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QUdpSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUdpSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_NEW )
{
  QUdpSocket * o = new QUdpSocket ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
bool bind ( const QHostAddress & address, quint16 port )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND1 )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bind ( *PQHOSTADDRESS(1), PQUINT16(2) ) );
  }
}


/*
bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND2 )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bind ( *PQHOSTADDRESS(1), PQUINT16(2), (QUdpSocket::BindMode) hb_parni(3) ) );
  }
}


/*
bool bind ( quint16 port = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND3 )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bind ( OPQUINT16(1,0) ) );
  }
}


/*
bool bind ( quint16 port, BindMode mode )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND4 )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->bind ( PQUINT16(1), (QUdpSocket::BindMode) hb_parni(2) ) );
  }
}


//[1]bool bind ( const QHostAddress & address, quint16 port )
//[2]bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
//[3]bool bind ( quint16 port = 0 )
//[4]bool bind ( quint16 port, BindMode mode )

HB_FUNC_STATIC( QUDPSOCKET_BIND )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND1 );
  }
  else if( ISNUMPAR(3) && ISQHOSTADDRESS(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND2 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND4 );
  }
}

/*
bool hasPendingDatagrams () const
*/
HB_FUNC_STATIC( QUDPSOCKET_HASPENDINGDATAGRAMS )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasPendingDatagrams () );
  }
}


/*
qint64 pendingDatagramSize () const
*/
HB_FUNC_STATIC( QUDPSOCKET_PENDINGDATAGRAMSIZE )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pendingDatagramSize () );
  }
}


/*
qint64 readDatagram ( char * data, qint64 maxSize, QHostAddress * address = 0, quint16 * port = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_READDATAGRAM ) // TODO: corrigir implementacao
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QHostAddress * par3 = ISNIL(3)? 0 : (QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    quint16 * par4 = ISNIL(4)? 0 : (quint16 *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->readDatagram ( par1, PQINT64(2), par3, par4 ) );
  }
}


/*
qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
*/
HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM1 )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->writeDatagram ( (const char *) hb_parc(1), PQINT64(2), *PQHOSTADDRESS(3), PQUINT16(4) ) );
  }
}


/*
qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )
*/
HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM2 )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->writeDatagram ( *PQBYTEARRAY(1), *PQHOSTADDRESS(2), PQUINT16(3) ) );
  }
}


//[1]qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
//[2]qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISQHOSTADDRESS(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_WRITEDATAGRAM1 );
  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_WRITEDATAGRAM2 );
  }
}




#pragma ENDDUMP
