/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   DATA class_id INIT Class_Id_QSequentialAnimationGroup
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration
   METHOD onCurrentAnimationChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSequentialAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSequentialAnimationGroup>

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
QSequentialAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_NEW )
{
  QSequentialAnimationGroup * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSequentialAnimationGroup ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSequentialAnimationGroup *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DELETE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPauseAnimation * addPause ( int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_ADDPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QPauseAnimation * ptr = obj->addPause ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
  }
}


/*
QAbstractAnimation * currentAnimation () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_CURRENTANIMATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractAnimation * ptr = obj->currentAnimation (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}


/*
QPauseAnimation * insertPause ( int index, int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_INSERTPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QPauseAnimation * ptr = obj->insertPause ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
  }
}


/*
virtual int duration () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DURATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->duration (  );
    hb_retni( i );
  }
}






#pragma ENDDUMP
