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

$beginClassFrom=QAbstractFileEngine

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$prototype=QFSFileEngine ()
$internalConstructor=|new1|

$prototype=QFSFileEngine ( const QString & file )
$internalConstructor=|new2|const QString &

/*
[1]QFSFileEngine ()
[2]QFSFileEngine ( const QString & file )
*/

HB_FUNC_STATIC( QFSFILEENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFSFileEngine_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFSFileEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=bool open ( QIODevice::OpenMode openMode, FILE * fh )
$internalMethod=|bool|open,open1|QIODevice::OpenMode,FILE *

$prototype=bool open ( QIODevice::OpenMode openMode, int fd )
$internalMethod=|bool|open,open2|QIODevice::OpenMode,int

$prototype=bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
$internalMethod=|bool|open,open3|QIODevice::OpenMode,int,QFile::FileHandleFlags

$prototype=bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
$internalMethod=|bool|open,open4|QIODevice::OpenMode,FILE *,QFile::FileHandleFlags

$prototype=bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )
%% TODO: implementar (?)

/*
[1]bool open ( QIODevice::OpenMode openMode, FILE * fh )
[2]bool open ( QIODevice::OpenMode openMode, int fd )
[3]bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
[4]bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
[5]bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )
*/

HB_FUNC_STATIC( QFSFILEENGINE_OPEN )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISPOINTER(2) )
  {
    QFSFileEngine_open1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QFSFileEngine_open2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QFSFileEngine_open3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
  {
    QFSFileEngine_open4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=open

$prototypeV2=virtual bool caseSensitive() const

$prototypeV2=virtual bool close()

$prototypeV2=virtual bool copy( const QString & copyName )

$prototypeV2=virtual QAbstractFileEngine::FileFlags fileFlags( QAbstractFileEngine::FileFlags type ) const

$prototypeV2=virtual QString fileName( QAbstractFileEngine::FileName file ) const

$prototypeV2=virtual QDateTime fileTime( QAbstractFileEngine::FileTime time ) const

$prototypeV2=virtual bool flush()

$prototypeV2=virtual int handle() const

$prototypeV2=virtual bool isRelativePath() const

$prototypeV2=virtual bool isSequential() const

$prototypeV2=virtual bool link( const QString & newName )

$prototypeV2=virtual bool mkdir( const QString & name, bool createParentDirectories ) const

$prototypeV2=virtual QString owner( QAbstractFileEngine::FileOwner own ) const

$prototypeV2=virtual uint ownerId( QAbstractFileEngine::FileOwner own ) const

$prototypeV2=virtual qint64 pos() const

$prototypeV2=virtual qint64 read( char * data, qint64 maxlen )

$prototypeV2=virtual qint64 readLine( char * data, qint64 maxlen )

$prototypeV2=virtual bool remove()

$prototypeV2=virtual bool rename( const QString & newName )

$prototypeV2=virtual bool rmdir( const QString & name, bool recurseParentDirectories ) const

$prototypeV2=virtual bool seek( qint64 pos )

$prototypeV2=virtual void setFileName( const QString & file )

$prototypeV2=virtual bool setPermissions( uint perms )

$prototypeV2=virtual bool setSize( qint64 size )

$prototypeV2=virtual qint64 size() const

$prototypeV2=virtual bool supportsExtension( QAbstractFileEngine::Extension extension ) const

$prototypeV2=virtual qint64 write( const char * data, qint64 len )

$prototype=static QString currentPath ( const QString & fileName = QString() )
$staticMethod=|QString|currentPath|const QString &=QString()

$prototypeV2=QFileInfoList drives()

$prototypeV2=static QString homePath()

$prototypeV2=static QString rootPath()

$prototypeV2=static bool setCurrentPath( const QString & path )

$prototypeV2=static QString tempPath()

#pragma ENDDUMP
