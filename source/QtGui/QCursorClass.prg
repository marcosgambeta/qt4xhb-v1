/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBITMAP
REQUEST QPOINT
REQUEST QPIXMAP

CLASS QCursor

   DATA pointer
   DATA class_id INIT Class_Id_QCursor
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD bitmap
   METHOD hotSpot
   METHOD mask
   METHOD pixmap
   METHOD setShape
   METHOD shape
   METHOD pos
   METHOD setPos1
   METHOD setPos2
   METHOD setPos
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QCursor
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QCursor
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QCursor
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QCursor
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QCursor
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QCursor>

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

#include <QPixmap>

/*
QCursor ()
*/
HB_FUNC( QCURSOR_NEW1 )
{
  QCursor * o = NULL;
  o = new QCursor (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QCursor ( Qt::CursorShape shape )
*/
HB_FUNC( QCURSOR_NEW2 )
{
  QCursor * o = NULL;
  int par1 = hb_parni(1);
  o = new QCursor (  (Qt::CursorShape) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
*/
HB_FUNC( QCURSOR_NEW3 )
{
  QCursor * o = NULL;
  QBitmap * par1 = (QBitmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QBitmap * par2 = (QBitmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  int par4 = ISNIL(4)? -1 : hb_parni(4);
  o = new QCursor ( *par1, *par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
*/
HB_FUNC( QCURSOR_NEW4 )
{
  QCursor * o = NULL;
  QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? -1 : hb_parni(2);
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  o = new QCursor ( *par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QCursor ( const QCursor & c )
*/
HB_FUNC( QCURSOR_NEW5 )
{
  QCursor * o = NULL;
  QCursor * par1 = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QCursor ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCursor *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}




//[1]QCursor ()
//[2]QCursor ( Qt::CursorShape shape )
//[3]QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
//[4]QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
//[5]QCursor ( const QCursor & c )
//[6]QCursor ( HCURSOR cursor )
//[7]QCursor ( Qt::HANDLE handle )

HB_FUNC( QCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISQBITMAP(1) && ISQBITMAP(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW3 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QCURSOR_DELETE )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QBitmap * bitmap () const
*/
HB_FUNC( QCURSOR_BITMAP )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBitmap * ptr = obj->bitmap (  );
    _qt4xhb_createReturnClass ( ptr, "QBITMAP" );  }
}



/*
QPoint hotSpot () const
*/
HB_FUNC( QCURSOR_HOTSPOT )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );  }
}


/*
const QBitmap * mask () const
*/
HB_FUNC( QCURSOR_MASK )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBitmap * ptr = obj->mask (  );
    _qt4xhb_createReturnClass ( ptr, "QBITMAP" );  }
}


/*
QPixmap pixmap () const
*/
HB_FUNC( QCURSOR_PIXMAP )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );  }
}


/*
void setShape ( Qt::CursorShape shape )
*/
HB_FUNC( QCURSOR_SETSHAPE )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShape (  (Qt::CursorShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CursorShape shape () const
*/
HB_FUNC( QCURSOR_SHAPE )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->shape (  );
    hb_retni( i );
  }
}



/*
QPoint pos ()
*/
HB_FUNC( QCURSOR_POS )
{
  QPoint * ptr = new QPoint( QCursor::pos (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPOINT", true );}


/*
void setPos ( int x, int y )
*/
HB_FUNC( QCURSOR_SETPOS1 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QCursor::setPos ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPos ( const QPoint & p )
*/
HB_FUNC( QCURSOR_SETPOS2 )
{
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QCursor::setPos ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setPos ( int x, int y )
//[2]void setPos ( const QPoint & p )

HB_FUNC( QCURSOR_SETPOS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCURSOR_SETPOS1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QCURSOR_SETPOS2 );
  }
}



#pragma ENDDUMP
