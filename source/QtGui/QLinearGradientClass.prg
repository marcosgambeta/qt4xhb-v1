/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QLinearGradient INHERIT QGradient

   DATA class_id INIT Class_Id_QLinearGradient
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLinearGradient>

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
QLinearGradient()
*/
HB_FUNC( QLINEARGRADIENT_NEW1 )
{
  QLinearGradient * o = NULL;
  o = new QLinearGradient (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLinearGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLinearGradient(const QPointF &start, const QPointF &finalStop)
*/
HB_FUNC( QLINEARGRADIENT_NEW2 )
{
  QLinearGradient * o = NULL;
  QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLinearGradient ( *par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLinearGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLinearGradient(qreal xStart, qreal yStart, qreal xFinalStop, qreal yFinalStop)
*/
HB_FUNC( QLINEARGRADIENT_NEW3 )
{
  QLinearGradient * o = NULL;
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  o = new QLinearGradient ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLinearGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QLinearGradient()
//[2]QLinearGradient(const QPointF &start, const QPointF &finalStop)
//[3]QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC( QLINEARGRADIENT_NEW )
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

HB_FUNC( QLINEARGRADIENT_DELETE )
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
HB_FUNC( QLINEARGRADIENT_FINALSTOP )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->finalStop (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );  }
}


/*
void setFinalStop ( const QPointF & stop )
*/
HB_FUNC( QLINEARGRADIENT_SETFINALSTOP1 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFinalStop ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFinalStop ( qreal x, qreal y )
*/
HB_FUNC( QLINEARGRADIENT_SETFINALSTOP2 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setFinalStop ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFinalStop ( const QPointF & stop )
//[2]void setFinalStop ( qreal x, qreal y )

HB_FUNC( QLINEARGRADIENT_SETFINALSTOP )
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
HB_FUNC( QLINEARGRADIENT_SETSTART1 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStart ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStart ( qreal x, qreal y )
*/
HB_FUNC( QLINEARGRADIENT_SETSTART2 )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setStart ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setStart ( const QPointF & start )
//[2]void setStart ( qreal x, qreal y )

HB_FUNC( QLINEARGRADIENT_SETSTART )
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
HB_FUNC( QLINEARGRADIENT_START )
{
  QLinearGradient * obj = (QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->start (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );  }
}





#pragma ENDDUMP
