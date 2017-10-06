$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QFILEINFO
#endif

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD open1
   METHOD open2
   METHOD open3
   METHOD open4
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

/*
QFSFileEngine ()
*/
$constructor=|new1|

/*
QFSFileEngine ( const QString & file )
*/
$constructor=|new2|const QString &

//[1]QFSFileEngine ()
//[2]QFSFileEngine ( const QString & file )

HB_FUNC_STATIC( QFSFILEENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFSFILEENGINE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFSFILEENGINE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool open ( QIODevice::OpenMode openMode, FILE * fh )
*/
$method=|bool|open,open1|QIODevice::OpenMode,FILE *

/*
bool open ( QIODevice::OpenMode openMode, int fd )
*/
$method=|bool|open,open2|QIODevice::OpenMode,int

/*
bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
*/
$method=|bool|open,open3|QIODevice::OpenMode,int,QFile::FileHandleFlags

/*
bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
*/
$method=|bool|open,open4|QIODevice::OpenMode,FILE *,QFile::FileHandleFlags

/*
bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )
*/
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
    HB_FUNC_EXEC( QFSFILEENGINE_OPEN1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFSFILEENGINE_OPEN2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QFSFILEENGINE_OPEN3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISPOINTER(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QFSFILEENGINE_OPEN4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual bool caseSensitive () const
*/
$virtualMethod=|bool|caseSensitive|

/*
virtual bool close ()
*/
$virtualMethod=|bool|close|

/*
virtual bool copy ( const QString & copyName )
*/
$virtualMethod=|bool|copy|const QString &

/*
virtual FileFlags fileFlags ( FileFlags type ) const
*/
$virtualMethod=|QAbstractFileEngine::FileFlags|fileFlags|QAbstractFileEngine::FileFlags

/*
virtual QString fileName ( FileName file ) const
*/
$virtualMethod=|QString|fileName|QAbstractFileEngine::FileName

/*
virtual QDateTime fileTime ( FileTime time ) const
*/
$virtualMethod=|QDateTime|fileTime|QAbstractFileEngine::FileTime

/*
virtual bool flush ()
*/
$virtualMethod=|bool|flush|

/*
virtual int handle () const
*/
$virtualMethod=|int|handle|

/*
virtual bool isRelativePath () const
*/
$virtualMethod=|bool|isRelativePath|

/*
virtual bool isSequential () const
*/
$virtualMethod=|bool|isSequential|

/*
virtual bool link ( const QString & newName )
*/
$virtualMethod=|bool|link|const QString &

/*
virtual bool mkdir ( const QString & name, bool createParentDirectories ) const
*/
$virtualMethod=|bool|mkdir|const QString &,bool

/*
virtual QString owner ( FileOwner own ) const
*/
$virtualMethod=|QString|owner|QAbstractFileEngine::FileOwner

/*
virtual uint ownerId ( FileOwner own ) const
*/
$virtualMethod=|uint|ownerId|QAbstractFileEngine::FileOwner

/*
virtual qint64 pos () const
*/
$virtualMethod=|qint64|pos|

/*
virtual qint64 read ( char * data, qint64 maxlen )
*/
$virtualMethod=|qint64|read|char *,qint64

/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
$virtualMethod=|qint64|readLine|char *,qint64

/*
virtual bool remove ()
*/
$virtualMethod=|bool|remove|

/*
virtual bool rename ( const QString & newName )
*/
$virtualMethod=|bool|rename|const QString &

/*
virtual bool rmdir ( const QString & name, bool recurseParentDirectories ) const
*/
$virtualMethod=|bool|rmdir|const QString &,bool

/*
virtual bool seek ( qint64 pos )
*/
$virtualMethod=|bool|seek|qint64

/*
virtual void setFileName ( const QString & file )
*/
$virtualMethod=|void|setFileName|const QString &

/*
virtual bool setPermissions ( uint perms )
*/
$virtualMethod=|bool|setPermissions|uint

/*
virtual bool setSize ( qint64 size )
*/
$virtualMethod=|bool|setSize|qint64

/*
virtual qint64 size () const
*/
$virtualMethod=|qint64|size|

/*
virtual bool supportsExtension ( Extension extension ) const
*/
$virtualMethod=|bool|supportsExtension|QAbstractFileEngine::Extension

/*
virtual qint64 write ( const char * data, qint64 len )
*/
$virtualMethod=|qint64|write|const char *,qint64

/*
static QString currentPath ( const QString & fileName = QString() )
*/
$staticMethod=|QString|currentPath|const QString &=QString()

/*
QFileInfoList drives ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_DRIVES )
{
  QFileInfoList list = QFSFileEngine::drives ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QFILEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QFILEINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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

/*
static QString homePath ()
*/
$staticMethod=|QString|homePath|

/*
static QString rootPath ()
*/
$staticMethod=|QString|rootPath|

/*
static bool setCurrentPath ( const QString & path )
*/
$staticMethod=|bool|setCurrentPath|const QString &

/*
static QString tempPath ()
*/
$staticMethod=|QString|tempPath|

#pragma ENDDUMP
