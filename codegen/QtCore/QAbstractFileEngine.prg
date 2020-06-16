%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$deleteMethod

$prototypeV2=bool atEnd() const

$prototypeV2=virtual bool caseSensitive() const

$prototypeV2=virtual bool close()

$prototype=virtual bool copy ( const QString & newName )
$virtualMethod=|bool|copy|const QString &

$prototype=virtual QStringList entryList ( QDir::Filters filters, const QStringList & filterNames ) const
$virtualMethod=|QStringList|entryList|QDir::Filters,const QStringList &

$prototypeV2=QFile::FileError error() const

$prototypeV2=QString errorString() const

$prototype=virtual FileFlags fileFlags ( FileFlags type = FileInfoAll ) const
$virtualMethod=|QAbstractFileEngine::FileFlags|fileFlags|QAbstractFileEngine::FileFlags=QAbstractFileEngine::FileInfoAll

$prototype=virtual QString fileName ( FileName file = DefaultName ) const
$virtualMethod=|QString|fileName|QAbstractFileEngine::FileName=QAbstractFileEngine::DefaultName

$prototype=virtual QDateTime fileTime ( FileTime time ) const
$virtualMethod=|QDateTime|fileTime|QAbstractFileEngine::FileTime

$prototypeV2=virtual bool flush()

$prototypeV2=virtual int handle() const

$prototypeV2=virtual bool isRelativePath() const

$prototypeV2=virtual bool isSequential() const

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

$prototypeV2=virtual qint64 pos() const

$prototype=virtual qint64 readLine ( char * data, qint64 maxlen )
%% TODO: corrigir codigo
%% $virtualMethod=|qint64|readLine|char *,qint64

$prototypeV2=virtual bool remove()

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

$prototypeV2=virtual qint64 size() const

$prototype=virtual bool supportsExtension ( Extension extension ) const
$virtualMethod=|bool|supportsExtension|QAbstractFileEngine::Extension

$prototype=virtual qint64 write ( const char * data, qint64 len )
$virtualMethod=|qint64|write|const char *,qint64

$prototype=static QAbstractFileEngine * create ( const QString & fileName )
$staticMethod=|QAbstractFileEngine *|create|const QString &

$extraMethods

#pragma ENDDUMP
