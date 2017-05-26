/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QEasingCurve

   DATA pointer
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QEasingCurve
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QEasingCurve>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEasingCurve ( Type type = Linear )
*/
HB_FUNC_STATIC( QEASINGCURVE_NEW1 )
{
  QEasingCurve * o = NULL;
  o = new QEasingCurve (  (QEasingCurve::Type) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QEasingCurve ( const QEasingCurve & other )
*/
HB_FUNC_STATIC( QEASINGCURVE_NEW2 )
{
  QEasingCurve * o = NULL;
  QEasingCurve * par1 = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QEasingCurve ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
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
    qreal r = obj->amplitude ();
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
    qreal r = obj->overshoot ();
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
    qreal r = obj->period ();
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
    obj->setAmplitude ( PQREAL(1) );
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
    obj->setOvershoot ( PQREAL(1) );
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
    obj->setPeriod ( PQREAL(1) );
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
    obj->setType (  (QEasingCurve::Type) hb_parni(1) );
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
    hb_retni( (int) obj->type () );
  }
}


HB_FUNC_STATIC( QEASINGCURVE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QEASINGCURVE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QEASINGCURVE_NEWFROM );
}

HB_FUNC_STATIC( QEASINGCURVE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QEASINGCURVE_NEWFROM );
}

HB_FUNC_STATIC( QEASINGCURVE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QEASINGCURVE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
