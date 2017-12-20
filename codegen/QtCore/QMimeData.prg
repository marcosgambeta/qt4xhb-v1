$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QMimeData INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD colorData
   METHOD data
   METHOD formats
   METHOD hasColor
   METHOD hasFormat
   METHOD hasHtml
   METHOD hasImage
   METHOD hasText
   METHOD hasUrls
   METHOD html
   METHOD imageData
   METHOD removeFormat
   METHOD setColorData
   METHOD setData
   METHOD setHtml
   METHOD setImageData
   METHOD setText
   METHOD setUrls
   METHOD text
   METHOD urls

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMimeData>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QUrl>

$prototype=QMimeData ()
$constructor=|new|

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QVariant colorData () const
$method=|QVariant|colorData|

$prototype=QByteArray data ( const QString & mimeType ) const
$method=|QByteArray|data|const QString &

$prototype=virtual QStringList formats () const
$virtualMethod=|QStringList|formats|

$prototype=bool hasColor () const
$method=|bool|hasColor|

$prototype=virtual bool hasFormat ( const QString & mimeType ) const
$virtualMethod=|bool|hasFormat|const QString &

$prototype=bool hasHtml () const
$method=|bool|hasHtml|

$prototype=bool hasImage () const
$method=|bool|hasImage|

$prototype=bool hasText () const
$method=|bool|hasText|

$prototype=bool hasUrls () const
$method=|bool|hasUrls|

$prototype=QString html () const
$method=|QString|html|

$prototype=QVariant imageData () const
$method=|QVariant|imageData|

$prototype=void removeFormat ( const QString & mimeType )
$method=|void|removeFormat|const QString &

$prototype=void setColorData ( const QVariant & color )
$method=|void|setColorData|const QVariant &

$prototype=void setData ( const QString & mimeType, const QByteArray & data )
$method=|void|setData|const QString &,const QByteArray &

$prototype=void setHtml ( const QString & html )
$method=|void|setHtml|const QString &

$prototype=void setImageData ( const QVariant & image )
$method=|void|setImageData|const QVariant &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setUrls ( const QList<QUrl> & urls )
HB_FUNC_STATIC( QMIMEDATA_SETURLS )
{
  QMimeData * obj = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QUrl> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setUrls ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=QString text () const
$method=|QString|text|

$prototype=QList<QUrl> urls () const
HB_FUNC_STATIC( QMIMEDATA_URLS )
{
  QMimeData * obj = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QUrl> list = obj->urls ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
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
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP
