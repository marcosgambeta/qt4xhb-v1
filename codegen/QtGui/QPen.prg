$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPen

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD brush
   METHOD capStyle
   METHOD color
   METHOD dashOffset
   METHOD dashPattern
   METHOD isCosmetic
   METHOD isSolid
   METHOD joinStyle
   METHOD miterLimit
   METHOD setBrush
   METHOD setCapStyle
   METHOD setColor
   METHOD setCosmetic
   METHOD setDashOffset
   METHOD setDashPattern
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setStyle
   METHOD setWidth
   METHOD setWidthF
   METHOD style
   METHOD width
   METHOD widthF

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPen>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPen ()
*/
HB_FUNC_STATIC( QPEN_NEW1 )
{
  QPen * o = new QPen ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPen ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPEN_NEW2 )
{
  QPen * o = new QPen ( (Qt::PenStyle) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPen ( const QColor & color )
*/
HB_FUNC_STATIC( QPEN_NEW3 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QPen * o = new QPen ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
*/
HB_FUNC_STATIC( QPEN_NEW4 )
{
  int par3 = ISNIL(3)? (int) Qt::SolidLine : hb_parni(3);
  int par4 = ISNIL(4)? (int) Qt::SquareCap : hb_parni(4);
  int par5 = ISNIL(5)? (int) Qt::BevelJoin : hb_parni(5);
  QPen * o = new QPen ( *PQBRUSH(1), PQREAL(2), (Qt::PenStyle) par3, (Qt::PenCapStyle) par4, (Qt::PenJoinStyle) par5 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QPEN_NEW5 )
{
  QPen * o = new QPen ( *PQPEN(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPen ()
//[2]QPen ( Qt::PenStyle style )
//[3]QPen ( const QColor & color )
//[4]QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
//[5]QPen ( const QPen & pen )

HB_FUNC_STATIC( QPEN_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPEN_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPEN_NEW2 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPEN_NEW3 );
  }
  else if( ISBETWEEN(2,5) && ISQBRUSH(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QPEN_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    HB_FUNC_EXEC( QPEN_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPEN_DELETE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QBrush brush () const
*/
HB_FUNC_STATIC( QPEN_BRUSH )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
Qt::PenCapStyle capStyle () const
*/
HB_FUNC_STATIC( QPEN_CAPSTYLE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->capStyle () );
  }
}

/*
QColor color () const
*/
HB_FUNC_STATIC( QPEN_COLOR )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->color () );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
qreal dashOffset () const
*/
HB_FUNC_STATIC( QPEN_DASHOFFSET )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->dashOffset () );
  }
}

/*
QVector<qreal> dashPattern () const
*/
HB_FUNC_STATIC( QPEN_DASHPATTERN )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<qreal> list = obj->dashPattern ();
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
bool isCosmetic () const
*/
HB_FUNC_STATIC( QPEN_ISCOSMETIC )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCosmetic () );
  }
}

/*
bool isSolid () const
*/
HB_FUNC_STATIC( QPEN_ISSOLID )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSolid () );
  }
}

/*
Qt::PenJoinStyle joinStyle () const
*/
HB_FUNC_STATIC( QPEN_JOINSTYLE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->joinStyle () );
  }
}

/*
qreal miterLimit () const
*/
HB_FUNC_STATIC( QPEN_MITERLIMIT )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->miterLimit () );
  }
}

/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QPEN_SETBRUSH )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCapStyle ( Qt::PenCapStyle style )
*/
HB_FUNC_STATIC( QPEN_SETCAPSTYLE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapStyle ( (Qt::PenCapStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColor ( const QColor & color )
*/
HB_FUNC_STATIC( QPEN_SETCOLOR )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCosmetic ( bool cosmetic )
*/
HB_FUNC_STATIC( QPEN_SETCOSMETIC )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCosmetic ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDashOffset ( qreal offset )
*/
HB_FUNC_STATIC( QPEN_SETDASHOFFSET )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDashOffset ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDashPattern ( const QVector<qreal> & pattern )
*/
HB_FUNC_STATIC( QPEN_SETDASHPATTERN )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
HB_FUNC_STATIC( QPEN_SETJOINSTYLE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setJoinStyle ( (Qt::PenJoinStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMiterLimit ( qreal limit )
*/
HB_FUNC_STATIC( QPEN_SETMITERLIMIT )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMiterLimit ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStyle ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPEN_SETSTYLE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle ( (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidth ( int width )
*/
HB_FUNC_STATIC( QPEN_SETWIDTH )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidthF ( qreal width )
*/
HB_FUNC_STATIC( QPEN_SETWIDTHF )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWidthF ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::PenStyle style () const
*/
HB_FUNC_STATIC( QPEN_STYLE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->style () );
  }
}

/*
int width () const
*/
HB_FUNC_STATIC( QPEN_WIDTH )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}

/*
qreal widthF () const
*/
HB_FUNC_STATIC( QPEN_WIDTHF )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->widthF () );
  }
}

$extraMethods

#pragma ENDDUMP
