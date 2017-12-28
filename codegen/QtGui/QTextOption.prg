$header

#include "hbclass.ch"

CLASS QTextOption

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD flags
   METHOD setAlignment
   METHOD setFlags
   METHOD setTabArray
   METHOD setTabStop
   METHOD setTextDirection
   METHOD setUseDesignMetrics
   METHOD setWrapMode
   METHOD tabArray
   METHOD tabStop
   METHOD textDirection
   METHOD useDesignMetrics
   METHOD wrapMode

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextOption>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextOption ()
$internalConstructor=|new1|

$prototype=QTextOption ( Qt::Alignment alignment )
$internalConstructor=|new2|Qt::Alignment

$prototype=QTextOption ( const QTextOption & other )
$internalConstructor=|new3|const QTextOption &

//[1]QTextOption ()
//[2]QTextOption ( Qt::Alignment alignment )
//[3]QTextOption ( const QTextOption & other )

HB_FUNC_STATIC( QTEXTOPTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextOption_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextOption_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
  {
    QTextOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=Flags flags () const
$method=|QTextOption::Flags|flags|

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setFlags ( Flags flags )
$method=|void|setFlags|QTextOption::Flags

$prototype=void setTabArray ( QList<qreal> tabStops )
HB_FUNC_STATIC( QTEXTOPTION_SETTABARRAY )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<qreal> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetND(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setTabArray ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setTabStop ( qreal tabStop )
$method=|void|setTabStop|qreal

$prototype=void setTextDirection ( Qt::LayoutDirection direction )
$method=|void|setTextDirection|Qt::LayoutDirection

$prototype=void setUseDesignMetrics ( bool enable )
$method=|void|setUseDesignMetrics|bool

$prototype=void setWrapMode ( WrapMode mode )
$method=|void|setWrapMode|QTextOption::WrapMode

$prototype=QList<qreal> tabArray () const
HB_FUNC_STATIC( QTEXTOPTION_TABARRAY )
{
  QTextOption * obj = (QTextOption *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<qreal> list = obj->tabArray ();
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

$prototype=qreal tabStop () const
$method=|qreal|tabStop|

$prototype=Qt::LayoutDirection textDirection () const
$method=|Qt::LayoutDirection|textDirection|

$prototype=bool useDesignMetrics () const
$method=|bool|useDesignMetrics|

$prototype=WrapMode wrapMode () const
$method=|QTextOption::WrapMode|wrapMode|

$extraMethods

#pragma ENDDUMP
