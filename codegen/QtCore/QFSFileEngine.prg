$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QFILEINFO
#endif

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   METHOD new
   METHOD delete
   METHOD open
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD owner
   METHOD ownerId
   METHOD pos
   METHOD read
   METHOD readLine
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD seek
   METHOD setFileName
   METHOD setPermissions
   METHOD setSize
   METHOD size
   METHOD supportsExtension
   METHOD write
   METHOD currentPath
   METHOD drives
   METHOD homePath
   METHOD rootPath
   METHOD setCurrentPath
   METHOD tempPath

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFSFileEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

$prototype=QFSFileEngine ()
$internalConstructor=|new1|

$prototype=QFSFileEngine ( const QString & file )
$internalConstructor=|new2|const QString &

//[1]QFSFileEngine ()
//[2]QFSFileEngine ( const QString & file )

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

//[1]bool open ( QIODevice::OpenMode openMode, FILE * fh )
//[2]bool open ( QIODevice::OpenMode openMode, int fd )
//[3]bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
//[4]bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
//[5]bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )

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

$prototype=virtual bool caseSensitive () const
$virtualMethod=|bool|caseSensitive|

$prototype=virtual bool close ()
$virtualMethod=|bool|close|

$prototype=virtual bool copy ( const QString & copyName )
$virtualMethod=|bool|copy|const QString &

$prototype=virtual FileFlags fileFlags ( FileFlags type ) const
$virtualMethod=|QAbstractFileEngine::FileFlags|fileFlags|QAbstractFileEngine::FileFlags

$prototype=virtual QString fileName ( FileName file ) const
$virtualMethod=|QString|fileName|QAbstractFileEngine::FileName

$prototype=virtual QDateTime fileTime ( FileTime time ) const
$virtualMethod=|QDateTime|fileTime|QAbstractFileEngine::FileTime

$prototype=virtual bool flush ()
$virtualMethod=|bool|flush|

$prototype=virtual int handle () const
$virtualMethod=|int|handle|

$prototype=virtual bool isRelativePath () const
$virtualMethod=|bool|isRelativePath|

$prototype=virtual bool isSequential () const
$virtualMethod=|bool|isSequential|

$prototype=virtual bool link ( const QString & newName )
$virtualMethod=|bool|link|const QString &

$prototype=virtual bool mkdir ( const QString & name, bool createParentDirectories ) const
$virtualMethod=|bool|mkdir|const QString &,bool

$prototype=virtual QString owner ( FileOwner own ) const
$virtualMethod=|QString|owner|QAbstractFileEngine::FileOwner

$prototype=virtual uint ownerId ( FileOwner own ) const
$virtualMethod=|uint|ownerId|QAbstractFileEngine::FileOwner

$prototype=virtual qint64 pos () const
$virtualMethod=|qint64|pos|

$prototype=virtual qint64 read ( char * data, qint64 maxlen )
$virtualMethod=|qint64|read|char *,qint64

$prototype=virtual qint64 readLine ( char * data, qint64 maxlen )
$virtualMethod=|qint64|readLine|char *,qint64

$prototype=virtual bool remove ()
$virtualMethod=|bool|remove|

$prototype=virtual bool rename ( const QString & newName )
$virtualMethod=|bool|rename|const QString &

$prototype=virtual bool rmdir ( const QString & name, bool recurseParentDirectories ) const
$virtualMethod=|bool|rmdir|const QString &,bool

$prototype=virtual bool seek ( qint64 pos )
$virtualMethod=|bool|seek|qint64

$prototype=virtual void setFileName ( const QString & file )
$virtualMethod=|void|setFileName|const QString &

$prototype=virtual bool setPermissions ( uint perms )
$virtualMethod=|bool|setPermissions|uint

$prototype=virtual bool setSize ( qint64 size )
$virtualMethod=|bool|setSize|qint64

$prototype=virtual qint64 size () const
$virtualMethod=|qint64|size|

$prototype=virtual bool supportsExtension ( Extension extension ) const
$virtualMethod=|bool|supportsExtension|QAbstractFileEngine::Extension

$prototype=virtual qint64 write ( const char * data, qint64 len )
$virtualMethod=|qint64|write|const char *,qint64

$prototype=static QString currentPath ( const QString & fileName = QString() )
$staticMethod=|QString|currentPath|const QString &=QString()

$prototype=QFileInfoList drives ()
HB_FUNC_STATIC( QFSFILEENGINE_DRIVES )
{
  QFileInfoList list = QFSFileEngine::drives ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QFILEINFO" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

$prototype=static QString homePath ()
$staticMethod=|QString|homePath|

$prototype=static QString rootPath ()
$staticMethod=|QString|rootPath|

$prototype=static bool setCurrentPath ( const QString & path )
$staticMethod=|bool|setCurrentPath|const QString &

$prototype=static QString tempPath ()
$staticMethod=|QString|tempPath|

#pragma ENDDUMP
