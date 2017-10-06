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
$virtualMethod=|bool|paint|QPainter *,const QWidget *,int=QDecoration::All,QDecoration::DecorationState=QDecoration::Normal

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
$virtualMethod=|int|regionAt|const QWidget *,const QPoint &

/*
virtual void regionClicked ( QWidget * widget, int region )
*/
$virtualMethod=|void|regionClicked|QWidget *,int

/*
virtual void regionDoubleClicked ( QWidget * widget, int region )
*/
$virtualMethod=|void|regionDoubleClicked|QWidget *,int

/*
static void startMove ( QWidget * widget )
*/
$staticMethod=|void|startMove|QWidget *

/*
static void startResize ( QWidget * widget )
*/
$staticMethod=|void|startResize|QWidget *

$extraMethods

#pragma ENDDUMP
