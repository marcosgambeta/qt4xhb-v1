/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QAnimationGroup INHERIT QAbstractAnimation

   DATA class_id INIT Class_Id_QAnimationGroup
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addAnimation
   METHOD animationAt
   METHOD animationCount
   METHOD clear
   METHOD indexOfAnimation
   METHOD insertAnimation
   METHOD removeAnimation
   METHOD takeAnimation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QANIMATIONGROUP_DELETE )
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
HB_FUNC_STATIC( QANIMATIONGROUP_ADDANIMATION )
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
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONAT )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * ptr = obj->animationAt ( hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}


/*
int animationCount () const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONCOUNT )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->animationCount (  ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QANIMATIONGROUP_CLEAR )
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
HB_FUNC_STATIC( QANIMATIONGROUP_INDEXOFANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * par1 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->indexOfAnimation ( par1 ) );
  }
}


/*
void insertAnimation ( int index, QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_INSERTANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * par2 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertAnimation ( hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_REMOVEANIMATION )
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
HB_FUNC_STATIC( QANIMATIONGROUP_TAKEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * ptr = obj->takeAnimation ( hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}




#pragma ENDDUMP
