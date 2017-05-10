/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTimer INHERIT QObject

   DATA class_id INIT Class_Id_QTimer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start1
   METHOD start2
   METHOD start
   METHOD stop
   METHOD singleShot
   METHOD onTimeout
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTimer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTIMER_NEW )
{
  QTimer * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTimer ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QTIMER_DELETE )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int interval () const
*/
HB_FUNC_STATIC( QTIMER_INTERVAL )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->interval (  ) );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QTIMER_ISACTIVE )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
bool isSingleShot () const
*/
HB_FUNC_STATIC( QTIMER_ISSINGLESHOT )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSingleShot (  ) );
  }
}


/*
void setInterval ( int msec )
*/
HB_FUNC_STATIC( QTIMER_SETINTERVAL )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInterval ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSingleShot ( bool singleShot )
*/
HB_FUNC_STATIC( QTIMER_SETSINGLESHOT )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSingleShot ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int timerId () const
*/
HB_FUNC_STATIC( QTIMER_TIMERID )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->timerId (  ) );
  }
}


// Public Slots

/*
void start ( int msec )
*/
HB_FUNC_STATIC( QTIMER_START1 )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->start ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ()
*/
HB_FUNC_STATIC( QTIMER_START2 )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void start ( int msec )
//[2]void start ()

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIMER_START2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMER_START1 );
  }
}

/*
void stop ()
*/
HB_FUNC_STATIC( QTIMER_STOP )
{
  QTimer * obj = (QTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



// Static Public Members

/*
void singleShot ( int msec, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTIMER_SINGLESHOT )
{
  int par1 = hb_parni(1);
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par3 = hb_parc(3);
  QTimer::singleShot ( par1, par2,  (const char *) par3 );
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
