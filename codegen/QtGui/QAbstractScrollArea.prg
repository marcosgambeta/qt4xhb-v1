$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSCROLLBAR
REQUEST QSIZE
#endif

CLASS QAbstractScrollArea INHERIT QFrame

   METHOD delete
   METHOD addScrollBarWidget
   METHOD cornerWidget
   METHOD horizontalScrollBar
   METHOD horizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD setCornerWidget
   METHOD setHorizontalScrollBar
   METHOD setHorizontalScrollBarPolicy
   METHOD setVerticalScrollBar
   METHOD setVerticalScrollBarPolicy
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractScrollArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
$method=|void|addScrollBarWidget|QWidget *,Qt::Alignment

$prototype=QWidget * cornerWidget () const
$method=|QWidget *|cornerWidget|

$prototype=QScrollBar * horizontalScrollBar () const
$method=|QScrollBar *|horizontalScrollBar|

$prototype=Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|horizontalScrollBarPolicy|

$prototype=QSize maximumViewportSize () const
$method=|QSize|maximumViewportSize|

$prototype=QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SCROLLBARWIDGETS )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = hb_parni(1);
    QWidgetList list = obj->scrollBarWidgets ( (Qt::Alignment) par1 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWIDGET" );
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
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void setCornerWidget ( QWidget * widget )
$method=|void|setCornerWidget|QWidget *

$prototype=void setHorizontalScrollBar ( QScrollBar * scrollBar )
$method=|void|setHorizontalScrollBar|QScrollBar *

$prototype=void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setHorizontalScrollBarPolicy|Qt::ScrollBarPolicy

$prototype=void setVerticalScrollBar ( QScrollBar * scrollBar )
$method=|void|setVerticalScrollBar|QScrollBar *

$prototype=void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setVerticalScrollBarPolicy|Qt::ScrollBarPolicy

$prototype=void setViewport ( QWidget * widget )
$method=|void|setViewport|QWidget *

$prototype=QScrollBar * verticalScrollBar () const
$method=|QScrollBar *|verticalScrollBar|

$prototype=Qt::ScrollBarPolicy verticalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|verticalScrollBarPolicy|

$prototype=QWidget * viewport () const
$method=|QWidget *|viewport|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
