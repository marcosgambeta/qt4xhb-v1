/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT
REQUEST QMIMEDATA
REQUEST QPIXMAP
REQUEST QWIDGET

CLASS QDrag INHERIT QObject

   DATA class_id INIT Class_Id_QDrag
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QDrag
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDrag>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QPoint>
#include <QPixmap>

/*
QDrag ( QWidget * dragSource )
*/
HB_FUNC( QDRAG_NEW )
{
  QDrag * o = NULL;
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDrag ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDrag *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QDRAG_DELETE )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
*/
HB_FUNC( QDRAG_EXEC1 )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::MoveAction : hb_parni(1);
    int i = obj->exec (  (Qt::DropActions) par1 );
    hb_retni( i );
  }
}


/*
Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )
*/
HB_FUNC( QDRAG_EXEC2 )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int i = obj->exec (  (Qt::DropActions) par1,  (Qt::DropAction) par2 );
    hb_retni( i );
  }
}


//[1]Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
//[2]Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )

HB_FUNC( QDRAG_EXEC )
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
HB_FUNC( QDRAG_HOTSPOT )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );  }
}


/*
QMimeData * mimeData () const
*/
HB_FUNC( QDRAG_MIMEDATA )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMimeData * ptr = obj->mimeData (  );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );  }
}


/*
QPixmap pixmap () const
*/
HB_FUNC( QDRAG_PIXMAP )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
void setDragCursor ( const QPixmap & cursor, Qt::DropAction action )
*/
HB_FUNC( QDRAG_SETDRAGCURSOR )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setDragCursor ( *par1,  (Qt::DropAction) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHotSpot ( const QPoint & hotspot )
*/
HB_FUNC( QDRAG_SETHOTSPOT )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHotSpot ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMimeData ( QMimeData * data )
*/
HB_FUNC( QDRAG_SETMIMEDATA )
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
HB_FUNC( QDRAG_SETPIXMAP )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * source () const
*/
HB_FUNC( QDRAG_SOURCE )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->source (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
QWidget * target () const
*/
HB_FUNC( QDRAG_TARGET )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->target (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}





#pragma ENDDUMP
