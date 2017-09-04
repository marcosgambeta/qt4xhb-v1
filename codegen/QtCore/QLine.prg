$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QLINE
#endif

CLASS QLine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD p1
   METHOD p2
   METHOD x1
   METHOD x2
   METHOD y1
   METHOD y2
   METHOD dx
   METHOD dy
   METHOD isNull
   METHOD setP1
   METHOD setP2
   METHOD setLine
   METHOD setPoints
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLine()
*/
HB_FUNC_STATIC( QLINE_NEW1 )
{
  QLine * o = new QLine ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QLine(const QPoint & p1, const QPoint & p2)
*/
HB_FUNC_STATIC( QLINE_NEW2 )
{
  QLine * o = new QLine ( *PQPOINT(1), *PQPOINT(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QLine(int x1, int y1, int x2, int y2)
*/
HB_FUNC_STATIC( QLINE_NEW3 )
{
  QLine * o = new QLine ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QLine()
//[2]QLine(const QPoint & p1, const QPoint & p2)
//[3]QLine(int x1, int y1, int x2, int y2)

HB_FUNC_STATIC( QLINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLINE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QLINE_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINE_DELETE )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPoint p1() const
*/
HB_FUNC_STATIC( QLINE_P1 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->p1 () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint p2() const
*/
HB_FUNC_STATIC( QLINE_P2 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->p2 () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int x1() const
*/
HB_FUNC_STATIC( QLINE_X1 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->x1 () );
  }
}


/*
int x2() const
*/
HB_FUNC_STATIC( QLINE_X2 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->x2 () );
  }
}


/*
int y1() const
*/
HB_FUNC_STATIC( QLINE_Y1 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->y1 () );
  }
}


/*
int y2() const
*/
HB_FUNC_STATIC( QLINE_Y2 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->y2 () );
  }
}


/*
int dx() const
*/
HB_FUNC_STATIC( QLINE_DX )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dx () );
  }
}


/*
int dy() const
*/
HB_FUNC_STATIC( QLINE_DY )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dy () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QLINE_ISNULL )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
void setP1(const QPoint & p1)
*/
HB_FUNC_STATIC( QLINE_SETP1 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setP1 ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setP2(const QPoint & p2)
*/
HB_FUNC_STATIC( QLINE_SETP2 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setP2 ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLine(int x1, int y1, int x2, int y2)
*/
HB_FUNC_STATIC( QLINE_SETLINE )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLine ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPoints(const QPoint & p1, const QPoint & p2)
*/
HB_FUNC_STATIC( QLINE_SETPOINTS )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPoints ( *PQPOINT(1), *PQPOINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPoint & offset)
*/
HB_FUNC_STATIC( QLINE_TRANSLATE1 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(int dx, int dy)
*/
HB_FUNC_STATIC( QLINE_TRANSLATE2 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate(const QPoint & offset)
//[2]void translate(int dx, int dy)

HB_FUNC_STATIC( QLINE_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATE2 );
  }
}

/*
QLine translated(const QPoint & offset) const
*/
HB_FUNC_STATIC( QLINE_TRANSLATED1 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLine * ptr = new QLine( obj->translated ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QLINE", true );
  }
}


/*
QLine translated(int dx, int dy) const
*/
HB_FUNC_STATIC( QLINE_TRANSLATED2 )
{
  QLine * obj = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLine * ptr = new QLine( obj->translated ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QLINE", true );
  }
}


//[1]QLine translated(const QPoint & offset) const
//[2]QLine translated(int dx, int dy) const

HB_FUNC_STATIC( QLINE_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINE_TRANSLATED2 );
  }
}

$extraMethods

#pragma ENDDUMP
