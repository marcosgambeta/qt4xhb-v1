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
$virtualMethod=|QStringList|entryList|QDir::Filters,const QStringList &

/*
QFile::FileError error () const
*/
$method=|QFile::FileError|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
virtual FileFlags fileFlags ( FileFlags type = FileInfoAll ) const
*/
$virtualMethod=|QAbstractFileEngine::FileFlags|fileFlags|QAbstractFileEngine::FileFlags=QAbstractFileEngine::FileInfoAll

/*
virtual QString fileName ( FileName file = DefaultName ) const
*/
$virtualMethod=|QString|fileName|QAbstractFileEngine::FileName=QAbstractFileEngine::DefaultName

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
$virtualMethod=|uint|ownerId|QAbstractFileEngine::FileOwner

/*
virtual qint64 pos () const
*/
$virtualMethod=|qint64|pos|

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
$virtualMethod=|qint64|write|const char *,qint64

/*
static QAbstractFileEngine * create ( const QString & fileName )
*/
$staticMethod=|QAbstractFileEngine *|create|const QString &

$extraMethods

#pragma ENDDUMP
