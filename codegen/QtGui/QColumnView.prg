%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QRECT
#endif

CLASS QColumnView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD columnWidths
   METHOD previewWidget
   METHOD resizeGripsVisible
   METHOD setColumnWidths
   METHOD setPreviewWidget
   METHOD setResizeGripsVisible
   METHOD indexAt
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD sizeHint
   METHOD visualRect

   METHOD onUpdatePreviewWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QColumnView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QColumnView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QList<int> columnWidths () const
HB_FUNC_STATIC( QCOLUMNVIEW_COLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->columnWidths ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QWidget * previewWidget () const
$method=|QWidget *|previewWidget|

$prototype=bool resizeGripsVisible () const
$method=|bool|resizeGripsVisible|

$prototype=void setColumnWidths ( const QList<int> & list )
HB_FUNC_STATIC( QCOLUMNVIEW_SETCOLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetNI(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setColumnWidths ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setPreviewWidget ( QWidget * widget )
$method=|void|setPreviewWidget|QWidget *

$prototype=void setResizeGripsVisible ( bool visible )
$method=|void|setResizeGripsVisible|bool

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

$prototype=virtual void selectAll ()
$virtualMethod=|void|selectAll|

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

#pragma ENDDUMP
