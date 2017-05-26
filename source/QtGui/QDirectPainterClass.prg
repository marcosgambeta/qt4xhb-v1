/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
REQUEST QRECT
REQUEST UCHAR
#endif

CLASS QDirectPainter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allocatedRegion
   METHOD endPainting1
   METHOD endPainting2
   METHOD endPainting
   METHOD flush
   METHOD geometry
   METHOD lower
   METHOD raise
   METHOD regionChanged
   METHOD requestedRegion
   METHOD setGeometry
   METHOD setRegion
   METHOD startPainting
   METHOD frameBuffer
   METHOD linestep
   METHOD lock
   METHOD screenDepth
   METHOD screenHeight
   METHOD screenWidth
   METHOD unlock
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDirectPainter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDirectPainter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDirectPainter ( QObject * parent = 0, SurfaceFlag flag = NonReserved )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_NEW )
{
  QDirectPainter * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDirectPainter::NonReserved : hb_parni(2);
  o = new QDirectPainter ( par1,  (QDirectPainter::SurfaceFlag) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QDIRECTPAINTER_DELETE )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRegion allocatedRegion () const
*/
HB_FUNC_STATIC( QDIRECTPAINTER_ALLOCATEDREGION )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->allocatedRegion () );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
void endPainting ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_ENDPAINTING1 )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->endPainting ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endPainting ( const QRegion & region )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_ENDPAINTING2 )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par1 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->endPainting ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void endPainting ()
//[2]void endPainting ( const QRegion & region )

HB_FUNC_STATIC( QDIRECTPAINTER_ENDPAINTING )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDIRECTPAINTER_ENDPAINTING1 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QDIRECTPAINTER_ENDPAINTING2 );
  }
}

/*
void flush ( const QRegion & region )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_FLUSH )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par1 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->flush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect geometry () const
*/
HB_FUNC_STATIC( QDIRECTPAINTER_GEOMETRY )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->geometry () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void lower ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_LOWER )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->lower ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void raise ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_RAISE )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->raise ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void regionChanged ( const QRegion & newRegion )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_REGIONCHANGED )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par1 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->regionChanged ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRegion requestedRegion () const
*/
HB_FUNC_STATIC( QDIRECTPAINTER_REQUESTEDREGION )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->requestedRegion () );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
void setGeometry ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SETGEOMETRY )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRegion ( const QRegion & region )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SETREGION )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par1 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRegion ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void startPainting ( bool lockDisplay = true )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_STARTPAINTING )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->startPainting ( OPBOOL(1,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
uchar * frameBuffer ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_FRAMEBUFFER )
{
  uchar * ptr = QDirectPainter::frameBuffer ();
  _qt4xhb_createReturnClass ( ptr, "UCHAR" );
}


/*
int linestep ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_LINESTEP )
{
  hb_retni( QDirectPainter::linestep () );
}


/*
void lock ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_LOCK )
{
  QDirectPainter::lock ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int screenDepth ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SCREENDEPTH )
{
  hb_retni( QDirectPainter::screenDepth () );
}


/*
int screenHeight ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SCREENHEIGHT )
{
  hb_retni( QDirectPainter::screenHeight () );
}


/*
int screenWidth ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SCREENWIDTH )
{
  hb_retni( QDirectPainter::screenWidth () );
}


/*
void unlock ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_UNLOCK )
{
  QDirectPainter::unlock ();
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
