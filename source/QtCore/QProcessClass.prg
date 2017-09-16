/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPROCESSENVIRONMENT
REQUEST QBYTEARRAY
#endif

CLASS QProcess INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD closeReadChannel
   METHOD closeWriteChannel
   METHOD environment
   METHOD error
   METHOD exitCode
   METHOD exitStatus
   METHOD nativeArguments
   METHOD processChannelMode
   METHOD processEnvironment
   METHOD readAllStandardError
   METHOD readAllStandardOutput
   METHOD readChannel
   METHOD setEnvironment
   METHOD setNativeArguments
   METHOD setProcessChannelMode
   METHOD setProcessEnvironment
   METHOD setReadChannel
   METHOD setStandardErrorFile
   METHOD setStandardInputFile
   METHOD setStandardOutputFile
   METHOD setStandardOutputProcess
   METHOD setWorkingDirectory
   METHOD start1
   METHOD start2
   METHOD start
   METHOD state
   METHOD waitForFinished
   METHOD waitForStarted
   METHOD workingDirectory
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD kill
   METHOD terminate
   METHOD execute1
   METHOD execute2
   METHOD execute
   METHOD startDetached1
   METHOD startDetached2
   METHOD startDetached3
   METHOD startDetached
   METHOD systemEnvironment
   METHOD onError
   METHOD onFinished
   METHOD onReadyReadStandardError
   METHOD onReadyReadStandardOutput
   METHOD onStarted
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProcess
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QProcess>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QProcess ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROCESS_NEW )
{
  QProcess * o = new QProcess ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QPROCESS_DELETE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void closeReadChannel ( ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_CLOSEREADCHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeReadChannel ( (QProcess::ProcessChannel) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void closeWriteChannel ()
*/
HB_FUNC_STATIC( QPROCESS_CLOSEWRITECHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->closeWriteChannel ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList environment () const (deprecated)
*/
HB_FUNC_STATIC( QPROCESS_ENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->environment () );
  }
}

/*
QProcess::ProcessError error () const
*/
HB_FUNC_STATIC( QPROCESS_ERROR )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
int exitCode () const
*/
HB_FUNC_STATIC( QPROCESS_EXITCODE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->exitCode () );
  }
}

/*
QProcess::ExitStatus exitStatus () const
*/
HB_FUNC_STATIC( QPROCESS_EXITSTATUS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->exitStatus () );
  }
}

/*
QString nativeArguments () const
*/
HB_FUNC_STATIC( QPROCESS_NATIVEARGUMENTS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->nativeArguments () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
ProcessChannelMode processChannelMode () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSCHANNELMODE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->processChannelMode () );
  }
}

/*
QProcessEnvironment processEnvironment () const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProcessEnvironment * ptr = new QProcessEnvironment( obj->processEnvironment () );
    _qt4xhb_createReturnClass ( ptr, "QPROCESSENVIRONMENT", true );
  }
}

/*
QByteArray readAllStandardError ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDERROR )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardError () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray readAllStandardOutput ()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDOUTPUT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->readAllStandardOutput () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
ProcessChannel readChannel () const
*/
HB_FUNC_STATIC( QPROCESS_READCHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->readChannel () );
  }
}

/*
void setEnvironment ( const QStringList & environment ) (deprecated)
*/
HB_FUNC_STATIC( QPROCESS_SETENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnvironment ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNativeArguments ( const QString & arguments )
*/
HB_FUNC_STATIC( QPROCESS_SETNATIVEARGUMENTS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNativeArguments ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProcessChannelMode ( ProcessChannelMode mode )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSCHANNELMODE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProcessChannelMode ( (QProcess::ProcessChannelMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProcessEnvironment ( const QProcessEnvironment & environment )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSENVIRONMENT )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProcessEnvironment ( *PQPROCESSENVIRONMENT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setReadChannel ( ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_SETREADCHANNEL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadChannel ( (QProcess::ProcessChannel) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDERRORFILE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStandardErrorFile ( PQSTRING(1), ISNIL(2)? QIODevice::Truncate : (QIODevice::OpenMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardInputFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDINPUTFILE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStandardInputFile ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTFILE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStandardOutputFile ( PQSTRING(1), ISNIL(2)? QIODevice::Truncate : (QIODevice::OpenMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardOutputProcess ( QProcess * destination )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTPROCESS )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProcess * par1 = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStandardOutputProcess ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWorkingDirectory ( const QString & dir )
*/
HB_FUNC_STATIC( QPROCESS_SETWORKINGDIRECTORY )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWorkingDirectory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QPROCESS_START1 )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start ( PQSTRING(1), PQSTRINGLIST(2), ISNIL(3)? QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ( const QString & program, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QPROCESS_START2 )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start ( PQSTRING(1), ISNIL(2)? QIODevice::ReadWrite : (QIODevice::OpenMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
//[2]void start ( const QString & program, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPROCESS_START1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPROCESS_START2 );
  }
}

/*
QProcess::ProcessState state () const
*/
HB_FUNC_STATIC( QPROCESS_STATE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}

/*
bool waitForFinished ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORFINISHED )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForFinished ( OPINT(1,30000) ) );
  }
}

/*
bool waitForStarted ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORSTARTED )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForStarted ( OPINT(1,30000) ) );
  }
}

/*
QString workingDirectory () const
*/
HB_FUNC_STATIC( QPROCESS_WORKINGDIRECTORY )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->workingDirectory () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QPROCESS_ATEND )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}

/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QPROCESS_BYTESAVAILABLE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesAvailable () );
  }
}

/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QPROCESS_BYTESTOWRITE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->bytesToWrite () );
  }
}

/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QPROCESS_CANREADLINE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canReadLine () );
  }
}

/*
virtual void close ()
*/
HB_FUNC_STATIC( QPROCESS_CLOSE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QPROCESS_ISSEQUENTIAL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORBYTESWRITTEN )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForBytesWritten ( OPINT(1,30000) ) );
  }
}

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORREADYREAD )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForReadyRead ( OPINT(1,30000) ) );
  }
}

/*
void kill ()
*/
HB_FUNC_STATIC( QPROCESS_KILL )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->kill ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void terminate ()
*/
HB_FUNC_STATIC( QPROCESS_TERMINATE )
{
  QProcess * obj = (QProcess *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->terminate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int execute ( const QString & program, const QStringList & arguments )
*/
HB_FUNC_STATIC( QPROCESS_EXECUTE1 )
{
  RINT( QProcess::execute ( PQSTRING(1), PQSTRINGLIST(2) ) );
}

/*
int execute ( const QString & program )
*/
HB_FUNC_STATIC( QPROCESS_EXECUTE2 )
{
  RINT( QProcess::execute ( PQSTRING(1) ) );
}

//[1]int execute ( const QString & program, const QStringList & arguments )
//[2]int execute ( const QString & program )

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QPROCESS_EXECUTE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPROCESS_EXECUTE2 );
  }
}

/*
bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED1 )
{
  qint64 par4 = 0;
  RBOOL( QProcess::startDetached ( PQSTRING(1), PQSTRINGLIST(2), PQSTRING(3), &par4 ) );
  hb_stornll( par4, 4 );
}

/*
bool startDetached ( const QString & program, const QStringList & arguments )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED2 )
{
  RBOOL( QProcess::startDetached ( PQSTRING(1), PQSTRINGLIST(2) ) );
}

/*
bool startDetached ( const QString & program )
*/
HB_FUNC_STATIC( QPROCESS_STARTDETACHED3 )
{
  RBOOL( QProcess::startDetached ( PQSTRING(1) ) );
}

//[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
//[2]bool startDetached ( const QString & program, const QStringList & arguments )
//[3]bool startDetached ( const QString & program )

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QPROCESS_STARTDETACHED3 );
  }
}

/*
QStringList systemEnvironment ()
*/
HB_FUNC_STATIC( QPROCESS_SYSTEMENVIRONMENT )
{
  RQSTRINGLIST( QProcess::systemEnvironment () );
}

#pragma ENDDUMP
