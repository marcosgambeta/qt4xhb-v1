$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QABSTRACTFILEENGINE
#endif

CLASS QAbstractFileEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD atEnd
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD entryList
   METHOD error
   METHOD errorString
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD open
   METHOD owner
   METHOD ownerId
   METHOD pos
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
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractFileEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

$deleteMethod

/*
bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual bool caseSensitive () const
*/
$virtualMethod=|bool|caseSensitive|

/*
virtual bool close ()
*/
$virtualMethod=|bool|close|

/*
virtual bool copy ( const QString & newName )
*/
$virtualMethod=|bool|copy|const QString &

/*
virtual QStringList entryList ( QDir::Filters filters, const QStringList & filterNames ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ENTRYLIST )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->entryList ( (QDir::Filters) hb_parni(1), PQSTRINGLIST(2) ) );
  }
}


/*
QFile::FileError error () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_ERROR )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
virtual FileFlags fileFlags ( FileFlags type = FileInfoAll ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_FILEFLAGS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fileFlags ( ISNIL(1)? QAbstractFileEngine::FileInfoAll : (QAbstractFileEngine::FileFlags) hb_parni(1) ) );
  }
}

/*
virtual QString fileName ( FileName file = DefaultName ) const
*/
$virtualMethod=|QString|fileName|QAbstractFileEngine::FileName=QAbstractFileEngine::DefaultName

/*
virtual QDateTime fileTime ( FileTime time ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_FILETIME )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->fileTime ( (QAbstractFileEngine::FileTime) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
virtual bool flush ()
*/
$virtualMethod=|bool|flush|

/*
virtual int handle () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_HANDLE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->handle () );
  }
}

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
virtual bool mkdir ( const QString & dirName, bool createParentDirectories ) const
*/
$virtualMethod=|bool|mkdir|const QString &,bool

/*
virtual bool open ( QIODevice::OpenMode mode )
*/
$virtualMethod=|bool|open|QIODevice::OpenMode

/*
virtual QString owner ( FileOwner owner ) const
*/
$virtualMethod=|QString|owner|QAbstractFileEngine::FileOwner

/*
virtual uint ownerId ( FileOwner owner ) const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_OWNERID )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->ownerId ( (QAbstractFileEngine::FileOwner) hb_parni(1) ) );
  }
}


/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_POS )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->pos () );
  }
}



/*
virtual qint64 readLine ( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_READLINE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQINT64( obj->readLine ( par1, PQINT64(2) ) );
  }
}

/*
virtual bool remove ()
*/
$virtualMethod=|bool|remove|

/*
virtual bool rename ( const QString & newName )
*/
$virtualMethod=|bool|rename|const QString &

/*
virtual bool rmdir ( const QString & dirName, bool recurseParentDirectories ) const
*/
$virtualMethod=|bool|rmdir|const QString &,bool

/*
virtual bool seek ( qint64 offset )
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
HB_FUNC_STATIC( QABSTRACTFILEENGINE_WRITE )
{
  QAbstractFileEngine * obj = (QAbstractFileEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->write ( (const char *) hb_parc(1), PQINT64(2) ) );
  }
}

/*
QAbstractFileEngine * create ( const QString & fileName )
*/
HB_FUNC_STATIC( QABSTRACTFILEENGINE_CREATE )
{
  QAbstractFileEngine * ptr = QAbstractFileEngine::create ( PQSTRING(1) );
  _qt4xhb_createReturnClass ( ptr, "QABSTRACTFILEENGINE" );
}

$extraMethods

#pragma ENDDUMP
