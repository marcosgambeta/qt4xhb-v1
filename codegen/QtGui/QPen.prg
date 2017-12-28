$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPen

   DATA pointer
   DATA self_destruction INIT .F.

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

$prototype=QPen ()
$internalConstructor=|new1|

$prototype=QPen ( Qt::PenStyle style )
$internalConstructor=|new2|Qt::PenStyle

$prototype=QPen ( const QColor & color )
$internalConstructor=|new3|const QColor &

$prototype=QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
$internalConstructor=|new4|const QBrush &,qreal,Qt::PenStyle=Qt::SolidLine,Qt::PenCapStyle=Qt::SquareCap,Qt::PenJoinStyle=Qt::BevelJoin

$prototype=QPen ( const QPen & pen )
$internalConstructor=|new5|const QPen &

//[1]QPen ()
//[2]QPen ( Qt::PenStyle style )
//[3]QPen ( const QColor & color )
//[4]QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
//[5]QPen ( const QPen & pen )

HB_FUNC_STATIC( QPEN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPen_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPen_new2();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPen_new3();
  }
  else if( ISBETWEEN(2,5) && ISQBRUSH(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    QPen_new4();
  }
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    QPen_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=Qt::PenCapStyle capStyle () const
$method=|Qt::PenCapStyle|capStyle|

$prototype=QColor color () const
$method=|QColor|color|

$prototype=qreal dashOffset () const
$method=|qreal|dashOffset|

$prototype=QVector<qreal> dashPattern () const
HB_FUNC_STATIC( QPEN_DASHPATTERN )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<qreal> list = obj->dashPattern ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
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

$prototype=bool isCosmetic () const
$method=|bool|isCosmetic|

$prototype=bool isSolid () const
$method=|bool|isSolid|

$prototype=Qt::PenJoinStyle joinStyle () const
$method=|Qt::PenJoinStyle|joinStyle|

$prototype=qreal miterLimit () const
$method=|qreal|miterLimit|

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototype=void setCapStyle ( Qt::PenCapStyle style )
$method=|void|setCapStyle|Qt::PenCapStyle

$prototype=void setColor ( const QColor & color )
$method=|void|setColor|const QColor &

$prototype=void setCosmetic ( bool cosmetic )
$method=|void|setCosmetic|bool

$prototype=void setDashOffset ( qreal offset )
$method=|void|setDashOffset|qreal

$prototype=void setDashPattern ( const QVector<qreal> & pattern )
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

$prototype=void setJoinStyle ( Qt::PenJoinStyle style )
$method=|void|setJoinStyle|Qt::PenJoinStyle

$prototype=void setMiterLimit ( qreal limit )
$method=|void|setMiterLimit|qreal

$prototype=void setStyle ( Qt::PenStyle style )
$method=|void|setStyle|Qt::PenStyle

$prototype=void setWidth ( int width )
$method=|void|setWidth|int

$prototype=void setWidthF ( qreal width )
$method=|void|setWidthF|qreal

$prototype=Qt::PenStyle style () const
$method=|Qt::PenStyle|style|

$prototype=int width () const
$method=|int|width|

$prototype=qreal widthF () const
$method=|qreal|widthF|

$extraMethods

#pragma ENDDUMP
