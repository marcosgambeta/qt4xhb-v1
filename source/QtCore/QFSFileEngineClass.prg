/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME
REQUEST QFILEINFO

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   DATA class_id INIT Class_Id_QFSFileEngine
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFSFileEngine>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QFSFileEngine ()
*/
HB_FUNC( QFSFILEENGINE_NEW1 )
{
  QFSFileEngine * o = NULL;
  o = new QFSFileEngine (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFSFileEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFSFileEngine ( const QString & file )
*/
HB_FUNC( QFSFILEENGINE_NEW2 )
{
  QFSFileEngine * o = NULL;
  QString par1 = hb_parc(1);
  o = new QFSFileEngine ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFSFileEngine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QFSFileEngine ()
//[2]QFSFileEngine ( const QString & file )

HB_FUNC( QFSFILEENGINE_NEW )
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

HB_FUNC( QFSFILEENGINE_DELETE )
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
HB_FUNC( QFSFILEENGINE_OPEN1 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    FILE * par2 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->open (  (QIODevice::OpenMode) par1, par2 );
    hb_retl( b );
  }
}


/*
bool open ( QIODevice::OpenMode openMode, int fd )
*/
HB_FUNC( QFSFILEENGINE_OPEN2 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->open (  (QIODevice::OpenMode) par1, par2 );
    hb_retl( b );
  }
}


/*
bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
*/
HB_FUNC( QFSFILEENGINE_OPEN3 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    bool b = obj->open (  (QIODevice::OpenMode) par1, par2,  (QFile::FileHandleFlags) par3 );
    hb_retl( b );
  }
}


/*
bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
*/
HB_FUNC( QFSFILEENGINE_OPEN4 )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    FILE * par2 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = hb_parni(3);
    bool b = obj->open (  (QIODevice::OpenMode) par1, par2,  (QFile::FileHandleFlags) par3 );
    hb_retl( b );
  }
}



//[1]bool open ( QIODevice::OpenMode openMode, FILE * fh )
//[2]bool open ( QIODevice::OpenMode openMode, int fd )
//[3]bool open ( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
//[4]bool open ( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
//[5]bool open ( QIODevice::OpenMode openMode, const RFile & file, QFile::FileHandleFlags handleFlags )

HB_FUNC( QFSFILEENGINE_OPEN )
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
HB_FUNC( QFSFILEENGINE_CASESENSITIVE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->caseSensitive (  );
    hb_retl( b );
  }
}


/*
virtual bool close ()
*/
HB_FUNC( QFSFILEENGINE_CLOSE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->close (  );
    hb_retl( b );
  }
}


/*
virtual bool copy ( const QString & copyName )
*/
HB_FUNC( QFSFILEENGINE_COPY )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->copy ( par1 );
    hb_retl( b );
  }
}



/*
virtual FileFlags fileFlags ( FileFlags type ) const
*/
HB_FUNC( QFSFILEENGINE_FILEFLAGS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->fileFlags (  (QAbstractFileEngine::FileFlags) par1 );
    hb_retni( i );
  }
}


/*
virtual QString fileName ( FileName file ) const
*/
HB_FUNC( QFSFILEENGINE_FILENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->fileName (  (QAbstractFileEngine::FileName) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QDateTime fileTime ( FileTime time ) const
*/
HB_FUNC( QFSFILEENGINE_FILETIME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->fileTime (  (QAbstractFileEngine::FileTime) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
virtual bool flush ()
*/
HB_FUNC( QFSFILEENGINE_FLUSH )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->flush (  );
    hb_retl( b );
  }
}


/*
virtual int handle () const
*/
HB_FUNC( QFSFILEENGINE_HANDLE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->handle (  );
    hb_retni( i );
  }
}


/*
virtual bool isRelativePath () const
*/
HB_FUNC( QFSFILEENGINE_ISRELATIVEPATH )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRelativePath (  );
    hb_retl( b );
  }
}


/*
virtual bool isSequential () const
*/
HB_FUNC( QFSFILEENGINE_ISSEQUENTIAL )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isSequential (  );
    hb_retl( b );
  }
}


/*
virtual bool link ( const QString & newName )
*/
HB_FUNC( QFSFILEENGINE_LINK )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->link ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool mkdir ( const QString & name, bool createParentDirectories ) const
*/
HB_FUNC( QFSFILEENGINE_MKDIR )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2 = hb_parl(2);
    bool b = obj->mkdir ( par1, par2 );
    hb_retl( b );
  }
}



/*
virtual QString owner ( FileOwner own ) const
*/
HB_FUNC( QFSFILEENGINE_OWNER )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->owner (  (QAbstractFileEngine::FileOwner) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual uint ownerId ( FileOwner own ) const
*/
HB_FUNC( QFSFILEENGINE_OWNERID )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    uint i = obj->ownerId (  (QAbstractFileEngine::FileOwner) par1 );
    hb_retni( i );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC( QFSFILEENGINE_POS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->pos (  );
    hb_retni( i );
  }
}


/*
virtual qint64 read ( char * data, qint64 maxlen )
*/
HB_FUNC( QFSFILEENGINE_READ )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 par2 = hb_parni(2);
    qint64 i = obj->read ( par1, par2 );
    hb_retni( i );
  }
}


/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
HB_FUNC( QFSFILEENGINE_READLINE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 par2 = hb_parni(2);
    qint64 i = obj->readLine ( par1, par2 );
    hb_retni( i );
  }
}


/*
virtual bool remove ()
*/
HB_FUNC( QFSFILEENGINE_REMOVE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->remove (  );
    hb_retl( b );
  }
}


/*
virtual bool rename ( const QString & newName )
*/
HB_FUNC( QFSFILEENGINE_RENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->rename ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool rmdir ( const QString & name, bool recurseParentDirectories ) const
*/
HB_FUNC( QFSFILEENGINE_RMDIR )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2 = hb_parl(2);
    bool b = obj->rmdir ( par1, par2 );
    hb_retl( b );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC( QFSFILEENGINE_SEEK )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    bool b = obj->seek ( par1 );
    hb_retl( b );
  }
}


/*
virtual void setFileName ( const QString & file )
*/
HB_FUNC( QFSFILEENGINE_SETFILENAME )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setPermissions ( uint perms )
*/
HB_FUNC( QFSFILEENGINE_SETPERMISSIONS )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    bool b = obj->setPermissions ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool setSize ( qint64 size )
*/
HB_FUNC( QFSFILEENGINE_SETSIZE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    bool b = obj->setSize ( par1 );
    hb_retl( b );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC( QFSFILEENGINE_SIZE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC( QFSFILEENGINE_SUPPORTSEXTENSION )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->supportsExtension (  (QAbstractFileEngine::Extension) par1 );
    hb_retl( b );
  }
}


/*
virtual qint64 write ( const char * data, qint64 len )
*/
HB_FUNC( QFSFILEENGINE_WRITE )
{
  QFSFileEngine * obj = (QFSFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    qint64 par2 = hb_parni(2);
    qint64 i = obj->write (  (const char *) par1, par2 );
    hb_retni( i );
  }
}



/*
QString currentPath ( const QString & fileName = QString() )
*/
HB_FUNC( QFSFILEENGINE_CURRENTPATH )
{
  QString par1 = ISNIL(1)? QString() : hb_parc(1);
  QString str1 = QFSFileEngine::currentPath ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QFileInfoList drives ()
*/
HB_FUNC( QFSFILEENGINE_DRIVES )
{
  QFileInfoList list = QFSFileEngine::drives (  );
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
HB_FUNC( QFSFILEENGINE_HOMEPATH )
{
  QString str1 = QFSFileEngine::homePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString rootPath ()
*/
HB_FUNC( QFSFILEENGINE_ROOTPATH )
{
  QString str1 = QFSFileEngine::rootPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
bool setCurrentPath ( const QString & path )
*/
HB_FUNC( QFSFILEENGINE_SETCURRENTPATH )
{
  QString par1 = hb_parc(1);
  bool b = QFSFileEngine::setCurrentPath ( par1 );
  hb_retl( b );
}


/*
QString tempPath ()
*/
HB_FUNC( QFSFILEENGINE_TEMPPATH )
{
  QString str1 = QFSFileEngine::tempPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}




#pragma ENDDUMP
