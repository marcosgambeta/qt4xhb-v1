$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QFILEINFO
#endif

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QFSFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFSFileEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QFSFileEngine ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_NEW1 )
{
  QFSFileEngine * o = new QFSFileEngine ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QFSFileEngine ( const QString & file )
*/
HB_FUNC_STATIC( QFSFILEENGINE_NEW2 )
{
  QFSFileEngine * o = new QFSFileEngine ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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

HB_FUNC_STATIC( QFSFILEENGINE_DELETE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool open ( QIODevice::OpenMode openMode, FILE * fh )
*/
HB_FUNC_STATIC( QFSFILEENGINE_OPEN1 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    FILE * par2 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), par2 ) );
  }
}


/*
bool open ( QIODevice::OpenMode openMode, int fd )
*/
HB_FUNC_STATIC( QFSFILEENGINE_OPEN2 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), PINT(2) ) );
  }
}


/*
bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
*/
HB_FUNC_STATIC( QFSFILEENGINE_OPEN3 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), PINT(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}


/*
bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
*/
HB_FUNC_STATIC( QFSFILEENGINE_OPEN4 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    FILE * par2 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1), par2, (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}



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
}

/*
virtual bool caseSensitive () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_CASESENSITIVE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->caseSensitive () );
  }
}


/*
virtual bool close ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_CLOSE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->close () );
  }
}


/*
virtual bool copy ( const QString & copyName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_COPY )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->copy ( PQSTRING(1) ) );
  }
}



/*
virtual FileFlags fileFlags ( FileFlags type ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILEFLAGS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fileFlags ( (QAbstractFileEngine::FileFlags) hb_parni(1) ) );
  }
}


/*
virtual QString fileName ( FileName file ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName ( (QAbstractFileEngine::FileName) hb_parni(1) ) );
  }
}


/*
virtual QDateTime fileTime ( FileTime time ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILETIME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->fileTime ( (QAbstractFileEngine::FileTime) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
virtual bool flush ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_FLUSH )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->flush () );
  }
}


/*
virtual int handle () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_HANDLE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->handle () );
  }
}


/*
virtual bool isRelativePath () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_ISRELATIVEPATH )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRelativePath () );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_ISSEQUENTIAL )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}


/*
virtual bool link ( const QString & newName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_LINK )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->link ( PQSTRING(1) ) );
  }
}


/*
virtual bool mkdir ( const QString & name, bool createParentDirectories ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_MKDIR )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->mkdir ( PQSTRING(1), PBOOL(2) ) );
  }
}



/*
virtual QString owner ( FileOwner own ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_OWNER )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->owner ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
  }
}


/*
virtual uint ownerId ( FileOwner own ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_OWNERID )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->ownerId ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_POS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pos () );
  }
}


/*
virtual qint64 read ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFSFILEENGINE_READ )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->read ( par1, PQINT64(2) ) );
  }
}


/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFSFILEENGINE_READLINE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->readLine ( par1, PQINT64(2) ) );
  }
}


/*
virtual bool remove ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_REMOVE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->remove () );
  }
}


/*
virtual bool rename ( const QString & newName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_RENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rename ( PQSTRING(1) ) );
  }
}


/*
virtual bool rmdir ( const QString & name, bool recurseParentDirectories ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_RMDIR )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rmdir ( PQSTRING(1), PBOOL(2) ) );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SEEK )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->seek ( PQINT64(1) ) );
  }
}


/*
virtual void setFileName ( const QString & file )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETFILENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setPermissions ( uint perms )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETPERMISSIONS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setPermissions ( PUINT(1) ) );
  }
}


/*
virtual bool setSize ( qint64 size )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETSIZE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setSize ( PQINT64(1) ) );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QFSFILEENGINE_SIZE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_SUPPORTSEXTENSION )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QAbstractFileEngine::Extension) hb_parni(1) ) );
  }
}


/*
virtual qint64 write ( const char * data, qint64 len )
*/
HB_FUNC_STATIC( QFSFILEENGINE_WRITE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->write ( (const char *) hb_parc(1), PQINT64(2) ) );
  }
}



/*
QString currentPath ( const QString & fileName = QString() )
*/
HB_FUNC_STATIC( QFSFILEENGINE_CURRENTPATH )
{
  RQSTRING( QFSFileEngine::currentPath ( OPQSTRING(1,QString()) ) );
}


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
QString homePath ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_HOMEPATH )
{
  RQSTRING( QFSFileEngine::homePath () );
}


/*
QString rootPath ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_ROOTPATH )
{
  RQSTRING( QFSFileEngine::rootPath () );
}


/*
bool setCurrentPath ( const QString & path )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETCURRENTPATH )
{
  RBOOL( QFSFileEngine::setCurrentPath ( PQSTRING(1) ) );
}


/*
QString tempPath ()
*/
HB_FUNC_STATIC( QFSFILEENGINE_TEMPPATH )
{
  RQSTRING( QFSFileEngine::tempPath () );
}




#pragma ENDDUMP
