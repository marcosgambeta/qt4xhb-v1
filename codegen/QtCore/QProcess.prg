$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPROCESSENVIRONMENT
REQUEST QBYTEARRAY
#endif

CLASS QProcess INHERIT QIODevice

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

$destructor

#pragma BEGINDUMP

#include <QProcess>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QProcess ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void closeReadChannel ( ProcessChannel channel )
*/
$method=|void|closeReadChannel|QProcess::ProcessChannel

/*
void closeWriteChannel ()
*/
$method=|void|closeWriteChannel|

/*
QStringList environment () const (deprecated)
*/
$method=|QStringList|environment|

/*
QProcess::ProcessError error () const
*/
$method=|QProcess::ProcessError|error|

/*
int exitCode () const
*/
$method=|int|exitCode|

/*
QProcess::ExitStatus exitStatus () const
*/
$method=|QProcess::ExitStatus|exitStatus|

/*
QString nativeArguments () const
*/
$method=|QString|nativeArguments|

/*
ProcessChannelMode processChannelMode () const
*/
$method=|QProcess::ProcessChannelMode|processChannelMode|

/*
QProcessEnvironment processEnvironment () const
*/
$method=|QProcessEnvironment|processEnvironment|

/*
QByteArray readAllStandardError ()
*/
$method=|QByteArray|readAllStandardError|

/*
QByteArray readAllStandardOutput ()
*/
$method=|QByteArray|readAllStandardOutput|

/*
ProcessChannel readChannel () const
*/
$method=|QProcess::ProcessChannel|readChannel|

/*
void setEnvironment ( const QStringList & environment ) (deprecated)
*/
$method=|void|setEnvironment|const QStringList &

/*
void setNativeArguments ( const QString & arguments )
*/
$method=|void|setNativeArguments|const QString &

/*
void setProcessChannelMode ( ProcessChannelMode mode )
*/
$method=|void|setProcessChannelMode|QProcess::ProcessChannelMode

/*
void setProcessEnvironment ( const QProcessEnvironment & environment )
*/
$method=|void|setProcessEnvironment|const QProcessEnvironment &

/*
void setReadChannel ( ProcessChannel channel )
*/
$method=|void|setReadChannel|QProcess::ProcessChannel

/*
void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
*/
$method=|void|setStandardErrorFile|const QString &,QIODevice::OpenMode=QIODevice::Truncate

/*
void setStandardInputFile ( const QString & fileName )
*/
$method=|void|setStandardInputFile|const QString &

/*
void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
*/
$method=|void|setStandardOutputFile|const QString &,QIODevice::OpenMode=QIODevice::Truncate

/*
void setStandardOutputProcess ( QProcess * destination )
*/
$method=|void|setStandardOutputProcess|QProcess *

/*
void setWorkingDirectory ( const QString & dir )
*/
$method=|void|setWorkingDirectory|const QString &

/*
void start ( const QString & program, const QStringList & arguments, OpenMode mode = ReadWrite )
*/
$method=|void|start,start1|const QString &,const QStringList &,QIODevice::OpenMode=QIODevice::ReadWrite

/*
void start ( const QString & program, OpenMode mode = ReadWrite )
*/
$method=|void|start,start2|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QProcess::ProcessState state () const
*/
$method=|QProcess::ProcessState|state|

/*
bool waitForFinished ( int msecs = 30000 )
*/
$method=|bool|waitForFinished|int=30000

/*
bool waitForStarted ( int msecs = 30000 )
*/
$method=|bool|waitForStarted|int=30000

/*
QString workingDirectory () const
*/
$method=|QString|workingDirectory|

/*
virtual bool atEnd () const
*/
$virtualMethod=|bool|atEnd|

/*
virtual qint64 bytesAvailable () const
*/
$virtualMethod=|qint64|bytesAvailable|

/*
virtual qint64 bytesToWrite () const
*/
$virtualMethod=|qint64|bytesToWrite|

/*
virtual bool canReadLine () const
*/
$virtualMethod=|bool|canReadLine|

/*
virtual void close ()
*/
$virtualMethod=|void|close|

/*
virtual bool isSequential () const
*/
$virtualMethod=|bool|isSequential|

/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
$virtualMethod=|bool|waitForBytesWritten|int=30000

/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
$virtualMethod=|bool|waitForReadyRead|int=30000

/*
void kill ()
*/
$method=|void|kill|

/*
void terminate ()
*/
$method=|void|terminate|

/*
static int execute ( const QString & program, const QStringList & arguments )
*/
$staticMethod=|int|execute,execute1|const QString &,const QStringList &

/*
static int execute ( const QString & program )
*/
$staticMethod=|int|execute,execute2|const QString &

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
*/
$staticMethod=|bool|startDetached,startDetached1|const QString &,const QStringList &,const QString &,qint64 *=0

/*
static bool startDetached ( const QString & program, const QStringList & arguments )
*/
$staticMethod=|bool|startDetached,startDetached2|const QString &,const QStringList &

/*
static bool startDetached ( const QString & program )
*/
$staticMethod=|bool|startDetached|const QString &

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList systemEnvironment ()
*/
$staticMethod=|QStringList|systemEnvironment|

#pragma ENDDUMP
