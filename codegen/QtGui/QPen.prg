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

$deleteMethod

/*
QBrush brush () const
*/
$method=|QBrush|brush|

/*
Qt::PenCapStyle capStyle () const
*/
$method=|Qt::PenCapStyle|capStyle|

/*
QColor color () const
*/
$method=|QColor|color|

/*
qreal dashOffset () const
*/
$method=|qreal|dashOffset|

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
$method=|bool|isCosmetic|

/*
bool isSolid () const
*/
$method=|bool|isSolid|

/*
Qt::PenJoinStyle joinStyle () const
*/
$method=|Qt::PenJoinStyle|joinStyle|

/*
qreal miterLimit () const
*/
$method=|qreal|miterLimit|

/*
void setBrush ( const QBrush & brush )
*/
$method=|void|setBrush|const QBrush &

/*
void setCapStyle ( Qt::PenCapStyle style )
*/
$method=|void|setCapStyle|Qt::PenCapStyle

/*
void setColor ( const QColor & color )
*/
$method=|void|setColor|const QColor &

/*
void setCosmetic ( bool cosmetic )
*/
$method=|void|setCosmetic|bool

/*
void setDashOffset ( qreal offset )
*/
$method=|void|setDashOffset|qreal

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
$method=|void|setJoinStyle|Qt::PenJoinStyle

/*
void setMiterLimit ( qreal limit )
*/
$method=|void|setMiterLimit|qreal

/*
void setStyle ( Qt::PenStyle style )
*/
$method=|void|setStyle|Qt::PenStyle

/*
void setWidth ( int width )
*/
$method=|void|setWidth|int

/*
void setWidthF ( qreal width )
*/
$method=|void|setWidthF|qreal

/*
Qt::PenStyle style () const
*/
$method=|Qt::PenStyle|style|

/*
int width () const
*/
$method=|int|width|

/*
qreal widthF () const
*/
$method=|qreal|widthF|

$extraMethods

#pragma ENDDUMP
