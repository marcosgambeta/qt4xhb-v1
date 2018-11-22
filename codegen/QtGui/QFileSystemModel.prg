%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QDateTime>

$prototype=QFileSystemModel(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QIcon fileIcon ( const QModelIndex & index ) const
$method=|QIcon|fileIcon|const QModelIndex &

$prototype=QFileInfo fileInfo ( const QModelIndex & index ) const
$method=|QFileInfo|fileInfo|const QModelIndex &

$prototype=QString fileName ( const QModelIndex & index ) const
$method=|QString|fileName|const QModelIndex &

$prototype=QString filePath ( const QModelIndex & index ) const
$method=|QString|filePath|const QModelIndex &

$prototype=QDir::Filters filter () const
$method=|QDir::Filters|filter|

$prototype=QFileIconProvider * iconProvider () const
$method=|QFileIconProvider *|iconProvider|

$prototype=bool isDir ( const QModelIndex & index ) const
$method=|bool|isDir|const QModelIndex &

$prototype=bool isReadOnly () const
$method=|bool|isReadOnly|

$prototype=QDateTime lastModified ( const QModelIndex & index ) const
$method=|QDateTime|lastModified|const QModelIndex &

$prototype=QModelIndex mkdir ( const QModelIndex & parent, const QString & name )
$method=|QModelIndex|mkdir|const QModelIndex &,const QString &

$prototype=QVariant myComputer ( int role = Qt::DisplayRole ) const
$method=|QVariant|myComputer|int=Qt::DisplayRole

$prototype=bool nameFilterDisables () const
$method=|bool|nameFilterDisables|

$prototype=QStringList nameFilters () const
$method=|QStringList|nameFilters|

$prototype=QFile::Permissions permissions ( const QModelIndex & index ) const
$method=|QFile::Permissions|permissions|const QModelIndex &

$prototype=bool remove ( const QModelIndex & index ) const
$method=|bool|remove|const QModelIndex &

$prototype=bool resolveSymlinks () const
$method=|bool|resolveSymlinks|

$prototype=bool rmdir ( const QModelIndex & index ) const
$method=|bool|rmdir|const QModelIndex &

$prototype=QDir rootDirectory () const
$method=|QDir|rootDirectory|

$prototype=QString rootPath () const
$method=|QString|rootPath|

$prototype=void setFilter ( QDir::Filters filters )
$method=|void|setFilter|QDir::Filters

$prototype=void setIconProvider ( QFileIconProvider * provider )
$method=|void|setIconProvider|QFileIconProvider *

$prototype=void setNameFilterDisables ( bool enable )
$method=|void|setNameFilterDisables|bool

$prototype=void setNameFilters ( const QStringList & filters )
$method=|void|setNameFilters|const QStringList &

$prototype=void setReadOnly ( bool enable )
$method=|void|setReadOnly|bool

$prototype=void setResolveSymlinks ( bool enable )
$method=|void|setResolveSymlinks|bool

$prototype=QModelIndex setRootPath ( const QString & newPath )
$method=|QModelIndex|setRootPath|const QString &

$prototype=qint64 size ( const QModelIndex & index ) const
$method=|qint64|size|const QModelIndex &

$prototype=QString type ( const QModelIndex & index ) const
$method=|QString|type|const QModelIndex &

$prototype=virtual bool canFetchMore ( const QModelIndex & parent ) const
$virtualMethod=|bool|canFetchMore|const QModelIndex &

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual void fetchMore ( const QModelIndex & parent )
$virtualMethod=|void|fetchMore|const QModelIndex &

$prototype=virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=QModelIndex index ( const QString & path, int column = 0 ) const
$internalMethod=|QModelIndex|index,index1|const QString &,int=0

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$internalVirtualMethod=|QModelIndex|index,index2|int,int,const QModelIndex &=QModelIndex()

//[1]QModelIndex index ( const QString & path, int column = 0 ) const
//[2]virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const

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

$prototype=virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMEDATA )
{
  QFileSystemModel * obj = (QFileSystemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QModelIndexList * par1 = (QModelIndexList *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMimeData * ptr = obj->mimeData ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}
$addMethod=mimeData

$prototype=virtual QStringList mimeTypes () const
$virtualMethod=|QStringList|mimeTypes|

$prototype=virtual QModelIndex parent ( const QModelIndex & index ) const
$virtualMethod=|QModelIndex|parent|const QModelIndex &

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool setData ( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=virtual Qt::DropActions supportedDropActions () const
$virtualMethod=|Qt::DropActions|supportedDropActions|

$beginSignals
$signal=|directoryLoaded(QString)
$signal=|fileRenamed(QString,QString,QString)
$signal=|rootPathChanged(QString)
$endSignals

#pragma ENDDUMP
