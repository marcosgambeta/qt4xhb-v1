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

/*
QColumnView ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QList<int> columnWidths () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_COLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->columnWidths ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
QWidget * previewWidget () const
*/
$method=|QWidget *|previewWidget|

/*
bool resizeGripsVisible () const
*/
$method=|bool|resizeGripsVisible|

/*
void setColumnWidths ( const QList<int> & list )
*/
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

/*
void setPreviewWidget ( QWidget * widget )
*/
$method=|void|setPreviewWidget|QWidget *

/*
void setResizeGripsVisible ( bool visible )
*/
$method=|void|setResizeGripsVisible|bool

/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
$virtualMethod=|QModelIndex|indexAt|const QPoint &

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
$virtualMethod=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

/*
virtual void selectAll ()
*/
$virtualMethod=|void|selectAll|

/*
virtual void setModel ( QAbstractItemModel * model )
*/
$virtualMethod=|void|setModel|QAbstractItemModel *

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$virtualMethod=|void|setRootIndex|const QModelIndex &

/*
virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
*/
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
$virtualMethod=|QRect|visualRect|const QModelIndex &

#pragma ENDDUMP
