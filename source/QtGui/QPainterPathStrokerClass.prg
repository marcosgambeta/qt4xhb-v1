/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTERPATH

CLASS QPainterPathStroker

   DATA pointer
   DATA class_id INIT Class_Id_QPainterPathStroker
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD capStyle
   METHOD createStroke
   METHOD curveThreshold
   METHOD dashOffset
   METHOD dashPattern
   METHOD joinStyle
   METHOD miterLimit
   METHOD setCapStyle
   METHOD setCurveThreshold
   METHOD setDashOffset
   METHOD setDashPattern1
   METHOD setDashPattern2
   METHOD setDashPattern
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setWidth
   METHOD width
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QPainterPathStroker
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPainterPathStroker
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPainterPathStroker
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPainterPathStroker
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPainterPathStroker
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPainterPathStroker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QPainterPathStroker>

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
QPainterPathStroker ()
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEW )
{
  QPainterPathStroker * o = NULL;
  o = new QPainterPathStroker (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainterPathStroker *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QPAINTERPATHSTROKER_DELETE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::PenCapStyle capStyle () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CAPSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->capStyle (  );
    hb_retni( i );
  }
}


/*
QPainterPath createStroke ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CREATESTROKE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainterPath * ptr = new QPainterPath( obj->createStroke ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );  }
}


/*
qreal curveThreshold () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CURVETHRESHOLD )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->curveThreshold (  );
    hb_retnd( r );
  }
}


/*
qreal dashOffset () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHOFFSET )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->dashOffset (  );
    hb_retnd( r );
  }
}


/*
QVector<qreal> dashPattern () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHPATTERN )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<qreal> list = obj->dashPattern (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutND( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
Qt::PenJoinStyle joinStyle () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_JOINSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->joinStyle (  );
    hb_retni( i );
  }
}


/*
qreal miterLimit () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_MITERLIMIT )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->miterLimit (  );
    hb_retnd( r );
  }
}


/*
void setCapStyle ( Qt::PenCapStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCAPSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapStyle (  (Qt::PenCapStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurveThreshold ( qreal threshold )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCURVETHRESHOLD )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCurveThreshold ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashOffset ( qreal offset )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHOFFSET )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDashOffset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashPattern ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN1 )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDashPattern (  (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashPattern ( const QVector<qreal> & dashPattern )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN2 )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QVector<qreal> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetND(aValues1, i1+1);
par1 << temp1;
}
    obj->setDashPattern ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setDashPattern ( Qt::PenStyle style )
//[2]void setDashPattern ( const QVector<qreal> & dashPattern )

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATHSTROKER_SETDASHPATTERN1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATHSTROKER_SETDASHPATTERN2 );
  }
}

/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETJOINSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setJoinStyle (  (Qt::PenJoinStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMiterLimit ( qreal limit )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETMITERLIMIT )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMiterLimit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETWIDTH )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_WIDTH )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->width (  );
    hb_retnd( r );
  }
}




#pragma ENDDUMP
