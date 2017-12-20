$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundedTo
   METHOD expandedTo
   METHOD height
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD scale
   METHOD setHeight
   METHOD setWidth
   METHOD toSize
   METHOD transpose
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSizeF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QSizeF ()
$internalConstructor=|new1|

$prototype=QSizeF ( const QSize & size )
$internalConstructor=|new2|const QSize &

$prototype=QSizeF ( qreal width, qreal height )
$internalConstructor=|new3|qreal,qreal

//[1]QSizeF ()
//[2]QSizeF ( const QSize & size )
//[3]QSizeF ( qreal width, qreal height )

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSizeF_new1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QSizeF_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSizeF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSizeF boundedTo ( const QSizeF & otherSize ) const
$method=|QSizeF|boundedTo|const QSizeF &

$prototype=QSizeF expandedTo ( const QSizeF & otherSize ) const
$method=|QSizeF|expandedTo|const QSizeF &

$prototype=qreal height () const
$method=|qreal|height|

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
$internalMethod=|void|scale,scale1|qreal,qreal,Qt::AspectRatioMode

$prototype=void scale ( const QSizeF & size, Qt::AspectRatioMode mode )
$internalMethod=|void|scale,scale2|const QSizeF &,Qt::AspectRatioMode

//[1]void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSizeF & size, Qt::AspectRatioMode mode )

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSizeF_scale1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QSizeF_scale2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setHeight ( qreal height )
$method=|void|setHeight|qreal

$prototype=void setWidth ( qreal width )
$method=|void|setWidth|qreal

$prototype=QSize toSize () const
$method=|QSize|toSize|

$prototype=void transpose ()
$method=|void|transpose|

$prototype=qreal width () const
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
