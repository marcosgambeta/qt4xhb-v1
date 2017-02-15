/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QREGION

CLASS QDecoration

   DATA pointer
   DATA class_id INIT Class_Id_QDecoration
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QDecoration
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDecoration
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDecoration
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDecoration
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDecoration
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDecoration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDecoration>

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


HB_FUNC_STATIC( QDECORATION_DELETE )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void buildSysMenu ( QWidget * widget, QMenu * menu )
*/
HB_FUNC_STATIC( QDECORATION_BUILDSYSMENU )
{
  QDecoration * obj = (QDecoration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMenu * par2 = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->buildSysMenu ( par1, par2 );
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
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * par2 = (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->menuTriggered ( par1, par2 );
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
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QWidget * par2 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? QDecoration::All : hb_parni(3);
    int par4 = ISNIL(4)? (int) QDecoration::Normal : hb_parni(4);
    bool b = obj->paint ( par1, par2, par3,  (QDecoration::DecorationState) par4 );
    hb_retl( b );
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
    QRect * par2 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? QDecoration::All : hb_parni(3);
    QRegion * ptr = new QRegion( obj->region ( par1, *par2, par3 ) );
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
    int par2 = ISNIL(2)? QDecoration::All : hb_parni(2);
    QRegion * ptr = new QRegion( obj->region ( par1, par2 ) );
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
    QPoint * par2 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->regionAt ( par1, *par2 );
    hb_retni( i );
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
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->regionClicked ( par1, par2 );
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
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->regionDoubleClicked ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void startMove ( QWidget * widget )
*/
HB_FUNC_STATIC( QDECORATION_STARTMOVE )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDecoration::startMove ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void startResize ( QWidget * widget )
*/
HB_FUNC_STATIC( QDECORATION_STARTRESIZE )
{
  QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QDecoration::startResize ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
