$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD boundedTo
   METHOD expandedTo
   METHOD height
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD scale1
   METHOD scale2
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

/*
QSizeF ()
*/
$constructor=|new1|

/*
QSizeF ( const QSize & size )
*/
$constructor=|new2|const QSize &

/*
QSizeF ( qreal width, qreal height )
*/
$constructor=|new3|qreal,qreal

//[1]QSizeF ()
//[2]QSizeF ( const QSize & size )
//[3]QSizeF ( qreal width, qreal height )

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSizeF boundedTo ( const QSizeF & otherSize ) const
*/
$method=|QSizeF|boundedTo|const QSizeF &

/*
QSizeF expandedTo ( const QSizeF & otherSize ) const
*/
$method=|QSizeF|expandedTo|const QSizeF &

/*
qreal height () const
*/
$method=|qreal|height|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
*/
$method=|void|scale,scale1|qreal,qreal,Qt::AspectRatioMode

/*
void scale ( const QSizeF & size, Qt::AspectRatioMode mode )
*/
$method=|void|scale,scale2|const QSizeF &,Qt::AspectRatioMode

//[1]void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSizeF & size, Qt::AspectRatioMode mode )

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHeight ( qreal height )
*/
$method=|void|setHeight|qreal

/*
void setWidth ( qreal width )
*/
$method=|void|setWidth|qreal

/*
QSize toSize () const
*/
$method=|QSize|toSize|

/*
void transpose ()
*/
$method=|void|transpose|

/*
qreal width () const
*/
$method=|qreal|width|

$extraMethods

#pragma ENDDUMP
