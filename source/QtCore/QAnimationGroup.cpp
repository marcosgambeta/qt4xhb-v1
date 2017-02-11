/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAnimationGroup>

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


HB_FUNC( QANIMATIONGROUP_DELETE )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC( QANIMATIONGROUP_ADDANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractAnimation * animationAt ( int index ) const
*/
HB_FUNC( QANIMATIONGROUP_ANIMATIONAT )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractAnimation * ptr = obj->animationAt ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );  }
}


/*
int animationCount () const
*/
HB_FUNC( QANIMATIONGROUP_ANIMATIONCOUNT )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->animationCount (  );
    hb_retni( i );
  }
}


/*
void clear ()
*/
HB_FUNC( QANIMATIONGROUP_CLEAR )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexOfAnimation ( QAbstractAnimation * animation ) const
*/
HB_FUNC( QANIMATIONGROUP_INDEXOFANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->indexOfAnimation ( par1 );
    hb_retni( i );
  }
}


/*
void insertAnimation ( int index, QAbstractAnimation * animation )
*/
HB_FUNC( QANIMATIONGROUP_INSERTANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractAnimation * par2 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertAnimation ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC( QANIMATIONGROUP_REMOVEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeAnimation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractAnimation *	takeAnimation ( int index )
*/
HB_FUNC( QANIMATIONGROUP_TAKEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QAbstractAnimation * ptr = obj->takeAnimation ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );  }
}



