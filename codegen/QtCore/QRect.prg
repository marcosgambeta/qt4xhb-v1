$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QPOINT
REQUEST QSIZE
#endif

CLASS QRect

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD adjust
   METHOD adjusted
   METHOD bottom
   METHOD bottomLeft
   METHOD bottomRight
   METHOD center
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains4
   METHOD contains
   METHOD getCoords
   METHOD getRect
   METHOD height
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD left
   METHOD moveBottom
   METHOD moveBottomLeft
   METHOD moveBottomRight
   METHOD moveCenter
   METHOD moveLeft
   METHOD moveRight
   METHOD moveTo1
   METHOD moveTo2
   METHOD moveTo
   METHOD moveTop
   METHOD moveTopLeft
   METHOD moveTopRight
   METHOD normalized
   METHOD right
   METHOD setBottom
   METHOD setBottomLeft
   METHOD setBottomRight
   METHOD setCoords
   METHOD setHeight
   METHOD setLeft
   METHOD setRect
   METHOD setRight
   METHOD setSize
   METHOD setTop
   METHOD setTopLeft
   METHOD setTopRight
   METHOD setWidth
   METHOD setX
   METHOD setY
   METHOD size
   METHOD top
   METHOD topLeft
   METHOD topRight
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united
   METHOD width
   METHOD x
   METHOD y
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QRect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QRect ()
*/
HB_FUNC_STATIC( QRECT_NEW1 )
{
  QRect * o = new QRect ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRect ( const QPoint & topLeft, const QPoint & bottomRight )
*/
HB_FUNC_STATIC( QRECT_NEW2 )
{
  QRect * o = new QRect ( *PQPOINT(1), *PQPOINT(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRect ( const QPoint & topLeft, const QSize & size )
*/
HB_FUNC_STATIC( QRECT_NEW3 )
{
  QRect * o = new QRect ( *PQPOINT(1), *PQSIZE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRect ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QRECT_NEW4 )
{
  QRect * o = new QRect ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QRect ()
//[2]QRect ( const QPoint & topLeft, const QPoint & bottomRight )
//[3]QRect ( const QPoint & topLeft, const QSize & size )
//[4]QRect ( int x, int y, int width, int height )

HB_FUNC_STATIC( QRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRECT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QRECT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSIZE(2) )
  {
    HB_FUNC_EXEC( QRECT_NEW3 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRECT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRECT_DELETE )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void adjust ( int dx1, int dy1, int dx2, int dy2 )
*/
HB_FUNC_STATIC( QRECT_ADJUST )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->adjust ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect adjusted ( int dx1, int dy1, int dx2, int dy2 ) const
*/
HB_FUNC_STATIC( QRECT_ADJUSTED )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->adjusted ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int bottom () const
*/
HB_FUNC_STATIC( QRECT_BOTTOM )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->bottom () );
  }
}


/*
QPoint bottomLeft () const
*/
HB_FUNC_STATIC( QRECT_BOTTOMLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->bottomLeft () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint bottomRight () const
*/
HB_FUNC_STATIC( QRECT_BOTTOMRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->bottomRight () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint center () const
*/
HB_FUNC_STATIC( QRECT_CENTER )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->center () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
bool contains ( const QPoint & point, bool proper = false ) const
*/
HB_FUNC_STATIC( QRECT_CONTAINS1 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINT(1), OPBOOL(2,false) ) );
  }
}


/*
bool contains ( int x, int y, bool proper ) const
*/
HB_FUNC_STATIC( QRECT_CONTAINS2 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PINT(1), PINT(2), PBOOL(3) ) );
  }
}


/*
bool contains ( int x, int y ) const
*/
HB_FUNC_STATIC( QRECT_CONTAINS3 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PINT(1), PINT(2) ) );
  }
}


/*
bool contains ( const QRect & rectangle, bool proper = false ) const
*/
HB_FUNC_STATIC( QRECT_CONTAINS4 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQRECT(1), OPBOOL(2,false) ) );
  }
}


//[1]bool contains ( const QPoint & point, bool proper = false ) const
//[2]bool contains ( int x, int y, bool proper ) const
//[3]bool contains ( int x, int y ) const
//[4]bool contains ( const QRect & rectangle, bool proper = false ) const

HB_FUNC_STATIC( QRECT_CONTAINS )
{
  if( ISBETWEEN(1,2) && ISQPOINT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISLOG(3) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS3 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QRECT_CONTAINS4 );
  }
}

/*
void getCoords ( int * x1, int * y1, int * x2, int * y2 ) const
*/
HB_FUNC_STATIC( QRECT_GETCOORDS )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getCoords ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getRect ( int * x, int * y, int * width, int * height ) const
*/
HB_FUNC_STATIC( QRECT_GETRECT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getRect ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int height () const
*/
HB_FUNC_STATIC( QRECT_HEIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}


/*
QRect intersected ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_INTERSECTED )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->intersected ( *PQRECT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool intersects ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_INTERSECTS )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->intersects ( *PQRECT(1) ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QRECT_ISEMPTY )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QRECT_ISNULL )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QRECT_ISVALID )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int left () const
*/
HB_FUNC_STATIC( QRECT_LEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->left () );
  }
}


/*
void moveBottom ( int y )
*/
HB_FUNC_STATIC( QRECT_MOVEBOTTOM )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveBottom ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveBottomLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVEBOTTOMLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveBottomLeft ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveBottomRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVEBOTTOMRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveBottomRight ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveCenter ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVECENTER )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveCenter ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveLeft ( int x )
*/
HB_FUNC_STATIC( QRECT_MOVELEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveLeft ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveRight ( int x )
*/
HB_FUNC_STATIC( QRECT_MOVERIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveRight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTo ( int x, int y )
*/
HB_FUNC_STATIC( QRECT_MOVETO1 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveTo ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTo ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVETO2 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveTo ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void moveTo ( int x, int y )
//[2]void moveTo ( const QPoint & position )

HB_FUNC_STATIC( QRECT_MOVETO )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_MOVETO1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRECT_MOVETO2 );
  }
}

/*
void moveTop ( int y )
*/
HB_FUNC_STATIC( QRECT_MOVETOP )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveTop ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTopLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVETOPLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveTopLeft ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTopRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_MOVETOPRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->moveTopRight ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect normalized () const
*/
HB_FUNC_STATIC( QRECT_NORMALIZED )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->normalized () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int right () const
*/
HB_FUNC_STATIC( QRECT_RIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->right () );
  }
}


/*
void setBottom ( int y )
*/
HB_FUNC_STATIC( QRECT_SETBOTTOM )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottom ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBottomLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETBOTTOMLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottomLeft ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBottomRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETBOTTOMRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottomRight ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCoords ( int x1, int y1, int x2, int y2 )
*/
HB_FUNC_STATIC( QRECT_SETCOORDS )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCoords ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight ( int height )
*/
HB_FUNC_STATIC( QRECT_SETHEIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLeft ( int x )
*/
HB_FUNC_STATIC( QRECT_SETLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeft ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRect ( int x, int y, int width, int height )
*/
HB_FUNC_STATIC( QRECT_SETRECT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRect ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRight ( int x )
*/
HB_FUNC_STATIC( QRECT_SETRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSize ( const QSize & size )
*/
HB_FUNC_STATIC( QRECT_SETSIZE )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( int y )
*/
HB_FUNC_STATIC( QRECT_SETTOP )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTop ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTopLeft ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETTOPLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTopLeft ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTopRight ( const QPoint & position )
*/
HB_FUNC_STATIC( QRECT_SETTOPRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTopRight ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( int width )
*/
HB_FUNC_STATIC( QRECT_SETWIDTH )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setX ( int x )
*/
HB_FUNC_STATIC( QRECT_SETX )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY ( int y )
*/
HB_FUNC_STATIC( QRECT_SETY )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QRECT_SIZE )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int top () const
*/
HB_FUNC_STATIC( QRECT_TOP )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->top () );
  }
}


/*
QPoint topLeft () const
*/
HB_FUNC_STATIC( QRECT_TOPLEFT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->topLeft () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint topRight () const
*/
HB_FUNC_STATIC( QRECT_TOPRIGHT )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->topRight () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
void translate ( int dx, int dy )
*/
HB_FUNC_STATIC( QRECT_TRANSLATE1 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate ( const QPoint & offset )
*/
HB_FUNC_STATIC( QRECT_TRANSLATE2 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & offset )

HB_FUNC_STATIC( QRECT_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATE2 );
  }
}

/*
QRect translated ( int dx, int dy ) const
*/
HB_FUNC_STATIC( QRECT_TRANSLATED1 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->translated ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect translated ( const QPoint & offset ) const
*/
HB_FUNC_STATIC( QRECT_TRANSLATED2 )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->translated ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


//[1]QRect translated ( int dx, int dy ) const
//[2]QRect translated ( const QPoint & offset ) const

HB_FUNC_STATIC( QRECT_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QRECT_TRANSLATED2 );
  }
}

/*
QRect united ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QRECT_UNITED )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->united ( *PQRECT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int width () const
*/
HB_FUNC_STATIC( QRECT_WIDTH )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}


/*
int x () const
*/
HB_FUNC_STATIC( QRECT_X )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y () const
*/
HB_FUNC_STATIC( QRECT_Y )
{
  QRect * obj = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->y () );
  }
}

$extraMethods

#pragma ENDDUMP
