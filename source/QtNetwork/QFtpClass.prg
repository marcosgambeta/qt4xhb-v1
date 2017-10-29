/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QFtp INHERIT QObject

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

PROCEDURE destroyObject () CLASS QFtp
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QFtp * o = new QFtp ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->bytesAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->cd ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->clearPendingCommands ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->close () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
      RINT( obj->connectToHost ( PQSTRING(1), OPQUINT16(2,21) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->currentCommand () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QIODevice * ptr = obj->currentDevice ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QIODEVICE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RINT( obj->currentId () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQIODEVICE(2)||ISNIL(2)) && ISOPTNUM(3) )
    {
      RINT( obj->get ( PQSTRING(1), OPQIODEVICE(2,0), ISNIL(3)? (QFtp::TransferType) QFtp::Binary : (QFtp::TransferType) hb_parni(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasPendingCommands () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISOPTCHAR(1) )
    {
      RINT( obj->list ( OPQSTRING(1,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISOPTCHAR(1) && ISOPTCHAR(2) )
    {
      RINT( obj->login ( OPQSTRING(1,QString()), OPQSTRING(2,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->mkdir ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(2,3) && ISQIODEVICE(1) && ISCHAR(2) && ISOPTNUM(3) )
    {
      RINT( obj->put ( PQIODEVICE(1), PQSTRING(2), ISNIL(3)? (QFtp::TransferType) QFtp::Binary : (QFtp::TransferType) hb_parni(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISCHAR(2) && ISOPTNUM(3) )
    {
      RINT( obj->put ( *PQBYTEARRAY(1), PQSTRING(2), ISNIL(3)? (QFtp::TransferType) QFtp::Binary : (QFtp::TransferType) hb_parni(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->rawCommand ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      RQINT64( obj->read ( (char *) hb_parc(1), PQINT64(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QByteArray * ptr = new QByteArray( obj->readAll () );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->remove ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      RINT( obj->rename ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->rmdir ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      RINT( obj->setProxy ( PQSTRING(1), PQUINT16(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->setTransferMode ( (QFtp::TransferMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->state () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->abort ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
