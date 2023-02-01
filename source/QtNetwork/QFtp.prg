/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QIODEVICE
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

PROCEDURE destroyObject() CLASS QFtp
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QFtp>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

/*
QFtp( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QFTP_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    QFtp * obj = new QFtp( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFTP_DELETE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QFTP_BYTESAVAILABLE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int cd( const QString & dir )
*/
HB_FUNC_STATIC( QFTP_CD )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->cd( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clearPendingCommands()
*/
HB_FUNC_STATIC( QFTP_CLEARPENDINGCOMMANDS )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearPendingCommands();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int close()
*/
HB_FUNC_STATIC( QFTP_CLOSE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->close() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int connectToHost( const QString & host, quint16 port = 21 )
*/
HB_FUNC_STATIC( QFTP_CONNECTTOHOST )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      RINT( obj->connectToHost( PQSTRING(1), OPQUINT16( 2, 21 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QFtp::Command currentCommand() const
*/
HB_FUNC_STATIC( QFTP_CURRENTCOMMAND )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->currentCommand() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QIODevice * currentDevice() const
*/
HB_FUNC_STATIC( QFTP_CURRENTDEVICE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QIODevice * ptr = obj->currentDevice();
      Qt4xHb::createReturnQObjectClass(ptr, "QIODEVICE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int currentId() const
*/
HB_FUNC_STATIC( QFTP_CURRENTID )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentId() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QFtp::Error error() const
*/
HB_FUNC_STATIC( QFTP_ERROR )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QFTP_ERRORSTRING )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int get( const QString & file, QIODevice * dev = 0, QFtp::TransferType type = QFtp::Binary )
*/
HB_FUNC_STATIC( QFTP_GET )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && HB_ISCHAR(1) && ( ISQIODEVICE(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
    {
#endif
      RINT( obj->get( PQSTRING(1), OPQIODEVICE( 2, 0 ), HB_ISNIL(3) ? ( QFtp::TransferType ) QFtp::Binary : ( QFtp::TransferType ) hb_parni(3) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasPendingCommands() const
*/
HB_FUNC_STATIC( QFTP_HASPENDINGCOMMANDS )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingCommands() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int list( const QString & dir = QString() )
*/
HB_FUNC_STATIC( QFTP_LIST )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) )
    {
#endif
      RINT( obj->list( OPQSTRING( 1, QString() ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int login( const QString & user = QString(), const QString & password = QString() )
*/
HB_FUNC_STATIC( QFTP_LOGIN )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
    {
#endif
      RINT( obj->login( OPQSTRING( 1, QString() ), OPQSTRING( 2, QString() ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int mkdir( const QString & dir )
*/
HB_FUNC_STATIC( QFTP_MKDIR )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->mkdir( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFTP_PUT )
{
  if( ISBETWEEN(2, 3) && ISQIODEVICE(1) && HB_ISCHAR(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    int put( QIODevice * dev, const QString & file, QFtp::TransferType type = QFtp::Binary )
    */
    QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RINT( obj->put( PQIODEVICE(1), PQSTRING(2), HB_ISNIL(3) ? ( QFtp::TransferType ) QFtp::Binary : ( QFtp::TransferType ) hb_parni(3) ) );
    }
  }
  else if( ISBETWEEN(2, 3) && ISQBYTEARRAY(1) && HB_ISCHAR(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    int put( const QByteArray & data, const QString & file, QFtp::TransferType type = QFtp::Binary )
    */
    QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RINT( obj->put( *PQBYTEARRAY(1), PQSTRING(2), HB_ISNIL(3) ? ( QFtp::TransferType ) QFtp::Binary : ( QFtp::TransferType ) hb_parni(3) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int rawCommand( const QString & command )
*/
HB_FUNC_STATIC( QFTP_RAWCOMMAND )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->rawCommand( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint64 read( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFTP_READ )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RQINT64( obj->read( ( char * ) hb_parc(1), PQINT64(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QByteArray readAll()
*/
HB_FUNC_STATIC( QFTP_READALL )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->readAll() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int remove( const QString & file )
*/
HB_FUNC_STATIC( QFTP_REMOVE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->remove( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int rename( const QString & oldname, const QString & newname )
*/
HB_FUNC_STATIC( QFTP_RENAME )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      RINT( obj->rename( PQSTRING(1), PQSTRING(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int rmdir( const QString & dir )
*/
HB_FUNC_STATIC( QFTP_RMDIR )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RINT( obj->rmdir( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int setProxy( const QString & host, quint16 port )
*/
HB_FUNC_STATIC( QFTP_SETPROXY )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RINT( obj->setProxy( PQSTRING(1), PQUINT16(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int setTransferMode( QFtp::TransferMode mode )
*/
HB_FUNC_STATIC( QFTP_SETTRANSFERMODE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->setTransferMode( ( QFtp::TransferMode ) hb_parni(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QFtp::State state() const
*/
HB_FUNC_STATIC( QFTP_STATE )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void abort()
*/
HB_FUNC_STATIC( QFTP_ABORT )
{
  QFtp * obj = qobject_cast<QFtp*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->abort();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QFtpSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QFTP_ONCOMMANDFINISHED )
{
  QFtpSlots_connect_signal("commandFinished(int,bool)", "commandFinished(int,bool)");
}

HB_FUNC_STATIC( QFTP_ONCOMMANDSTARTED )
{
  QFtpSlots_connect_signal("commandStarted(int)", "commandStarted(int)");
}

HB_FUNC_STATIC( QFTP_ONDATATRANSFERPROGRESS )
{
  QFtpSlots_connect_signal("dataTransferProgress(qint64,qint64)", "dataTransferProgress(qint64,qint64)");
}

HB_FUNC_STATIC( QFTP_ONDONE )
{
  QFtpSlots_connect_signal("done(bool)", "done(bool)");
}

HB_FUNC_STATIC( QFTP_ONLISTINFO )
{
  QFtpSlots_connect_signal("listInfo(QUrlInfo)", "listInfo(QUrlInfo)");
}

HB_FUNC_STATIC( QFTP_ONRAWCOMMANDREPLY )
{
  QFtpSlots_connect_signal("rawCommandReply(int,QString)", "rawCommandReply(int,QString)");
}

HB_FUNC_STATIC( QFTP_ONREADYREAD )
{
  QFtpSlots_connect_signal("readyRead()", "readyRead()");
}

HB_FUNC_STATIC( QFTP_ONSTATECHANGED )
{
  QFtpSlots_connect_signal("stateChanged(int)", "stateChanged(int)");
}

#pragma ENDDUMP
