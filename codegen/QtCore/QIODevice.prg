$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QIODevice INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD errorString
   METHOD getChar
   METHOD isOpen
   METHOD isReadable
   METHOD isSequential
   METHOD isTextModeEnabled
   METHOD isWritable
   METHOD open
   METHOD openMode
   METHOD peek1
   METHOD peek2
   METHOD peek
   METHOD pos
   METHOD putChar
   METHOD read1
   METHOD read2
   METHOD read
   METHOD readAll
   METHOD readLine1
   METHOD readLine2
   METHOD readLine
   METHOD reset
   METHOD seek
   METHOD setTextModeEnabled
   METHOD size
   METHOD ungetChar
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD write1
   METHOD write2
   METHOD write3
   METHOD write

   METHOD onAboutToClose
   METHOD onBytesWritten
   METHOD onReadChannelFinished
   METHOD onReadyRead

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIODevice>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

%% //[1]QIODevice ()
%% //[2]QIODevice ( QObject * parent )

%% //HB_FUNC_STATIC( QIODEVICE_NEW )
%% //{
%% //  if( ISNUMPAR(0) )
%% //  {
%% //    HB_FUNC_EXEC( QIODEVICE_NEW1 );
%% //  }
%% //  else if( ISNUMPAR(1) && ISQOBJECT(1) )
%% //  {
%% //    HB_FUNC_EXEC( QIODEVICE_NEW2 );
%% //  }
%% //  else
%% //  {
%% //    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%% //  }
%% //}

$deleteMethod

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
QString errorString () const
*/
$method=|QString|errorString|

/*
bool getChar ( char * c )
*/
$method=|bool|getChar|char *

/*
bool isOpen () const
*/
$method=|bool|isOpen|

/*
bool isReadable () const
*/
$method=|bool|isReadable|

/*
virtual bool isSequential () const
*/
$virtualMethod=|bool|isSequential|

/*
bool isTextModeEnabled () const
*/
$method=|bool|isTextModeEnabled|

/*
bool isWritable () const
*/
$method=|bool|isWritable|

/*
virtual bool open ( OpenMode mode )
*/
$virtualMethod=|bool|open|QIODevice::OpenMode

/*
OpenMode openMode () const
*/
$method=|QIODevice::OpenMode|openMode|

/*
qint64 peek ( char * data, qint64 maxSize )
*/
$method=|qint64|peek,peek1|char *,qint64

/*
QByteArray peek ( qint64 maxSize )
*/
$method=|QByteArray|peek,peek2|qint64

//[1]qint64 peek ( char * data, qint64 maxSize )
//[2]QByteArray peek ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_PEEK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_PEEK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual qint64 pos () const
*/
$virtualMethod=|qint64|pos|

/*
bool putChar ( char c )
*/
$method=|bool|putChar|char

/*
qint64 read ( char * data, qint64 maxSize )
*/
$method=|qint64|read,read1|char *,qint64

/*
QByteArray read ( qint64 maxSize )
*/
$method=|QByteArray|read,read2|qint64

//[1]qint64 read ( char * data, qint64 maxSize )
//[2]QByteArray read ( qint64 maxSize )

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_READ1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_READ2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray readAll ()
*/
$method=|QByteArray|readAll|

/*
qint64 readLine ( char * data, qint64 maxSize )
*/
$method=|qint64|readLine,readLine1|char *,qint64

/*
QByteArray readLine ( qint64 maxSize = 0 )
*/
$method=|QByteArray|readLine,readLine2|qint64=0

//[1]qint64 readLine ( char * data, qint64 maxSize )
//[2]QByteArray readLine ( qint64 maxSize = 0 )

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_READLINE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_READLINE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool reset ()
*/
$virtualMethod=|bool|reset|

/*
virtual bool seek ( qint64 pos )
*/
$virtualMethod=|bool|seek|qint64

/*
void setTextModeEnabled ( bool enabled )
*/
$method=|void|setTextModeEnabled|bool

/*
virtual qint64 size () const
*/
$virtualMethod=|qint64|size|

/*
void ungetChar ( char c )
*/
$method=|void|ungetChar|char

/*
virtual bool waitForBytesWritten ( int msecs )
*/
$virtualMethod=|bool|waitForBytesWritten|int

/*
virtual bool waitForReadyRead ( int msecs )
*/
$virtualMethod=|bool|waitForReadyRead|int

/*
qint64 write ( const char * data, qint64 maxSize )
*/
$method=|qint64|write,write1|const char *,qint64

/*
qint64 write ( const char * data )
*/
$method=|qint64|write,write2|const char *

/*
qint64 write ( const QByteArray & byteArray )
*/
$method=|qint64|write,write3|const QByteArray &

//[1]qint64 write ( const char * data, qint64 maxSize )
//[2]qint64 write ( const char * data )
//[3]qint64 write ( const QByteArray & byteArray )

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QIODEVICE_WRITE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
