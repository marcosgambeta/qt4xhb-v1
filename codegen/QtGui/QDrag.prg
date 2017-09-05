$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QMIMEDATA
REQUEST QPIXMAP
REQUEST QWIDGET
#endif

CLASS QDrag INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD exec1
   METHOD exec2
   METHOD exec
   METHOD hotSpot
   METHOD mimeData
   METHOD pixmap
   METHOD setDragCursor
   METHOD setHotSpot
   METHOD setMimeData
   METHOD setPixmap
   METHOD source
   METHOD target

   METHOD onActionChanged
   METHOD onTargetChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDrag>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPoint>
#include <QPixmap>

/*
QDrag ( QWidget * dragSource )
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
  QDrag * o = new QDrag ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
*/
HB_FUNC_STATIC( QDRAG_EXEC1 )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::MoveAction : hb_parni(1);
    hb_retni( (int) obj->exec ( (Qt::DropActions) par1 ) );
  }
}

/*
Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )
*/
HB_FUNC_STATIC( QDRAG_EXEC2 )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->exec ( (Qt::DropActions) par1, (Qt::DropAction) par2 ) );
  }
}

//[1]Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
//[2]Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDRAG_EXEC1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDRAG_EXEC2 );
  }
}

/*
QPoint hotSpot () const
*/
HB_FUNC_STATIC( QDRAG_HOTSPOT )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QMimeData * mimeData () const
*/
HB_FUNC_STATIC( QDRAG_MIMEDATA )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMimeData * ptr = obj->mimeData ();
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}

/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QDRAG_PIXMAP )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setDragCursor ( const QPixmap & cursor, Qt::DropAction action )
*/
HB_FUNC_STATIC( QDRAG_SETDRAGCURSOR )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setDragCursor ( *PQPIXMAP(1), (Qt::DropAction) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHotSpot ( const QPoint & hotspot )
*/
HB_FUNC_STATIC( QDRAG_SETHOTSPOT )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHotSpot ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData ( QMimeData * data )
*/
HB_FUNC_STATIC( QDRAG_SETMIMEDATA )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setMimeData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QDRAG_SETPIXMAP )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixmap ( *PQPIXMAP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * source () const
*/
HB_FUNC_STATIC( QDRAG_SOURCE )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->source ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * target () const
*/
HB_FUNC_STATIC( QDRAG_TARGET )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->target ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

#pragma ENDDUMP
