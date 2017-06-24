/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QITEMSELECTION
REQUEST QABSTRACTITEMMODEL
REQUEST QVARIANT
REQUEST QMIMEDATA
REQUEST QSIZE
#endif

CLASS QAbstractProxyModel INHERIT QAbstractItemModel

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD setSourceModel
   METHOD sourceModel
   METHOD buddy
   METHOD canFetchMore
   METHOD data
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD mimeData
   METHOD mimeTypes
   METHOD revert
   METHOD setData
   METHOD setHeaderData
   METHOD sort
   METHOD span
   METHOD submit
   METHOD supportedDropActions
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractProxyModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QItemSelection>
#include <QStringList>
#include <QSize>


HB_FUNC_STATIC( QABSTRACTPROXYMODEL_DELETE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QModelIndex mapFromSource ( const QModelIndex & sourceIndex ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_MAPFROMSOURCE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->mapFromSource ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual QItemSelection mapSelectionFromSource ( const QItemSelection & sourceSelection ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource ( *PQITEMSELECTION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTION" );
  }
}


/*
virtual QItemSelection mapSelectionToSource ( const QItemSelection & proxySelection ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource ( *PQITEMSELECTION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTION" );
  }
}


/*
virtual QModelIndex mapToSource ( const QModelIndex & proxyIndex ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_MAPTOSOURCE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->mapToSource ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void setSourceModel ( QAbstractItemModel * sourceModel )
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SETSOURCEMODEL )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSourceModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemModel * sourceModel () const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SOURCEMODEL )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * ptr = obj->sourceModel ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_BUDDY )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->buddy ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_CANFETCHMORE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canFetchMore ( *PQMODELINDEX(1) ) );
  }
}


/*
virtual QVariant data ( const QModelIndex & proxyIndex, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_DATA )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void fetchMore ( const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_FETCHMORE )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fetchMore ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_FLAGS )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags ( *PQMODELINDEX(1) ) );
  }
}


/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_HASCHILDREN )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->hasChildren ( par1 ) );
  }
}


/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_HEADERDATA )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), PINT(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_MIMEDATA )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_MIMETYPES )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->mimeTypes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual void revert ()
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_REVERT )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revert ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SETDATA )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setData ( *PQMODELINDEX(1), *PQVARIANT(2), OPINT(3,Qt::EditRole) ) );
  }
}


/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SETHEADERDATA )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setHeaderData ( PINT(1), (Qt::Orientation) hb_parni(2), *PQVARIANT(3), OPINT(4,Qt::EditRole) ) );
  }
}



/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SORT )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sort ( PINT(1), (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize span ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SPAN )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->span ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual bool submit ()
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SUBMIT )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->submit () );
  }
}


/*
virtual Qt::DropActions supportedDropActions () const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_SUPPORTEDDROPACTIONS )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->supportedDropActions () );
  }
}




#pragma ENDDUMP
