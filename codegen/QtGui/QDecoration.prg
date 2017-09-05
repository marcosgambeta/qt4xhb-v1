$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecoration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD buildSysMenu
   METHOD menuTriggered
   METHOD paint
   METHOD region1
   METHOD region2
   METHOD region
   METHOD regionAt
   METHOD regionClicked
   METHOD regionDoubleClicked
   METHOD startMove
   METHOD startResize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDecoration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void buildSysMenu ( QWidget * widget, QMenu * menu )
*/
HB_FUNC_STATIC( QDECORATION_BUILDSYSMENU )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->buildSysMenu ( PQWIDGET(1), PQMENU(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void menuTriggered ( QWidget * widget, QAction * action )
*/
HB_FUNC_STATIC( QDECORATION_MENUTRIGGERED )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->menuTriggered ( PQWIDGET(1), PQACTION(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal ) = 0
*/
HB_FUNC_STATIC( QDECORATION_PAINT )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par2 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) QDecoration::Normal : hb_parni(4);
    RBOOL( obj->paint ( PQPAINTER(1), par2, OPINT(3,QDecoration::All), (QDecoration::DecorationState) par4 ) );
  }
}

/*
virtual QRegion region ( const QWidget * widget, const QRect & rectangle, int decorationRegion = All ) = 0
*/
HB_FUNC_STATIC( QDECORATION_REGION1 )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion * ptr = new QRegion( obj->region ( par1, *PQRECT(2), OPINT(3,QDecoration::All) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QRegion region ( const QWidget * widget, int decorationRegion = All )
*/
HB_FUNC_STATIC( QDECORATION_REGION2 )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion * ptr = new QRegion( obj->region ( par1, OPINT(2,QDecoration::All) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

//[1]virtual QRegion region ( const QWidget * widget, const QRect & rectangle, int decorationRegion = All ) = 0
//[2]QRegion region ( const QWidget * widget, int decorationRegion = All )

HB_FUNC_STATIC( QDECORATION_REGION )
{
  if( ISBETWEEN(2,3) && ISQWIDGET(1) && ISQRECT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECORATION_REGION1 );
  }
  else if( ISBETWEEN(1,2) && ISQWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDECORATION_REGION2 );
  }
}

/*
virtual int regionAt ( const QWidget * widget, const QPoint & point )
*/
HB_FUNC_STATIC( QDECORATION_REGIONAT )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->regionAt ( par1, *PQPOINT(2) ) );
  }
}

/*
virtual void regionClicked ( QWidget * widget, int region )
*/
HB_FUNC_STATIC( QDECORATION_REGIONCLICKED )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->regionClicked ( PQWIDGET(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void regionDoubleClicked ( QWidget * widget, int region )
*/
HB_FUNC_STATIC( QDECORATION_REGIONDOUBLECLICKED )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->regionDoubleClicked ( PQWIDGET(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void startMove ( QWidget * widget )
*/
HB_FUNC_STATIC( QDECORATION_STARTMOVE )
{
  QDecoration::startMove ( PQWIDGET(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void startResize ( QWidget * widget )
*/
HB_FUNC_STATIC( QDECORATION_STARTRESIZE )
{
  QDecoration::startResize ( PQWIDGET(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
