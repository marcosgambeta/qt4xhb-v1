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
   METHOD accept1
   METHOD accept2
   METHOD accept3
   METHOD accept
   METHOD activeGestures
   METHOD canceledGestures
   METHOD gesture
   METHOD gestures
   METHOD ignore1
   METHOD ignore2
   METHOD ignore3
   METHOD ignore
   METHOD isAccepted1
   METHOD isAccepted2
   METHOD isAccepted3
   METHOD isAccepted
   METHOD mapToGraphicsScene
   METHOD setAccepted1
   METHOD setAccepted2
   METHOD setAccepted3
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

/*
QGestureEvent ( const QList<QGesture *> & gestures )
*/
HB_FUNC_STATIC( QGESTUREEVENT_NEW )
{
QList<QGesture *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
  QGestureEvent * o = new QGestureEvent ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void accept ()
*/
$method=|void|accept,accept1|

/*
void accept ( QGesture * gesture )
*/
$method=|void|accept,accept2|QGesture *

/*
void accept ( Qt::GestureType gestureType )
*/
$method=|void|accept,accept3|Qt::GestureType

//[1]void accept ()
//[2]void accept ( QGesture * gesture )
//[3]void accept ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ACCEPT1 );
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ACCEPT2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ACCEPT3 );
  }
}

/*
QList<QGesture *> activeGestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_ACTIVEGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGesture *> list = obj->activeGestures ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGESTURE" );
    #else
    pDynSym = hb_dynsymFindName( "QGESTURE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
QList<QGesture *> canceledGestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_CANCELEDGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGesture *> list = obj->canceledGestures ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGESTURE" );
    #else
    pDynSym = hb_dynsymFindName( "QGESTURE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
QGesture * gesture ( Qt::GestureType type ) const
*/
$method=|QGesture *|gesture|Qt::GestureType

/*
QList<QGesture *> gestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_GESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QGesture *> list = obj->gestures ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGESTURE" );
    #else
    pDynSym = hb_dynsymFindName( "QGESTURE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
void ignore ()
*/
$method=|void|ignore,ignore1|

/*
void ignore ( QGesture * gesture )
*/
$method=|void|ignore,ignore2|QGesture *

/*
void ignore ( Qt::GestureType gestureType )
*/
$method=|void|ignore,ignore3|Qt::GestureType

//[1]void ignore ()
//[2]void ignore ( QGesture * gesture )
//[3]void ignore ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_IGNORE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_IGNORE1 );
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_IGNORE2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_IGNORE3 );
  }
}

/*
bool isAccepted () const
*/
$method=|bool|isAccepted,isAccepted1|

/*
bool isAccepted ( QGesture * gesture ) const
*/
$method=|bool|isAccepted,isAccepted2|QGesture *

/*
bool isAccepted ( Qt::GestureType gestureType ) const
*/
$method=|bool|isAccepted,isAccepted3|Qt::GestureType

//[1]bool isAccepted () const
//[2]bool isAccepted ( QGesture * gesture ) const
//[3]bool isAccepted ( Qt::GestureType gestureType ) const

HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ISACCEPTED1 );
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ISACCEPTED2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_ISACCEPTED3 );
  }
}

/*
QPointF mapToGraphicsScene ( const QPointF & gesturePoint ) const
*/
$method=|QPointF|mapToGraphicsScene|const QPointF &

/*
void setAccepted ( bool accepted )
*/
$method=|void|setAccepted,setAccepted1|bool

/*
void setAccepted ( QGesture * gesture, bool value )
*/
$method=|void|setAccepted,setAccepted2|QGesture *,bool

/*
void setAccepted ( Qt::GestureType gestureType, bool value )
*/
$method=|void|setAccepted,setAccepted3|Qt::GestureType,bool

//[1]void setAccepted ( bool accepted )
//[2]void setAccepted ( QGesture * gesture, bool value )
//[3]void setAccepted ( Qt::GestureType gestureType, bool value )

HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED )
{
  if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_SETACCEPTED1 );
  }
  else if( ISNUMPAR(2) && ISQGESTURE(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_SETACCEPTED2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QGESTUREEVENT_SETACCEPTED3 );
  }
}

/*
void setWidget(QWidget *widget)
*/
$method=|void|setWidget|QWidget *

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

#pragma ENDDUMP
