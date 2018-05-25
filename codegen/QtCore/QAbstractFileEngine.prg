%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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
   //METHOD readLine
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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDateTime>

$deleteMethod

$prototype=bool atEnd () const
$method=|bool|atEnd|

$prototype=virtual bool caseSensitive () const
$virtualMethod=|bool|caseSensitive|

$prototype=virtual bool close ()
$virtualMethod=|bool|close|

$prototype=virtual bool copy ( const QString & newName )
$virtualMethod=|bool|copy|const QString &

$prototype=virtual QStringList entryList ( QDir::Filters filters, const QStringList & filterNames ) const
$virtualMethod=|QStringList|entryList|QDir::Filters,const QStringList &

$prototype=QFile::FileError error () const
$method=|QFile::FileError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=virtual FileFlags fileFlags ( FileFlags type = FileInfoAll ) const
$virtualMethod=|QAbstractFileEngine::FileFlags|fileFlags|QAbstractFileEngine::FileFlags=QAbstractFileEngine::FileInfoAll

$prototype=virtual QString fileName ( FileName file = DefaultName ) const
$virtualMethod=|QString|fileName|QAbstractFileEngine::FileName=QAbstractFileEngine::DefaultName

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

$prototype=virtual bool mkdir ( const QString & dirName, bool createParentDirectories ) const
$virtualMethod=|bool|mkdir|const QString &,bool

$prototype=virtual bool open ( QIODevice::OpenMode mode )
$virtualMethod=|bool|open|QIODevice::OpenMode

$prototype=virtual QString owner ( FileOwner owner ) const
$virtualMethod=|QString|owner|QAbstractFileEngine::FileOwner

$prototype=virtual uint ownerId ( FileOwner owner ) const
$virtualMethod=|uint|ownerId|QAbstractFileEngine::FileOwner

$prototype=virtual qint64 pos () const
$virtualMethod=|qint64|pos|

$prototype=virtual qint64 readLine ( char * data, qint64 maxlen )
%% TODO: corrigir codigo
%% $virtualMethod=|qint64|readLine|char *,qint64

$prototype=virtual bool remove ()
$virtualMethod=|bool|remove|

$prototype=virtual bool rename ( const QString & newName )
$virtualMethod=|bool|rename|const QString &

$prototype=virtual bool rmdir ( const QString & dirName, bool recurseParentDirectories ) const
$virtualMethod=|bool|rmdir|const QString &,bool

$prototype=virtual bool seek ( qint64 offset )
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

$prototype=static QAbstractFileEngine * create ( const QString & fileName )
$staticMethod=|QAbstractFileEngine *|create|const QString &

$extraMethods

#pragma ENDDUMP
