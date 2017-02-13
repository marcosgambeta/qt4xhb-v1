/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QANIMATIONGROUP

CLASS QAbstractAnimation INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractAnimation
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD currentLoop
   METHOD currentLoopTime
   METHOD currentTime
   METHOD direction
   METHOD duration
   METHOD group
   METHOD loopCount
   METHOD setDirection
   METHOD setLoopCount
   METHOD state
   METHOD totalDuration
   METHOD pause
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop
   METHOD onCurrentLoopChanged
   METHOD onDirectionChanged
   METHOD onFinished
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractAnimation>

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


HB_FUNC( QABSTRACTANIMATION_DELETE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int currentLoop () const
*/
HB_FUNC( QABSTRACTANIMATION_CURRENTLOOP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentLoop (  );
    hb_retni( i );
  }
}


/*
int currentLoopTime () const
*/
HB_FUNC( QABSTRACTANIMATION_CURRENTLOOPTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentLoopTime (  );
    hb_retni( i );
  }
}


/*
int currentTime () const
*/
HB_FUNC( QABSTRACTANIMATION_CURRENTTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentTime (  );
    hb_retni( i );
  }
}


/*
Direction direction () const
*/
HB_FUNC( QABSTRACTANIMATION_DIRECTION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->direction (  );
    hb_retni( i );
  }
}


/*
virtual int duration () const = 0
*/
HB_FUNC( QABSTRACTANIMATION_DURATION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->duration (  );
    hb_retni( i );
  }
}


/*
QAnimationGroup * group () const
*/
HB_FUNC( QABSTRACTANIMATION_GROUP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAnimationGroup * ptr = obj->group (  );
    _qt4xhb_createReturnClass ( ptr, "QANIMATIONGROUP" );  }
}


/*
int loopCount () const
*/
HB_FUNC( QABSTRACTANIMATION_LOOPCOUNT )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->loopCount (  );
    hb_retni( i );
  }
}


/*
void  setDirection ( Direction direction )
*/
HB_FUNC( QABSTRACTANIMATION_SETDIRECTION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDirection (  (QAbstractAnimation::Direction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLoopCount ( int loopCount )
*/
HB_FUNC( QABSTRACTANIMATION_SETLOOPCOUNT )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLoopCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state () const
*/
HB_FUNC( QABSTRACTANIMATION_STATE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
int totalDuration () const
*/
HB_FUNC( QABSTRACTANIMATION_TOTALDURATION )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->totalDuration (  );
    hb_retni( i );
  }
}


/*
void pause ()
*/
HB_FUNC( QABSTRACTANIMATION_PAUSE )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->pause (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume ()
*/
HB_FUNC( QABSTRACTANIMATION_RESUME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentTime ( int msecs )
*/
HB_FUNC( QABSTRACTANIMATION_SETCURRENTTIME )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentTime ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused ( bool paused )
*/
HB_FUNC( QABSTRACTANIMATION_SETPAUSED )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setPaused ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
*/
HB_FUNC( QABSTRACTANIMATION_START )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QAbstractAnimation::KeepWhenStopped : hb_parni(1);
    obj->start (  (QAbstractAnimation::DeletionPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC( QABSTRACTANIMATION_STOP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
