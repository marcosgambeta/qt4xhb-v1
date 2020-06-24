%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>
#include <QtCore/QMimeData>

$prototype=QFileSystemModel(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QIcon fileIcon( const QModelIndex & index ) const

$prototypeV2=QFileInfo fileInfo( const QModelIndex & index ) const

$prototypeV2=QString fileName( const QModelIndex & index ) const

$prototypeV2=QString filePath( const QModelIndex & index ) const

$prototypeV2=QDir::Filters filter() const

$prototypeV2=QFileIconProvider * iconProvider() const

$prototypeV2=bool isDir( const QModelIndex & index ) const

$prototypeV2=bool isReadOnly() const

$prototypeV2=QDateTime lastModified( const QModelIndex & index ) const

$prototypeV2=QModelIndex mkdir( const QModelIndex & parent, const QString & name )

$prototypeV2=QVariant myComputer( int role = Qt::DisplayRole ) const

$prototypeV2=bool nameFilterDisables() const

$prototypeV2=QStringList nameFilters() const

$prototypeV2=QFile::Permissions permissions( const QModelIndex & index ) const

$prototypeV2=bool remove( const QModelIndex & index ) const

$prototypeV2=bool resolveSymlinks() const

$prototypeV2=bool rmdir( const QModelIndex & index ) const

$prototypeV2=QDir rootDirectory() const

$prototypeV2=QString rootPath() const

$prototypeV2=void setFilter( QDir::Filters filters )

$prototypeV2=void setIconProvider( QFileIconProvider * provider )

$prototypeV2=void setNameFilterDisables( bool enable )

$prototypeV2=void setNameFilters( const QStringList & filters )

$prototypeV2=void setReadOnly( bool enable )

$prototypeV2=void setResolveSymlinks( bool enable )

$prototypeV2=QModelIndex setRootPath( const QString & newPath )

$prototypeV2=qint64 size( const QModelIndex & index ) const

$prototypeV2=QString type( const QModelIndex & index ) const

$prototypeV2=virtual bool canFetchMore( const QModelIndex & parent ) const

$prototypeV2=virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const

$prototypeV2=virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=virtual void fetchMore( const QModelIndex & parent )

$prototypeV2=virtual Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=virtual bool hasChildren( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototype=QModelIndex index ( const QString & path, int column = 0 ) const
$internalMethod=|QModelIndex|index,index1|const QString &,int=0

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$internalVirtualMethod=|QModelIndex|index,index2|int,int,const QModelIndex &=QModelIndex()

/*
[1]QModelIndex index ( const QString & path, int column = 0 ) const
[2]virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/

HB_FUNC_STATIC( QFILESYSTEMMODEL_INDEX )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QFileSystemModel_index1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    QFileSystemModel_index2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=index

$prototypeV2=virtual QMimeData * mimeData( const QModelIndexList & indexes ) const

$prototypeV2=virtual QStringList mimeTypes() const

$prototypeV2=virtual QModelIndex parent( const QModelIndex & index ) const

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual bool setData( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=virtual Qt::DropActions supportedDropActions() const

$beginSignals
$signal=|directoryLoaded(QString)
$signal=|fileRenamed(QString,QString,QString)
$signal=|rootPathChanged(QString)
$endSignals

#pragma ENDDUMP
