$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD copy1
   METHOD error
   METHOD exists1
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD link1
   METHOD open1
   METHOD open2
   METHOD open3
   METHOD open4
   METHOD permissions1
   METHOD remove1
   METHOD rename1
   METHOD resize1
   METHOD setFileName
   METHOD setPermissions1
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD open6
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size
   METHOD copy2
   METHOD copy
   METHOD decodeName1
   METHOD decodeName2
   METHOD decodeName
   METHOD encodeName
   METHOD exists2
   METHOD exists
   METHOD link2
   METHOD link
   METHOD permissions2
   METHOD permissions
   METHOD remove2
   METHOD remove
   METHOD rename2
   METHOD rename
   METHOD resize2
   METHOD resize
   METHOD setPermissions2
   METHOD setPermissions
   METHOD symLinkTarget1
   METHOD symLinkTarget2
   METHOD symLinkTarget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFile>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFile ( const QString & name )
*/
$constructor=|new1|const QString &

/*
QFile ( QObject * parent )
*/
$constructor=|new2|QObject *

/*
QFile ( const QString & name, QObject * parent )
*/
$constructor=|new3|const QString &,QObject *

//[1]QFile ( const QString & name )
//[2]QFile ( QObject * parent )
//[3]QFile ( const QString & name, QObject * parent )

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QFILE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QFILE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool copy ( const QString & newName )
*/
$method=|bool|copy,copy1|const QString &

/*
FileError error () const
*/
$method=|QFile::FileError|error|

/*
bool exists () const
*/
$method=|bool|exists,exists1|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool flush ()
*/
$method=|bool|flush|

/*
int handle () const
*/
$method=|int|handle|

/*
bool link ( const QString & linkName )
*/
$method=|bool|link,link1|const QString &

/*
bool open ( FILE * fh, OpenMode mode )
*/
$method=|bool|open,open1|FILE *,QIODevice::OpenMode

/*
bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
*/
$method=|bool|open,open2|FILE *,QIODevice::OpenMode,QFile::FileHandleFlags

/*
bool open ( int fd, OpenMode mode )
*/
$method=|bool|open,open3|int,QIODevice::OpenMode

/*
bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
*/
$method=|bool|open,open4|int,QIODevice::OpenMode,QFile::FileHandleFlags

/*
Permissions permissions () const
*/
$method=|QFile::Permissions|permissions,permissions1|

/*
bool remove ()
*/
$method=|bool|remove,remove1|

/*
bool rename ( const QString & newName )
*/
$method=|bool|rename,rename1|const QString &

/*
bool resize ( qint64 sz )
*/
$method=|bool|resize,resize1|qint64

/*
void setFileName ( const QString & name )
*/
$method=|void|setFileName|const QString &

/*
bool setPermissions ( Permissions permissions )
*/
$method=|bool|setPermissions|QFile::Permissions

/*
bool unmap ( uchar * address )
*/
$method=|bool|unmap|uchar *

/*
void unsetError ()
*/
$method=|void|unsetError|

/*
virtual bool atEnd () const
*/
$virtualMethod=|bool|atEnd|

/*
virtual void close ()
*/
$virtualMethod=|void|close|

/*
virtual bool isSequential () const
*/
$virtualMethod=|bool|isSequential|

/*
virtual bool open ( OpenMode mode )
*/
$virtualMethod=|bool|open,open6|QIODevice::OpenMode

//[1]bool open ( FILE * fh, OpenMode mode )
//[2]bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
//[3]bool open ( int fd, OpenMode mode )
//[4]bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
//[5]bool open ( const RFile & f, OpenMode mode, FileHandleFlags handleFlags = DontCloseHandle )
//[6]virtual bool open ( OpenMode mode )

%% TODO: implementar
HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_OPEN6 );
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
virtual bool seek ( qint64 pos )
*/
$virtualMethod=|bool|seek|qint64

/*
virtual qint64 size () const
*/
$virtualMethod=|qint64|size|

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
$staticMethod=|bool|copy,copy2|const QString &,const QString &

//[1]bool copy ( const QString & newName )
//[2]bool copy ( const QString & fileName, const QString & newName )

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_COPY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_COPY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString decodeName ( const QByteArray & localFileName )
*/
$staticMethod=|QString|decodeName,decodeName1|const QByteArray &

/*
static QString decodeName ( const char * localFileName )
*/
$staticMethod=|QString|decodeName,decodeName2|const char *

//[1]QString decodeName ( const QByteArray & localFileName )
//[2]QString decodeName ( const char * localFileName )

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QFILE_DECODENAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_DECODENAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray encodeName ( const QString & fileName )
*/
$staticMethod=|QByteArray|encodeName|const QString &

/*
static bool exists ( const QString & fileName )
*/
$staticMethod=|bool|exists,exists2|const QString &

//[1]bool exists () const
//[2]bool exists ( const QString & fileName )

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_EXISTS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_EXISTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool link ( const QString & fileName, const QString & linkName )
*/
$staticMethod=|bool|link,link2|const QString &,const QString &

//[1]bool link ( const QString & linkName )
//[2]bool link ( const QString & fileName, const QString & linkName )

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_LINK1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_LINK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static Permissions permissions ( const QString & fileName )
*/
$staticMethod=|QFile::Permissions|permissions|const QString &

//[1]Permissions permissions () const
//[2]Permissions permissions ( const QString & fileName )

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_PERMISSIONS1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_PERMISSIONS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool remove ( const QString & fileName )
*/
$staticMethod=|bool|remove,remove2|const QString &

//[1]bool remove ()
//[2]bool remove ( const QString & fileName )

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_REMOVE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_REMOVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool rename ( const QString & oldName, const QString & newName )
*/
$staticMethod=|bool|rename,rename2|const QString &,const QString &

//[1]bool rename ( const QString & newName )
//[2]bool rename ( const QString & oldName, const QString & newName )

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_RENAME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_RENAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool resize ( const QString & fileName, qint64 sz )
*/
$staticMethod=|bool|resize,resize2|const QString &,qint64

//[1]bool resize ( qint64 sz )
//[2]bool resize ( const QString & fileName, qint64 sz )

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILE_RESIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool setPermissions ( const QString & fileName, Permissions permissions )
*/
$staticMethod=|bool|setPermissions|const QString &,QFile::Permissions

//[1]bool setPermissions ( Permissions permissions )
//[2]bool setPermissions ( const QString & fileName, Permissions permissions )

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_SETPERMISSIONS1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILE_SETPERMISSIONS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString symLinkTarget () const
*/
$method=|QString|symLinkTarget,symLinkTarget1|

/*
static QString symLinkTarget ( const QString & fileName )
*/
$staticMethod=|QString|symLinkTarget,symLinkTarget2|const QString &

//[1]QString symLinkTarget () const
//[2]QString symLinkTarget ( const QString & fileName )

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_SYMLINKTARGET1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_SYMLINKTARGET2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
