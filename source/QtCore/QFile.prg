/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD error
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD setFileName
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size
   METHOD copy
   METHOD decodeName
   METHOD encodeName
   METHOD exists
   METHOD link
   METHOD permissions
   METHOD remove
   METHOD rename
   METHOD resize
   METHOD setPermissions
   METHOD symLinkTarget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QFile>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QFile ( const QString & name )
*/
void QFile_new1()
{
  QFile * o = new QFile( PQSTRING(1) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QFile ( QObject * parent )
*/
void QFile_new2()
{
  QFile * o = new QFile( PQOBJECT(1) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QFile ( const QString & name, QObject * parent )
*/
void QFile_new3()
{
  QFile * o = new QFile( PQSTRING(1), PQOBJECT(2) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QFile ( const QString & name )
//[2]QFile ( QObject * parent )
//[3]QFile ( const QString & name, QObject * parent )

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QFile_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QFile_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILE_DELETE )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
FileError error () const
*/
HB_FUNC_STATIC( QFILE_ERROR )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QFILE_FILENAME )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fileName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool flush ()
*/
HB_FUNC_STATIC( QFILE_FLUSH )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int handle () const
*/
HB_FUNC_STATIC( QFILE_HANDLE )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->handle() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFileName ( const QString & name )
*/
HB_FUNC_STATIC( QFILE_SETFILENAME )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setFileName( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool unmap ( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->unmap( (uchar *) hb_parc(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void unsetError ()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->unsetError();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QFILE_ATEND )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void close ()
*/
HB_FUNC_STATIC( QFILE_CLOSE )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QFILE_ISSEQUENTIAL )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool open ( FILE * fh, OpenMode mode )
*/
void QFile_open1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->open( (FILE *) hb_parptr(1), (QIODevice::OpenMode) hb_parni(2) ) );
  }
}

/*
bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
*/
void QFile_open2()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->open( (FILE *) hb_parptr(1), (QIODevice::OpenMode) hb_parni(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}

/*
bool open ( int fd, OpenMode mode )
*/
void QFile_open3()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->open( PINT(1), (QIODevice::OpenMode) hb_parni(2) ) );
  }
}

/*
bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
*/
void QFile_open4()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->open( PINT(1), (QIODevice::OpenMode) hb_parni(2), (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}

/*
bool open ( const RFile & f, OpenMode mode, FileHandleFlags handleFlags = DontCloseHandle )
*/

/*
virtual bool open ( OpenMode mode )
*/
void QFile_open6()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->open( (QIODevice::OpenMode) hb_parni(1) ) );
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
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QFile_open1();
  }
  else if( ISNUMPAR(3) && ISPOINTER(1) && ISNUM(2) && ISNUM(3) )
  {
    QFile_open2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QFile_open3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QFile_open4();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_open6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QFILE_POS )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->pos() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QFILE_SEEK )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->seek( PQINT64(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QFILE_SIZE )
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->size() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool copy ( const QString & newName )
*/
void QFile_copy1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->copy( PQSTRING(1) ) );
  }
}

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
void QFile_copy2()
{

  RBOOL( QFile::copy( PQSTRING(1), PQSTRING(2) ) );
}

//[1]bool copy ( const QString & newName )
//[2]bool copy ( const QString & fileName, const QString & newName )

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_copy1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString decodeName ( const QByteArray & localFileName )
*/
void QFile_decodeName1()
{

  RQSTRING( QFile::decodeName( *PQBYTEARRAY(1) ) );
}

/*
static QString decodeName ( const char * localFileName )
*/
void QFile_decodeName2()
{

  RQSTRING( QFile::decodeName( PCONSTCHAR(1) ) );
}

//[1]QString decodeName ( const QByteArray & localFileName )
//[2]QString decodeName ( const char * localFileName )

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QFile_decodeName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_decodeName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray encodeName ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_ENCODENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QByteArray * ptr = new QByteArray( QFile::encodeName( PQSTRING(1) ) );
    _qt4xhb_createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
bool exists () const
*/
void QFile_exists1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exists() );
  }
}

/*
static bool exists ( const QString & fileName )
*/
void QFile_exists2()
{

  RBOOL( QFile::exists( PQSTRING(1) ) );
}

//[1]bool exists () const
//[2]bool exists ( const QString & fileName )

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    QFile_exists1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool link ( const QString & linkName )
*/
void QFile_link1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->link( PQSTRING(1) ) );
  }
}

/*
static bool link ( const QString & fileName, const QString & linkName )
*/
void QFile_link2()
{

  RBOOL( QFile::link( PQSTRING(1), PQSTRING(2) ) );
}

//[1]bool link ( const QString & linkName )
//[2]bool link ( const QString & fileName, const QString & linkName )

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_link1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_link2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Permissions permissions () const
*/
void QFile_permissions1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RENUM( obj->permissions() );
  }
}

/*
static Permissions permissions ( const QString & fileName )
*/
void QFile_permissions2()
{

  RENUM( QFile::permissions( PQSTRING(1) ) );
}

//[1]Permissions permissions () const
//[2]Permissions permissions ( const QString & fileName )

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    QFile_permissions1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_permissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove ()
*/
void QFile_remove1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->remove() );
  }
}

/*
static bool remove ( const QString & fileName )
*/
void QFile_remove2()
{

  RBOOL( QFile::remove( PQSTRING(1) ) );
}

//[1]bool remove ()
//[2]bool remove ( const QString & fileName )

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    QFile_remove1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool rename ( const QString & newName )
*/
void QFile_rename1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->rename( PQSTRING(1) ) );
  }
}

/*
static bool rename ( const QString & oldName, const QString & newName )
*/
void QFile_rename2()
{

  RBOOL( QFile::rename( PQSTRING(1), PQSTRING(2) ) );
}

//[1]bool rename ( const QString & newName )
//[2]bool rename ( const QString & oldName, const QString & newName )

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_rename1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_rename2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool resize ( qint64 sz )
*/
void QFile_resize1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->resize( PQINT64(1) ) );
  }
}

/*
static bool resize ( const QString & fileName, qint64 sz )
*/
void QFile_resize2()
{

  RBOOL( QFile::resize( PQSTRING(1), PQINT64(2) ) );
}

//[1]bool resize ( qint64 sz )
//[2]bool resize ( const QString & fileName, qint64 sz )

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_resize1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setPermissions ( Permissions permissions )
*/
void QFile_setPermissions1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->setPermissions( (QFile::Permissions) hb_parni(1) ) );
  }
}

/*
static bool setPermissions ( const QString & fileName, Permissions permissions )
*/
void QFile_setPermissions2()
{

  RBOOL( QFile::setPermissions( PQSTRING(1), (QFile::Permissions) hb_parni(2) ) );
}

//[1]bool setPermissions ( Permissions permissions )
//[2]bool setPermissions ( const QString & fileName, Permissions permissions )

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_setPermissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_setPermissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString symLinkTarget () const
*/
void QFile_symLinkTarget1()
{
  QFile * obj = (QFile *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->symLinkTarget() );
  }
}

/*
static QString symLinkTarget ( const QString & fileName )
*/
void QFile_symLinkTarget2()
{

  RQSTRING( QFile::symLinkTarget( PQSTRING(1) ) );
}

//[1]QString symLinkTarget () const
//[2]QString symLinkTarget ( const QString & fileName )

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    QFile_symLinkTarget1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_symLinkTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
