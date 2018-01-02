$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGESTURE
REQUEST QPOINTF
REQUEST QWIDGET
#endif

CLASS QGestureEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD accept
   METHOD activeGestures
   METHOD canceledGestures
   METHOD gesture
   METHOD gestures
   METHOD ignore
   METHOD isAccepted
   METHOD mapToGraphicsScene
   METHOD setAccepted
   METHOD setWidget
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGestureEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QGesture>

$prototype=QGestureEvent ( const QList<QGesture *> & gestures )
HB_FUNC_STATIC( QGESTUREEVENT_NEW )
{
  QList<QGesture *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QGestureEvent * o = new QGestureEvent ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=void accept ()
$internalMethod=|void|accept,accept1|

$prototype=void accept ( QGesture * gesture )
$internalMethod=|void|accept,accept2|QGesture *

$prototype=void accept ( Qt::GestureType gestureType )
$internalMethod=|void|accept,accept3|Qt::GestureType

//[1]void accept ()
//[2]void accept ( QGesture * gesture )
//[3]void accept ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_accept1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_accept2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_accept3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QList<QGesture *> activeGestures () const
HB_FUNC_STATIC( QGESTUREEVENT_ACTIVEGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGesture *> list = obj->activeGestures ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGESTURE" );
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
        hb_itemPutPtr( pItem, (QGesture *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QGesture *> canceledGestures () const
HB_FUNC_STATIC( QGESTUREEVENT_CANCELEDGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGesture *> list = obj->canceledGestures ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGESTURE" );
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
        hb_itemPutPtr( pItem, (QGesture *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QGesture * gesture ( Qt::GestureType type ) const
$method=|QGesture *|gesture|Qt::GestureType

$prototype=QList<QGesture *> gestures () const
HB_FUNC_STATIC( QGESTUREEVENT_GESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGesture *> list = obj->gestures ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QGESTURE" );
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
        hb_itemPutPtr( pItem, (QGesture *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void ignore ()
$internalMethod=|void|ignore,ignore1|

$prototype=void ignore ( QGesture * gesture )
$internalMethod=|void|ignore,ignore2|QGesture *

$prototype=void ignore ( Qt::GestureType gestureType )
$internalMethod=|void|ignore,ignore3|Qt::GestureType

//[1]void ignore ()
//[2]void ignore ( QGesture * gesture )
//[3]void ignore ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_IGNORE )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_ignore1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_ignore2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_ignore3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isAccepted () const
$internalMethod=|bool|isAccepted,isAccepted1|

$prototype=bool isAccepted ( QGesture * gesture ) const
$internalMethod=|bool|isAccepted,isAccepted2|QGesture *

$prototype=bool isAccepted ( Qt::GestureType gestureType ) const
$internalMethod=|bool|isAccepted,isAccepted3|Qt::GestureType

//[1]bool isAccepted () const
//[2]bool isAccepted ( QGesture * gesture ) const
//[3]bool isAccepted ( Qt::GestureType gestureType ) const

HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_isAccepted1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_isAccepted2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_isAccepted3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPointF mapToGraphicsScene ( const QPointF & gesturePoint ) const
$method=|QPointF|mapToGraphicsScene|const QPointF &

$prototype=void setAccepted ( bool accepted )
$internalMethod=|void|setAccepted,setAccepted1|bool

$prototype=void setAccepted ( QGesture * gesture, bool value )
$internalMethod=|void|setAccepted,setAccepted2|QGesture *,bool

$prototype=void setAccepted ( Qt::GestureType gestureType, bool value )
$internalMethod=|void|setAccepted,setAccepted3|Qt::GestureType,bool

//[1]void setAccepted ( bool accepted )
//[2]void setAccepted ( QGesture * gesture, bool value )
//[3]void setAccepted ( Qt::GestureType gestureType, bool value )

HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED )
{
  if( ISNUMPAR(1) && ISLOG(1) )
  {
    QGestureEvent_setAccepted1();
  }
  else if( ISNUMPAR(2) && ISQGESTURE(1) && ISLOG(2) )
  {
    QGestureEvent_setAccepted2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QGestureEvent_setAccepted3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setWidget(QWidget *widget)
$method=|void|setWidget|QWidget *

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

#pragma ENDDUMP
