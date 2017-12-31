$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
REQUEST QSOURCELOCATION
REQUEST QVARIANT
#endif

CLASS QAbstractXmlNodeModel INHERIT QSharedData

   METHOD delete
   METHOD baseUri
   METHOD compareOrder
   METHOD documentUri
   METHOD elementById
   METHOD kind
   METHOD name
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD root
   METHOD sourceLocation
   METHOD stringValue
   METHOD typedValue

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractXmlNodeModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QUrl>
#include <QVector>
#include <QSourceLocation>

$deleteMethod

$prototype=virtual QUrl baseUri ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QUrl|baseUri|const QXmlNodeModelIndex &

$prototype=virtual QXmlNodeModelIndex::DocumentOrder compareOrder ( const QXmlNodeModelIndex & ni1, const QXmlNodeModelIndex & ni2 ) const = 0
$virtualMethod=|QXmlNodeModelIndex::DocumentOrder|compareOrder|const QXmlNodeModelIndex &,const QXmlNodeModelIndex &

$prototype=virtual QUrl documentUri ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QUrl|documentUri|const QXmlNodeModelIndex &

$prototype=virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const = 0
$virtualMethod=|QXmlNodeModelIndex|elementById|const QXmlName &

$prototype=virtual QXmlNodeModelIndex::NodeKind kind ( const QXmlNodeModelIndex & ni ) const = 0
$virtualMethod=|QXmlNodeModelIndex::NodeKind|kind|const QXmlNodeModelIndex &

$prototype=virtual QXmlName name ( const QXmlNodeModelIndex & ni ) const = 0
$virtualMethod=|QXmlName|name|const QXmlNodeModelIndex &

$prototype=virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & n ) const = 0
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NAMESPACEBINDINGS )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QXmlName> list = obj->namespaceBindings ( *PQXMLNODEMODELINDEX(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QXMLNAME" );
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
        hb_itemPutPtr( pItem, (QXmlName *) new QXmlName ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const = 0
HB_FUNC_STATIC( QABSTRACTXMLNODEMODEL_NODESBYIDREF )
{
  QAbstractXmlNodeModel * obj = (QAbstractXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QXmlNodeModelIndex> list = obj->nodesByIdref ( *PQXMLNAME(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QXMLNODEMODELINDEX" );
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
        hb_itemPutPtr( pItem, (QXmlNodeModelIndex *) new QXmlNodeModelIndex ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=virtual QXmlNodeModelIndex root ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QXmlNodeModelIndex|root|const QXmlNodeModelIndex &

$prototype=QSourceLocation sourceLocation ( const QXmlNodeModelIndex & index ) const
$method=|QSourceLocation|sourceLocation|const QXmlNodeModelIndex &

$prototype=virtual QString stringValue ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QString|stringValue|const QXmlNodeModelIndex &

$prototype=virtual QVariant typedValue ( const QXmlNodeModelIndex & node ) const = 0
$virtualMethod=|QVariant|typedValue|const QXmlNodeModelIndex &

#pragma ENDDUMP
