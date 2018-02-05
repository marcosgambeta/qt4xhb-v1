%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSPLITTERHANDLE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QSplitter INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD childrenCollapsible
   METHOD count
   METHOD getRange
   METHOD handle
   METHOD handleWidth
   METHOD indexOf
   METHOD insertWidget
   METHOD isCollapsible
   METHOD opaqueResize
   METHOD orientation
   METHOD refresh
   METHOD restoreState
   METHOD saveState
   METHOD setChildrenCollapsible
   METHOD setCollapsible
   METHOD setHandleWidth
   METHOD setOpaqueResize
   METHOD setOrientation
   METHOD setSizes
   METHOD setStretchFactor
   METHOD sizes
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onSplitterMoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSplitter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSplitter ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

//[1]QSplitter ( QWidget * parent = 0 )
//[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QSplitter_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QSplitter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addWidget ( QWidget * widget )
$method=|void|addWidget|QWidget *

$prototype=bool childrenCollapsible () const
$method=|bool|childrenCollapsible|

$prototype=int count () const
$method=|int|count|

$prototype=void getRange ( int index, int * min, int * max ) const
$method=|void|getRange|int,int *,int *

$prototype=QSplitterHandle * handle ( int index ) const
$method=|QSplitterHandle *|handle|int

$prototype=int handleWidth () const
$method=|int|handleWidth|

$prototype=int indexOf ( QWidget * widget ) const
$method=|int|indexOf|QWidget *

$prototype=void insertWidget ( int index, QWidget * widget )
$method=|void|insertWidget|int,QWidget *

$prototype=bool isCollapsible ( int index ) const
$method=|bool|isCollapsible|int

$prototype=bool opaqueResize () const
$method=|bool|opaqueResize|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void refresh ()
$method=|void|refresh|

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototype=QByteArray saveState () const
$method=|QByteArray|saveState|

$prototype=void setChildrenCollapsible ( bool )
$method=|void|setChildrenCollapsible|bool

$prototype=void setCollapsible ( int index, bool collapse )
$method=|void|setCollapsible|int,bool

$prototype=void setHandleWidth ( int )
$method=|void|setHandleWidth|int

$prototype=void setOpaqueResize ( bool opaque = true )
$method=|void|setOpaqueResize|bool=true

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setSizes ( const QList<int> & list )
HB_FUNC_STATIC( QSPLITTER_SETSIZES )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
    obj->setSizes ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setStretchFactor ( int index, int stretch )
$method=|void|setStretchFactor|int,int

$prototype=QList<int> sizes () const
HB_FUNC_STATIC( QSPLITTER_SIZES )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->sizes ();
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

$prototype=QWidget * widget ( int index ) const
$method=|QWidget *|widget|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
