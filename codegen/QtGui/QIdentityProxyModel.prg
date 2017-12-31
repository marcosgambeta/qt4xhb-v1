$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QITEMSELECTION
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD dropMimeData
   METHOD index
   METHOD insertColumns
   METHOD insertRows
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD match
   METHOD parent
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setSourceModel

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIdentityProxyModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QItemSelection>

$prototype=QIdentityProxyModel ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$virtualMethod=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|insertRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const
$virtualMethod=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=virtual QItemSelection mapSelectionFromSource ( const QItemSelection & selection ) const
$virtualMethod=|QItemSelection|mapSelectionFromSource|const QItemSelection &

$prototype=virtual QItemSelection mapSelectionToSource ( const QItemSelection & selection ) const
$virtualMethod=|QItemSelection|mapSelectionToSource|const QItemSelection &

$prototype=virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const
$virtualMethod=|QModelIndex|mapToSource|const QModelIndex &

$prototype=virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MATCH )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
        hb_vmPushDynSym( pDynSym );
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

$prototype=virtual QModelIndex parent ( const QModelIndex & child ) const
$virtualMethod=|QModelIndex|parent|const QModelIndex &

$prototype=virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeColumns|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
$virtualMethod=|bool|removeRows|int,int,const QModelIndex &=QModelIndex()

$prototype=virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$virtualMethod=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=virtual void setSourceModel ( QAbstractItemModel * newSourceModel )
$virtualMethod=|void|setSourceModel|QAbstractItemModel *

#pragma ENDDUMP
