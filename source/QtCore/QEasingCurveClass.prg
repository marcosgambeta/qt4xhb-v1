/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QEasingCurve

   DATA pointer
   DATA class_id INIT Class_Id_QEasingCurve
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD amplitude
   METHOD overshoot
   METHOD period
   METHOD setAmplitude
   METHOD setOvershoot
   METHOD setPeriod
   METHOD setType
   METHOD type
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QEasingCurve
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QEasingCurve
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QEasingCurve
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QEasingCurve
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QEasingCurve
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QEasingCurve
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QEasingCurve>

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
QEasingCurve ( Type type = Linear )
*/
HB_FUNC_STATIC( QEASINGCURVE_NEW1 )
{
  QEasingCurve * o = NULL;
  int par1 = hb_parni(1);
  o = new QEasingCurve (  (QEasingCurve::Type) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEasingCurve *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QEasingCurve ( const QEasingCurve & other )
*/
HB_FUNC_STATIC( QEASINGCURVE_NEW2 )
{
  QEasingCurve * o = NULL;
  QEasingCurve * par1 = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QEasingCurve ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEasingCurve *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QEasingCurve(Type type = Linear)
//[2]QEasingCurve(const QEasingCurve & other)

HB_FUNC_STATIC( QEASINGCURVE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QEASINGCURVE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QEASINGCURVE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    HB_FUNC_EXEC( QEASINGCURVE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEASINGCURVE_DELETE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal amplitude () const
*/
HB_FUNC_STATIC( QEASINGCURVE_AMPLITUDE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->amplitude (  );
    hb_retnd( r );
  }
}



/*
qreal overshoot () const
*/
HB_FUNC_STATIC( QEASINGCURVE_OVERSHOOT )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->overshoot (  );
    hb_retnd( r );
  }
}


/*
qreal period () const
*/
HB_FUNC_STATIC( QEASINGCURVE_PERIOD )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->period (  );
    hb_retnd( r );
  }
}


/*
void setAmplitude ( qreal amplitude )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETAMPLITUDE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAmplitude ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setOvershoot ( qreal overshoot )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETOVERSHOOT )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setOvershoot ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeriod ( qreal period )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETPERIOD )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPeriod ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( Type type )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETTYPE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType (  (QEasingCurve::Type) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Type type () const
*/
HB_FUNC_STATIC( QEASINGCURVE_TYPE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}




#pragma ENDDUMP
