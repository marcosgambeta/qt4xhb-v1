$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDIR
REQUEST QDATETIME
#endif

CLASS QFileInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD absoluteDir
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD baseName
   METHOD bundleName
   METHOD caching
   METHOD canonicalFilePath
   METHOD canonicalPath
   METHOD completeBaseName
   METHOD completeSuffix
   METHOD created
   METHOD dir
   METHOD exists
   METHOD fileName
   METHOD filePath
   METHOD group
   METHOD groupId
   METHOD isAbsolute
   METHOD isBundle
   METHOD isDir
   METHOD isExecutable
   METHOD isFile
   METHOD isHidden
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD isSymLink
   METHOD isWritable
   METHOD lastModified
   METHOD lastRead
   METHOD makeAbsolute
   METHOD owner
   METHOD ownerId
   METHOD path
   METHOD permission
   METHOD permissions
   METHOD refresh
   METHOD setCaching
   METHOD setFile1
   METHOD setFile2
   METHOD setFile3
   METHOD setFile
   METHOD size
   METHOD suffix
   METHOD symLinkTarget

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFileInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDir>
#include <QDateTime>

/*
QFileInfo()
*/
HB_FUNC_STATIC( QFILEINFO_NEW1 )
{
  QFileInfo * o = new QFileInfo ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QFileInfo(const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_NEW2 )
{
  QFileInfo * o = new QFileInfo ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QFileInfo(const QFile & file)
*/
HB_FUNC_STATIC( QFILEINFO_NEW3 )
{
  QFileInfo * o = new QFileInfo ( *PQFILE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QFileInfo(const QDir & dir, const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_NEW4 )
{
  QFileInfo * o = new QFileInfo ( *PQDIR(1), PQSTRING(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QFileInfo(const QFileInfo & fileinfo)
*/
HB_FUNC_STATIC( QFILEINFO_NEW5 )
{
  QFileInfo * o = new QFileInfo ( *PQFILEINFO(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QFileInfo()
//[2]QFileInfo(const QString & file)
//[3]QFileInfo(const QFile & file)
//[4]QFileInfo(const QDir & dir, const QString & file)
//[5]QFileInfo(const QFileInfo & fileinfo)

HB_FUNC_STATIC( QFILEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDir absoluteDir() const
*/
HB_FUNC_STATIC( QFILEINFO_ABSOLUTEDIR )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * ptr = new QDir( obj->absoluteDir () );
    _qt4xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

/*
QString absoluteFilePath() const
*/
$method=|QString|absoluteFilePath|

/*
QString absolutePath() const
*/
$method=|QString|absolutePath|

/*
QString baseName() const
*/
$method=|QString|baseName|

/*
QString bundleName() const
*/
$method=|QString|bundleName|

/*
bool caching() const
*/
HB_FUNC_STATIC( QFILEINFO_CACHING )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->caching () );
  }
}

/*
QString canonicalFilePath() const
*/
$method=|QString|canonicalFilePath|

/*
QString canonicalPath() const
*/
$method=|QString|canonicalPath|

/*
QString completeBaseName() const
*/
$method=|QString|completeBaseName|

/*
QString completeSuffix() const
*/
$method=|QString|completeSuffix|

/*
QDateTime created() const
*/
HB_FUNC_STATIC( QFILEINFO_CREATED )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->created () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDir dir() const
*/
HB_FUNC_STATIC( QFILEINFO_DIR )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * ptr = new QDir( obj->dir () );
    _qt4xhb_createReturnClass ( ptr, "QDIR", true );
  }
}


/*
bool exists() const
*/
HB_FUNC_STATIC( QFILEINFO_EXISTS )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->exists () );
  }
}

/*
QString fileName() const
*/
$method=|QString|fileName|

/*
QString filePath() const
*/
$method=|QString|filePath|

/*
QString group() const
*/
$method=|QString|group|

/*
uint groupId() const
*/
HB_FUNC_STATIC( QFILEINFO_GROUPID )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->groupId () );
  }
}


/*
bool isAbsolute() const
*/
HB_FUNC_STATIC( QFILEINFO_ISABSOLUTE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAbsolute () );
  }
}


/*
bool isBundle() const
*/
HB_FUNC_STATIC( QFILEINFO_ISBUNDLE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isBundle () );
  }
}


/*
bool isDir() const
*/
HB_FUNC_STATIC( QFILEINFO_ISDIR )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDir () );
  }
}


/*
bool isExecutable() const
*/
HB_FUNC_STATIC( QFILEINFO_ISEXECUTABLE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isExecutable () );
  }
}


/*
bool isFile() const
*/
HB_FUNC_STATIC( QFILEINFO_ISFILE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFile () );
  }
}


/*
bool isHidden() const
*/
HB_FUNC_STATIC( QFILEINFO_ISHIDDEN )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isHidden () );
  }
}



/*
bool isReadable() const
*/
HB_FUNC_STATIC( QFILEINFO_ISREADABLE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isReadable () );
  }
}


/*
bool isRelative() const
*/
HB_FUNC_STATIC( QFILEINFO_ISRELATIVE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRelative () );
  }
}


/*
bool isRoot() const
*/
HB_FUNC_STATIC( QFILEINFO_ISROOT )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRoot () );
  }
}


/*
bool isSymLink() const
*/
HB_FUNC_STATIC( QFILEINFO_ISSYMLINK )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSymLink () );
  }
}


/*
bool isWritable() const
*/
HB_FUNC_STATIC( QFILEINFO_ISWRITABLE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isWritable () );
  }
}


/*
QDateTime lastModified() const
*/
HB_FUNC_STATIC( QFILEINFO_LASTMODIFIED )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastModified () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime lastRead() const
*/
HB_FUNC_STATIC( QFILEINFO_LASTREAD )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastRead () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
bool makeAbsolute()
*/
HB_FUNC_STATIC( QFILEINFO_MAKEABSOLUTE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->makeAbsolute () );
  }
}

/*
QString owner() const
*/
$method=|QString|owner|

/*
uint ownerId() const
*/
HB_FUNC_STATIC( QFILEINFO_OWNERID )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->ownerId () );
  }
}

/*
QString path() const
*/
$method=|QString|path|

/*
bool permission(QFile::Permissions permissions) const
*/
HB_FUNC_STATIC( QFILEINFO_PERMISSION )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->permission ( (QFile::Permissions) hb_parni(1) ) );
  }
}


/*
QFile::Permissions permissions() const
*/
HB_FUNC_STATIC( QFILEINFO_PERMISSIONS )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->permissions () );
  }
}


/*
void refresh()
*/
HB_FUNC_STATIC( QFILEINFO_REFRESH )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->refresh ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCaching(bool enable)
*/
HB_FUNC_STATIC( QFILEINFO_SETCACHING )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCaching ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFile(const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_SETFILE1 )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFile ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFile(const QFile & file)
*/
HB_FUNC_STATIC( QFILEINFO_SETFILE2 )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFile ( *PQFILE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFile(const QDir & dir, const QString & file)
*/
HB_FUNC_STATIC( QFILEINFO_SETFILE3 )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFile ( *PQDIR(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFile(const QString & file)
//[2]void setFile(const QFile & file)
//[3]void setFile(const QDir & dir, const QString & file)

HB_FUNC_STATIC( QFILEINFO_SETFILE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_SETFILE1 );
  }
  else if( ISNUMPAR(1) && ISQFILE(1) )
  {
    HB_FUNC_EXEC( QFILEINFO_SETFILE2 );
  }
  else if( ISNUMPAR(2) && ISQDIR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILEINFO_SETFILE3 );
  }
}

/*
qint64 size() const
*/
HB_FUNC_STATIC( QFILEINFO_SIZE )
{
  QFileInfo * obj = (QFileInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}

/*
QString suffix() const
*/
$method=|QString|suffix|

/*
QString symLinkTarget() const
*/
$method=|QString|symLinkTarget|

$extraMethods

#pragma ENDDUMP
