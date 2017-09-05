$header

#include "hbclass.ch"


CLASS QMargins

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD isNull
   METHOD left
   METHOD right
   METHOD setBottom
   METHOD setLeft
   METHOD setRight
   METHOD setTop
   METHOD top
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMargins>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMargins ()
*/
HB_FUNC_STATIC( QMARGINS_NEW1 )
{
  QMargins * o = new QMargins ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QMARGINS_NEW2 )
{
  QMargins * o = new QMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QMargins ()
//[2]QMargins ( int left, int top, int right, int bottom )

HB_FUNC_STATIC( QMARGINS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMARGINS_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMARGINS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bottom () const
*/
HB_FUNC_STATIC( QMARGINS_BOTTOM )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->bottom () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QMARGINS_ISNULL )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
int left () const
*/
HB_FUNC_STATIC( QMARGINS_LEFT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->left () );
  }
}


/*
int right () const
*/
HB_FUNC_STATIC( QMARGINS_RIGHT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->right () );
  }
}


/*
void setBottom ( int bottom )
*/
HB_FUNC_STATIC( QMARGINS_SETBOTTOM )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBottom ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLeft ( int left )
*/
HB_FUNC_STATIC( QMARGINS_SETLEFT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLeft ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRight ( int right )
*/
HB_FUNC_STATIC( QMARGINS_SETRIGHT )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop ( int Top )
*/
HB_FUNC_STATIC( QMARGINS_SETTOP )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTop ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int top () const
*/
HB_FUNC_STATIC( QMARGINS_TOP )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->top () );
  }
}

$extraMethods

#pragma ENDDUMP
