/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QElapsedTimer

   DATA pointer
   DATA class_id INIT Class_Id_QElapsedTimer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD elapsed
   METHOD hasExpired
   METHOD invalidate
   METHOD isValid
   METHOD msecsSinceReference
   METHOD msecsTo
   METHOD nsecsElapsed
   METHOD restart
   METHOD secsTo
   METHOD start
   METHOD clockType
   METHOD isMonotonic
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QElapsedTimer
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QElapsedTimer
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QElapsedTimer
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QElapsedTimer
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QElapsedTimer
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QElapsedTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QElapsedTimer>

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
QElapsedTimer()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NEW )
{
  QElapsedTimer * o = NULL;
  o = new QElapsedTimer (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QElapsedTimer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QELAPSEDTIMER_DELETE )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qint64 elapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->elapsed (  );
    hb_retni( i );
  }
}


/*
bool hasExpired(qint64 timeout) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_HASEXPIRED )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    bool b = obj->hasExpired ( par1 );
    hb_retl( b );
  }
}


/*
void invalidate()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_INVALIDATE )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISVALID )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
qint64 msecsSinceReference() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSSINCEREFERENCE )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->msecsSinceReference (  );
    hb_retni( i );
  }
}


/*
qint64 msecsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QElapsedTimer * par1 = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 i = obj->msecsTo ( *par1 );
    hb_retni( i );
  }
}


/*
qint64 nsecsElapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NSECSELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->nsecsElapsed (  );
    hb_retni( i );
  }
}


/*
qint64 restart()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_RESTART )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->restart (  );
    hb_retni( i );
  }
}


/*
qint64 secsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_SECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QElapsedTimer * par1 = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 i = obj->secsTo ( *par1 );
    hb_retni( i );
  }
}


/*
void start()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_START )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
ClockType clockType()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_CLOCKTYPE )
{
  int i = QElapsedTimer::clockType (  );
  hb_retni( i );
}


/*
bool isMonotonic()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISMONOTONIC )
{
  bool b = QElapsedTimer::isMonotonic (  );
  hb_retl( b );
}




#pragma ENDDUMP
