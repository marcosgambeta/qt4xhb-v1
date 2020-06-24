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

$prototypeV2=virtual bool copy( const QString & newName )

$prototypeV2=virtual QStringList entryList( QDir::Filters filters, const QStringList & filterNames ) const

$prototypeV2=QFile::FileError error() const

$prototypeV2=QString errorString() const

$prototypeV2=virtual QAbstractFileEngine::FileFlags fileFlags( QAbstractFileEngine::FileFlags type = QAbstractFileEngine::FileInfoAll ) const

$prototypeV2=virtual QString fileName( QAbstractFileEngine::FileName file = QAbstractFileEngine::DefaultName ) const

$prototypeV2=virtual QDateTime fileTime( QAbstractFileEngine::FileTime time ) const

$prototypeV2=virtual bool flush()

$prototypeV2=virtual int handle() const

$prototypeV2=virtual bool isRelativePath() const

$prototypeV2=virtual bool isSequential() const

$prototypeV2=virtual bool link( const QString & newName )

$prototypeV2=virtual bool mkdir( const QString & dirName, bool createParentDirectories ) const

$prototypeV2=virtual bool open( QIODevice::OpenMode mode )

$prototypeV2=virtual QString owner( QAbstractFileEngine::FileOwner owner ) const

$prototypeV2=virtual uint ownerId( QAbstractFileEngine::FileOwner owner ) const

$prototypeV2=virtual qint64 pos() const

$prototype=virtual qint64 readLine ( char * data, qint64 maxlen )
%% TODO: corrigir codigo
%% $virtualMethod=|qint64|readLine|char *,qint64

$prototypeV2=virtual bool remove()

$prototypeV2=virtual bool rename( const QString & newName )

$prototypeV2=virtual bool rmdir( const QString & dirName, bool recurseParentDirectories ) const

$prototypeV2=virtual bool seek( qint64 offset )

$prototypeV2=virtual void setFileName( const QString & file )

$prototypeV2=virtual bool setPermissions( uint perms )

$prototypeV2=virtual bool setSize( qint64 size )

$prototypeV2=virtual qint64 size() const

$prototypeV2=virtual bool supportsExtension( QAbstractFileEngine::Extension extension ) const

$prototypeV2=virtual qint64 write( const char * data, qint64 len )

$prototypeV2=static QAbstractFileEngine * create( const QString & fileName )

$extraMethods

#pragma ENDDUMP
