$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QFILEINFO
REQUEST QFILEICONPROVIDER
REQUEST QMODELINDEX
REQUEST QDATETIME
REQUEST QVARIANT
REQUEST QDIR
REQUEST QMIMEDATA
#endif

CLASS QFileSystemModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD fileIcon
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD filter
   METHOD iconProvider
   METHOD index1
   METHOD isDir
   METHOD isReadOnly
   METHOD lastModified
   METHOD mkdir
   METHOD myComputer
   METHOD nameFilterDisables
   METHOD nameFilters
   METHOD permissions
   METHOD remove
   METHOD resolveSymlinks
   METHOD rmdir
   METHOD rootDirectory
   METHOD rootPath
   METHOD setFilter
   METHOD setIconProvider
   METHOD setNameFilterDisables
   METHOD setNameFilters
   METHOD setReadOnly
   METHOD setResolveSymlinks
   METHOD setRootPath
   METHOD size
   METHOD type
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD index2
   METHOD index
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD supportedDropActions

   METHOD onDirectoryLoaded
   METHOD onFileRenamed
   METHOD onRootPathChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFileSystemModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QFileSystemModel(QObject * parent = 0)
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NEW )
{
  QFileSystemModel * o = new QFileSystemModel ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QIcon fileIcon ( const QModelIndex & index ) const
*/
$method=|QIcon|fileIcon|const QModelIndex &

/*
QFileInfo fileInfo ( const QModelIndex & index ) const
*/
$method=|QFileInfo|fileInfo|const QModelIndex &

/*
QString fileName ( const QModelIndex & index ) const
*/
$method=|QString|fileName|const QModelIndex &

/*
QString filePath ( const QModelIndex & index ) const
*/
$method=|QString|filePath|const QModelIndex &

/*
QDir::Filters filter () const
*/
$method=|QDir::Filters|filter|

/*
QFileIconProvider * iconProvider () const
*/
$method=|QFileIconProvider *|iconProvider|

/*
QModelIndex index ( const QString & path, int column = 0 ) const
*/
$method=|QModelIndex|index,index1|const QString &,int=0

/*
bool isDir ( const QModelIndex & index ) const
*/
$method=|bool|isDir|const QModelIndex &

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
QDateTime lastModified ( const QModelIndex & index ) const
*/
$method=|QDateTime|lastModified|const QModelIndex &

/*
QModelIndex mkdir ( const QModelIndex & parent, const QString & name )
*/
$method=|QModelIndex|mkdir|const QModelIndex &,const QString &

/*
QVariant myComputer ( int role = Qt::DisplayRole ) const
*/
$method=|QVariant|myComputer|int=Qt::DisplayRole

/*
bool nameFilterDisables () const
*/
$method=|bool|nameFilterDisables|

/*
QStringList nameFilters () const
*/
$method=|QStringList|nameFilters|

/*
QFile::Permissions permissions ( const QModelIndex & index ) const
*/
$method=|QFile::Permissions|permissions|const QModelIndex &

/*
bool remove ( const QModelIndex & index ) const
*/
$method=|bool|remove|const QModelIndex &

/*
bool resolveSymlinks () const
*/
$method=|bool|resolveSymlinks|

/*
bool rmdir ( const QModelIndex & index ) const
*/
$method=|bool|rmdir|const QModelIndex &

/*
QDir rootDirectory () const
*/
$method=|QDir|rootDirectory|

/*
QString rootPath () const
*/
$method=|QString|rootPath|

/*
void setFilter ( QDir::Filters filters )
*/
$method=|void|setFilter|QDir::Filters

/*
void setIconProvider ( QFileIconProvider * provider )
*/
$method=|void|setIconProvider|QFileIconProvider *

/*
void setNameFilterDisables ( bool enable )
*/
$method=|void|setNameFilterDisables|bool

/*
void setNameFilters ( const QStringList & filters )
*/
$method=|void|setNameFilters|const QStringList &

/*
void setReadOnly ( bool enable )
*/
$method=|void|setReadOnly|bool

/*
void setResolveSymlinks ( bool enable )
*/
$method=|void|setResolveSymlinks|bool

/*
QModelIndex setRootPath ( const QString & newPath )
*/
$method=|QModelIndex|setRootPath|const QString &

/*
qint64 size ( const QModelIndex & index ) const
*/
$method=|qint64|size|const QModelIndex &

/*
QString type ( const QModelIndex & index ) const
*/
$method=|QString|type|const QModelIndex &

/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
$virtualMethod=|bool|canFetchMore|const QModelIndex &

/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

/*
virtual void fetchMore ( const QModelIndex & parent )
*/
$virtualMethod=|void|fetchMore|const QModelIndex &

/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
$virtualMethod=|Qt::ItemFlags|flags|const QModelIndex &

/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|bool|hasChildren|const QModelIndex &=QModelIndex()

/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
$virtualMethod=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|QModelIndex|index,index2|int,int,const QModelIndex &=QModelIndex()

//[1]QModelIndex index ( const QString & path, int column = 0 ) const
//[2]virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const

HB_FUNC_STATIC( QFILESYSTEMMODEL_INDEX )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFILESYSTEMMODEL_INDEX1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QFILESYSTEMMODEL_INDEX2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
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

/*
virtual QStringList mimeTypes () const
*/
$virtualMethod=|QStringList|mimeTypes|

/*
virtual QModelIndex parent ( const QModelIndex & index ) const
*/
$virtualMethod=|QModelIndex|parent|const QModelIndex &

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

/*
virtual bool setData ( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
virtual Qt::DropActions supportedDropActions () const
*/
$virtualMethod=|Qt::DropActions|supportedDropActions|

#pragma ENDDUMP
