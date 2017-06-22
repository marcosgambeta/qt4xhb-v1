/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QLinearGradient INHERIT QGradient

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop1
   METHOD setFinalStop2
   METHOD setFinalStop
   METHOD setStart1
   METHOD setStart2
   METHOD setStart
   METHOD start
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLinearGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLinearGradient>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLinearGradient()
*/
HB_FUNC_STATIC( QLINEARGRADIENT_NEW1 )
{
  QLinearGradient * o = new QLinearGradient ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QLinearGradient(const QPointF &start, const QPointF &finalStop)
*/
HB_FUNC_STATIC( QLINEARGRADIENT_NEW2 )
{
  QLinearGradient * o = new QLinearGradient ( *PQPOINTF(1), *PQPOINTF(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QLinearGradient(qreal xStart, qreal yStart, qreal xFinalStop, qreal yFinalStop)
*/
HB_FUNC_STATIC( QLINEARGRADIENT_NEW3 )
{
  QLinearGradient * o = new QLinearGradient ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QLinearGradient()
//[2]QLinearGradient(const QPointF &start, const QPointF &finalStop)
//[3]QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QLINEARGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINEARGRADIENT_DELETE )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF finalStop () const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_FINALSTOP )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->finalStop () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setFinalStop ( const QPointF & stop )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP1 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFinalStop ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFinalStop ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP2 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFinalStop ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFinalStop ( const QPointF & stop )
//[2]void setFinalStop ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETFINALSTOP1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETFINALSTOP2 );
  }
}

/*
void setStart ( const QPointF & start )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART1 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStart ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStart ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART2 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStart ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setStart ( const QPointF & start )
//[2]void setStart ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETSTART1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETSTART2 );
  }
}

/*
QPointF start () const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_START )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->start () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}





#pragma ENDDUMP
