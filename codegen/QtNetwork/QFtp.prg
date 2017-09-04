$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QFtp INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bytesAvailable
   METHOD cd
   METHOD clearPendingCommands
   METHOD close
   METHOD connectToHost
   METHOD currentCommand
   METHOD currentDevice
   METHOD currentId
   METHOD error
   METHOD errorString
   METHOD get
   METHOD hasPendingCommands
   METHOD list
   METHOD login
   METHOD mkdir
   METHOD put1
   METHOD put2
   METHOD put
   METHOD rawCommand
   METHOD read
   METHOD readAll
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD setProxy
   METHOD setTransferMode
   METHOD state
   METHOD abort
   METHOD onCommandFinished
   METHOD onCommandStarted
   METHOD onDataTransferProgress
   METHOD onDone
   METHOD onListInfo
   METHOD onRawCommandReply
   METHOD onReadyRead
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFtp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFtp ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QFTP_NEW )
{
  QFtp * o = new QFtp ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QFTP_DELETE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QFTP_BYTESAVAILABLE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesAvailable () );
  }
}


/*
int cd ( const QString & dir )
*/
HB_FUNC_STATIC( QFTP_CD )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->cd ( PQSTRING(1) ) );
  }
}


/*
void clearPendingCommands ()
*/
HB_FUNC_STATIC( QFTP_CLEARPENDINGCOMMANDS )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearPendingCommands ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int close ()
*/
HB_FUNC_STATIC( QFTP_CLOSE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->close () );
  }
}


/*
int connectToHost ( const QString & host, quint16 port = 21 )
*/
HB_FUNC_STATIC( QFTP_CONNECTTOHOST )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->connectToHost ( PQSTRING(1), OPQUINT16(2,21) ) );
  }
}


/*
Command currentCommand () const
*/
HB_FUNC_STATIC( QFTP_CURRENTCOMMAND )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->currentCommand () );
  }
}


/*
QIODevice * currentDevice () const
*/
HB_FUNC_STATIC( QFTP_CURRENTDEVICE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->currentDevice ();
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
int currentId () const
*/
HB_FUNC_STATIC( QFTP_CURRENTID )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentId () );
  }
}


/*
Error error () const
*/
HB_FUNC_STATIC( QFTP_ERROR )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QFTP_ERRORSTRING )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
int get ( const QString & file, QIODevice * dev = 0, TransferType type = Binary )
*/
HB_FUNC_STATIC( QFTP_GET )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par2 = ISNIL(2)? 0 : (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? (int) QFtp::Binary : hb_parni(3);
    RINT( obj->get ( PQSTRING(1), par2, (QFtp::TransferType) par3 ) );
  }
}


/*
bool hasPendingCommands () const
*/
HB_FUNC_STATIC( QFTP_HASPENDINGCOMMANDS )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasPendingCommands () );
  }
}


/*
int list ( const QString & dir = QString() )
*/
HB_FUNC_STATIC( QFTP_LIST )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->list ( OPQSTRING(1,QString()) ) );
  }
}


/*
int login ( const QString & user = QString(), const QString & password = QString() )
*/
HB_FUNC_STATIC( QFTP_LOGIN )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->login ( OPQSTRING(1,QString()), OPQSTRING(2,QString()) ) );
  }
}


/*
int mkdir ( const QString & dir )
*/
HB_FUNC_STATIC( QFTP_MKDIR )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->mkdir ( PQSTRING(1) ) );
  }
}


/*
int put ( QIODevice * dev, const QString & file, TransferType type = Binary )
*/
HB_FUNC_STATIC( QFTP_PUT1 )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QFtp::Binary : hb_parni(3);
    RINT( obj->put ( PQIODEVICE(1), PQSTRING(2), (QFtp::TransferType) par3 ) );
  }
}


/*
int put ( const QByteArray & data, const QString & file, TransferType type = Binary )
*/
HB_FUNC_STATIC( QFTP_PUT2 )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QFtp::Binary : hb_parni(3);
    RINT( obj->put ( *PQBYTEARRAY(1), PQSTRING(2), (QFtp::TransferType) par3 ) );
  }
}


//[1]int put ( QIODevice * dev, const QString & file, TransferType type = Binary )
//[2]int put ( const QByteArray & data, const QString & file, TransferType type = Binary )

HB_FUNC_STATIC( QFTP_PUT )
{
  if( ISBETWEEN(2,3) && ISQIODEVICE(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFTP_PUT1 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFTP_PUT2 );
  }
}

/*
int rawCommand ( const QString & command )
*/
HB_FUNC_STATIC( QFTP_RAWCOMMAND )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rawCommand ( PQSTRING(1) ) );
  }
}


/*
qint64 read ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFTP_READ )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->read ( par1, PQINT64(2) ) );
  }
}


/*
QByteArray readAll ()
*/
HB_FUNC_STATIC( QFTP_READALL )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAll () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int remove ( const QString & file )
*/
HB_FUNC_STATIC( QFTP_REMOVE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->remove ( PQSTRING(1) ) );
  }
}


/*
int rename ( const QString & oldname, const QString & newname )
*/
HB_FUNC_STATIC( QFTP_RENAME )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rename ( PQSTRING(1), PQSTRING(2) ) );
  }
}


/*
int rmdir ( const QString & dir )
*/
HB_FUNC_STATIC( QFTP_RMDIR )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rmdir ( PQSTRING(1) ) );
  }
}


/*
int setProxy ( const QString & host, quint16 port )
*/
HB_FUNC_STATIC( QFTP_SETPROXY )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->setProxy ( PQSTRING(1), PQUINT16(2) ) );
  }
}


/*
int setTransferMode ( TransferMode mode )
*/
HB_FUNC_STATIC( QFTP_SETTRANSFERMODE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->setTransferMode ( (QFtp::TransferMode) hb_parni(1) ) );
  }
}


/*
State state () const
*/
HB_FUNC_STATIC( QFTP_STATE )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}


/*
void abort ()
*/
HB_FUNC_STATIC( QFTP_ABORT )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
