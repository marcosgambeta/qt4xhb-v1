/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QMargins

   DATA pointer
   DATA class_id INIT Class_Id_QMargins
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QMargins
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMargins
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMargins
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMargins
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMargins
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMargins
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMargins>

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

/*
QMargins ()
*/
HB_FUNC_STATIC( QMARGINS_NEW1 )
{
  QMargins * o = NULL;
  o = new QMargins (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMargins *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QMARGINS_NEW2 )
{
  QMargins * o = NULL;
  o = new QMargins ( hb_parni(1), hb_parni(2), hb_parni(3), hb_parni(4) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMargins *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QMARGINS_DELETE )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottom () const
*/
HB_FUNC_STATIC( QMARGINS_BOTTOM )
{
  QMargins * obj = (QMargins *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->bottom (  ) );
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
    hb_retl( obj->isNull (  ) );
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
    hb_retni( obj->left (  ) );
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
    hb_retni( obj->right (  ) );
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
    obj->setBottom ( hb_parni(1) );
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
    obj->setLeft ( hb_parni(1) );
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
    obj->setRight ( hb_parni(1) );
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
    obj->setTop ( hb_parni(1) );
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
    hb_retni( obj->top (  ) );
  }
}




#pragma ENDDUMP
