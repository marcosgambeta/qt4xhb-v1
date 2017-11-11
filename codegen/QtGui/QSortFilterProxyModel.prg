$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGEXP
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QITEMSELECTION
REQUEST QMIMEDATA
REQUEST QSIZE
#endif

CLASS QSortFilterProxyModel INHERIT QAbstractProxyModel

   METHOD new
   METHOD delete
   METHOD dynamicSortFilter
   METHOD filterCaseSensitivity
   METHOD filterKeyColumn
   METHOD filterRegExp
   METHOD filterRole
   METHOD isSortLocaleAware
   METHOD setDynamicSortFilter
   METHOD setFilterCaseSensitivity
   METHOD setFilterKeyColumn
   METHOD setFilterRole
   METHOD setSortCaseSensitivity
   METHOD setSortLocaleAware
   METHOD setSortRole
   METHOD sortCaseSensitivity
   METHOD sortColumn
   METHOD sortOrder
   METHOD sortRole
   METHOD buddy
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD index
   METHOD insertColumns
   METHOD insertRows
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD match
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD setHeaderData
   METHOD setSourceModel
   METHOD sort
   METHOD span
   METHOD supportedDropActions
   METHOD invalidate
   METHOD setFilterFixedString
   METHOD setFilterRegExp
   METHOD setFilterWildcard

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSortFilterProxyModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QItemSelection>
#include <QStringList>
#include <QSize>

/*
QSortFilterProxyModel ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool dynamicSortFilter () const
*/
$method=|bool|dynamicSortFilter|

/*
Qt::CaseSensitivity filterCaseSensitivity () const
*/
$method=|Qt::CaseSensitivity|filterCaseSensitivity|

/*
int filterKeyColumn () const
*/
$method=|int|filterKeyColumn|

/*
QRegExp filterRegExp () const
*/
$method=|QRegExp|filterRegExp|

/*
int filterRole () const
*/
$method=|int|filterRole|

/*
bool isSortLocaleAware () const
*/
$method=|bool|isSortLocaleAware|

/*
void setDynamicSortFilter ( bool enable )
*/
$method=|void|setDynamicSortFilter|bool

/*
void setFilterCaseSensitivity ( Qt::CaseSensitivity cs )
*/
$method=|void|setFilterCaseSensitivity|Qt::CaseSensitivity

/*
void setFilterKeyColumn ( int column )
*/
$method=|void|setFilterKeyColumn|int

/*
void setFilterRole ( int role )
*/
$method=|void|setFilterRole|int

/*
void setSortCaseSensitivity ( Qt::CaseSensitivity cs )
*/
$method=|void|setSortCaseSensitivity|Qt::CaseSensitivity

/*
void setSortLocaleAware ( bool on )
*/
$method=|void|setSortLocaleAware|bool

/*
void setSortRole ( int role )
*/
$method=|void|setSortRole|int

/*
Qt::CaseSensitivity sortCaseSensitivity () const
*/
$method=|Qt::CaseSensitivity|sortCaseSensitivity|

/*
int sortColumn () const
*/
$method=|int|sortColumn|

/*
Qt::SortOrder sortOrder () const
*/
$method=|Qt::SortOrder|sortOrder|

/*
int sortRole () const
*/
$method=|int|sortRole|

/*
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
$virtualMethod=|QModelIndex|buddy|const QModelIndex &

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
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const
*/
$virtualMethod=|QModelIndex|mapFromSource|const QModelIndex &

/*
virtual QItemSelection mapSelectionFromSource ( const QItemSelection & sourceSelection ) const
*/
$virtualMethod=|QItemSelection|mapSelectionFromSource|const QItemSelection &

/*
virtual QItemSelection mapSelectionToSource ( const QItemSelection & proxySelection ) const
*/
$virtualMethod=|QItemSelection|mapSelectionToSource|const QItemSelection &

/*
virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const
*/
$virtualMethod=|QModelIndex|mapToSource|const QModelIndex &

/*
virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_MATCH )
{
  QSortFilterProxyModel * obj = (QSortFilterProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par5 = ISNIL(5)? (int) Qt::MatchStartsWith | Qt::MatchWrap : hb_parni(5);
    QModelIndexList list = obj->match ( *PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT(4,1), (Qt::MatchFlags) par5 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
$virtualMethod=|QMimeData *|mimeData|const QModelIndexList &

/*
virtual QStringList mimeTypes () const
*/
$virtualMethod=|QStringList|mimeTypes|

/*
virtual QModelIndex parent ( const QModelIndex & child ) const
*/
$virtualMethod=|QModelIndex|parent|const QModelIndex &

/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
$virtualMethod=|bool|setHeaderData|int,Qt::Orientation,const QVariant &,int=Qt::EditRole

/*
virtual void setSourceModel ( QAbstractItemModel * sourceModel )
*/
$virtualMethod=|void|setSourceModel|QAbstractItemModel *

/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
$virtualMethod=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

/*
virtual QSize span ( const QModelIndex & index ) const
*/
$virtualMethod=|QSize|span|const QModelIndex &

/*
virtual Qt::DropActions supportedDropActions () const
*/
$virtualMethod=|Qt::DropActions|supportedDropActions|

/*
void invalidate ()
*/
$method=|void|invalidate|

/*
void setFilterFixedString ( const QString & pattern )
*/
$method=|void|setFilterFixedString|const QString &

/*
void setFilterRegExp ( const QRegExp & regExp )
*/
$internalMethod=|void|setFilterRegExp,setFilterRegExp1|const QRegExp &

/*
void setFilterRegExp ( const QString & pattern )
*/
$internalMethod=|void|setFilterRegExp,setFilterRegExp2|const QString &

//[1]void setFilterRegExp ( const QRegExp & regExp )
//[2]void setFilterRegExp ( const QString & pattern )

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QSortFilterProxyModel_setFilterRegExp1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSortFilterProxyModel_setFilterRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFilterWildcard ( const QString & pattern )
*/
$method=|void|setFilterWildcard|const QString &

#pragma ENDDUMP
