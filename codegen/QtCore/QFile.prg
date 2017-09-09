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
HB_FUNC_STATIC( QFILE_NEW1 )
{
  QFile * o = new QFile ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QFile ( QObject * parent )
*/
HB_FUNC_STATIC( QFILE_NEW2 )
{
  QFile * o = new QFile ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QFile ( const QString & name, QObject * parent )
*/
HB_FUNC_STATIC( QFILE_NEW3 )
{
  QFile * o = new QFile ( PQSTRING(1), PQOBJECT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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
HB_FUNC_STATIC( QFILE_ERROR )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}


/*
bool exists () const
*/
HB_FUNC_STATIC( QFILE_EXISTS1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->exists () );
  }
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool flush ()
*/
HB_FUNC_STATIC( QFILE_FLUSH )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->flush () );
  }
}


/*
int handle () const
*/
HB_FUNC_STATIC( QFILE_HANDLE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->handle () );
  }
}

/*
bool link ( const QString & linkName )
*/
$method=|bool|link,link1|const QString &

/*
bool open ( FILE * fh, OpenMode mode )
*/
HB_FUNC_STATIC( QFILE_OPEN1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    FILE * par1 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->open ( par1, (QFile::OpenMode) hb_parni(2) ) );
  }
}


/*
bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
*/
HB_FUNC_STATIC( QFILE_OPEN2 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    FILE * par1 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->open ( par1, (QFile::OpenMode) hb_parni(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}


/*
bool open ( int fd, OpenMode mode )
*/
HB_FUNC_STATIC( QFILE_OPEN3 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( PINT(1), (QFile::OpenMode) hb_parni(2) ) );
  }
}


/*
bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
*/
HB_FUNC_STATIC( QFILE_OPEN4 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( PINT(1), (QFile::OpenMode) hb_parni(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}



/*
Permissions permissions () const
*/
HB_FUNC_STATIC( QFILE_PERMISSIONS1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->permissions () );
  }
}


/*
bool remove ()
*/
HB_FUNC_STATIC( QFILE_REMOVE1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->remove () );
  }
}

/*
bool rename ( const QString & newName )
*/
$method=|bool|rename,rename1|const QString &

/*
bool resize ( qint64 sz )
*/
HB_FUNC_STATIC( QFILE_RESIZE1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->resize ( PQINT64(1) ) );
  }
}

/*
void setFileName ( const QString & name )
*/
$method=|void|setFileName|const QString &

/*
bool setPermissions ( Permissions permissions )
*/
HB_FUNC_STATIC( QFILE_SETPERMISSIONS1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setPermissions ( (QFile::Permissions) hb_parni(1) ) );
  }
}

/*
bool unmap ( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uchar * par1 = (uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->unmap ( par1 ) );
  }
}


/*
void unsetError ()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetError ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


// Reimplemented Public Functions

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QFILE_ATEND )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->atEnd () );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QFILE_CLOSE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QFILE_ISSEQUENTIAL )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSequential () );
  }
}


/*
virtual bool open ( OpenMode mode )
*/
HB_FUNC_STATIC( QFILE_OPEN6 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->open ( (QFile::OpenMode) hb_parni(1) ) );
  }
}


//[1]bool open ( FILE * fh, OpenMode mode )
//[2]bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
//[3]bool open ( int fd, OpenMode mode )
//[4]bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
//[5]bool open ( const RFile & f, OpenMode mode, FileHandleFlags handleFlags = DontCloseHandle )
//[6]virtual bool open ( OpenMode mode )

HB_FUNC_STATIC( QFILE_OPEN )
{
  HB_FUNC_EXEC( QFILE_OPEN6 );
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QFILE_POS )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pos () );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QFILE_SEEK )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->seek ( PQINT64(1) ) );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QFILE_SIZE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}



// Static Public Members

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
HB_FUNC_STATIC( QFILE_COPY2 )
{
  RBOOL( QFile::copy ( PQSTRING(1), PQSTRING(2) ) );
}


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
}

/*
static Permissions permissions ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_PERMISSIONS2 )
{
  hb_retni( (int) QFile::permissions ( PQSTRING(1) ) );
}


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
}

#pragma ENDDUMP
