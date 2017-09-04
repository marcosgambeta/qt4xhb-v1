$header

#include "hbclass.ch"


CLASS QPoint

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD manhattanLength
   METHOD setX
   METHOD setY
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

#include <QPoint>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPoint()
*/
HB_FUNC_STATIC( QPOINT_NEW1 )
{
  QPoint * o = new QPoint ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QPoint(int xpos, int ypos)
*/
HB_FUNC_STATIC( QPOINT_NEW2 )
{
  QPoint * o = new QPoint ( PINT(1), PINT(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QPoint()
//[2]QPoint(int xpos, int ypos)

HB_FUNC_STATIC( QPOINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOINT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOINT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPOINT_DELETE )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QPOINT_ISNULL )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
int manhattanLength() const
*/
HB_FUNC_STATIC( QPOINT_MANHATTANLENGTH )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->manhattanLength () );
  }
}




/*
void setX(int x)
*/
HB_FUNC_STATIC( QPOINT_SETX )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(int y)
*/
HB_FUNC_STATIC( QPOINT_SETY )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int x() const
*/
HB_FUNC_STATIC( QPOINT_X )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QPOINT_Y )
{
  QPoint * obj = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->y () );
  }
}

$extraMethods

#pragma ENDDUMP
