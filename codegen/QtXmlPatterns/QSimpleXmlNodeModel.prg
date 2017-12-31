$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLNAMEPOOL
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
#endif

CLASS QSimpleXmlNodeModel INHERIT QAbstractXmlNodeModel

   METHOD delete
   METHOD namePool
   METHOD baseUri
   METHOD elementById
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD stringValue

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSimpleXmlNodeModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector>

$deleteMethod

$prototype=QXmlNamePool & namePool () const
$method=|QXmlNamePool &|namePool|

$prototype=virtual QUrl baseUri ( const QXmlNodeModelIndex & node ) const
$virtualMethod=|QUrl|baseUri|const QXmlNodeModelIndex &

$prototype=virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const
$virtualMethod=|QXmlNodeModelIndex|elementById|const QXmlName &

$prototype=virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & node ) const
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NAMESPACEBINDINGS )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

$prototype=virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NODESBYIDREF )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QXmlNodeModelIndex> list = obj->nodesByIdref ( *PQXMLNAME(1) );
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QXMLNODEMODELINDEX" );
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

$prototype=virtual QString stringValue ( const QXmlNodeModelIndex & node ) const
$virtualMethod=|QString|stringValue|const QXmlNodeModelIndex &

#pragma ENDDUMP
