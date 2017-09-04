$header

#include "hbclass.ch"


CLASS QTimer INHERIT QObject

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

$destructor

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
  QTimer * o = new QTimer ( OPQOBJECT(1,0) );
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
    RINT( obj->interval () );
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
    RBOOL( obj->isActive () );
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
    RBOOL( obj->isSingleShot () );
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
    obj->setInterval ( PINT(1) );
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
    RINT( obj->timerId () );
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
    obj->start ( PINT(1) );
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
    obj->start ();
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
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



// Static Public Members

/*
void singleShot ( int msec, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTIMER_SINGLESHOT )
{
  QTimer::singleShot ( PINT(1), PQOBJECT(2), (const char *) hb_parc(3) );
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
