%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIODevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QProcess ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void closeReadChannel ( ProcessChannel channel )
$method=|void|closeReadChannel|QProcess::ProcessChannel

$prototypeV2=void closeWriteChannel()

$prototype=QStringList environment () const (deprecated)
$method=|QStringList|environment|

$prototypeV2=QProcess::ProcessError error() const

$prototypeV2=int exitCode() const

$prototypeV2=QProcess::ExitStatus exitStatus() const

$prototype=QString nativeArguments () const
$method=|QString|nativeArguments||#if defined(Q_OS_WIN) || defined(Q_OS_SYMBIAN)

$prototypeV2=QProcess::ProcessChannelMode processChannelMode() const

$prototypeV2=QProcessEnvironment processEnvironment() const

$prototypeV2=QByteArray readAllStandardError()

$prototypeV2=QByteArray readAllStandardOutput()

$prototypeV2=QProcess::ProcessChannel readChannel() const

$prototype=void setEnvironment ( const QStringList & environment ) (deprecated)
$method=|void|setEnvironment|const QStringList &

$prototype=void setNativeArguments ( const QString & arguments )
$method=|void|setNativeArguments|const QString &|#if defined(Q_OS_WIN) || defined(Q_OS_SYMBIAN)

$prototype=void setProcessChannelMode ( ProcessChannelMode mode )
$method=|void|setProcessChannelMode|QProcess::ProcessChannelMode

$prototype=void setProcessEnvironment ( const QProcessEnvironment & environment )
$method=|void|setProcessEnvironment|const QProcessEnvironment &

$prototype=void setReadChannel ( ProcessChannel channel )
$method=|void|setReadChannel|QProcess::ProcessChannel

$prototype=void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
$method=|void|setStandardErrorFile|const QString &,QIODevice::OpenMode=QIODevice::Truncate

$prototype=void setStandardInputFile ( const QString & fileName )
$method=|void|setStandardInputFile|const QString &

$prototype=void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
$method=|void|setStandardOutputFile|const QString &,QIODevice::OpenMode=QIODevice::Truncate

$prototype=void setStandardOutputProcess ( QProcess * destination )
$method=|void|setStandardOutputProcess|QProcess *

$prototype=void setWorkingDirectory ( const QString & dir )
$method=|void|setWorkingDirectory|const QString &

$prototype=void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
$internalMethod=|void|start,start1|const QString &,const QStringList &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void start ( const QString & program, OpenMode mode = ReadWrite )
$internalMethod=|void|start,start2|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
[1]void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
[2]void start ( const QString & program, OpenMode mode = ReadWrite )
*/

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QProcess_start1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QProcess_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototypeV2=QProcess::ProcessState state() const

$prototype=bool waitForFinished ( int msecs = 30000 )
$method=|bool|waitForFinished|int=30000

$prototype=bool waitForStarted ( int msecs = 30000 )
$method=|bool|waitForStarted|int=30000

$prototypeV2=QString workingDirectory() const

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual qint64 bytesAvailable() const

$prototypeV2=virtual qint64 bytesToWrite() const

$prototypeV2=virtual bool canReadLine() const

$prototypeV2=virtual void close()

$prototypeV2=virtual bool isSequential() const

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$prototypeV2=void kill()

$prototypeV2=void terminate()

$prototype=static int execute ( const QString & program, const QStringList & arguments )
$internalStaticMethod=|int|execute,execute1|const QString &,const QStringList &

$prototype=static int execute ( const QString & program )
$internalStaticMethod=|int|execute,execute2|const QString &

/*
[1]int execute ( const QString & program, const QStringList & arguments )
[2]int execute ( const QString & program )
*/

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_execute1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_execute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=execute

$prototype=static bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
%% TODO: implementar 'qint64 *=0'
$internalStaticMethod=|bool|startDetached,startDetached1|const QString &,const QStringList &,const QString &,NULL

$prototype=static bool startDetached ( const QString & program, const QStringList & arguments )
$internalStaticMethod=|bool|startDetached,startDetached2|const QString &,const QStringList &

$prototype=static bool startDetached ( const QString & program )
$internalStaticMethod=|bool|startDetached,startDetached3|const QString &

/*
[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
[2]bool startDetached ( const QString & program, const QStringList & arguments )
[3]bool startDetached ( const QString & program )
*/

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISBETWEEN(3,4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) )
  {
    QProcess_startDetached1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_startDetached2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_startDetached3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=startDetached

$prototypeV2=static QStringList systemEnvironment()

$beginSignals
$signal=|error(QProcess::ProcessError)
$signal=|finished(int,QProcess::ExitStatus)
$signal=|readyReadStandardError()
$signal=|readyReadStandardOutput()
$signal=|started()
$signal=|stateChanged(QProcess::ProcessState)
$endSignals

#pragma ENDDUMP
