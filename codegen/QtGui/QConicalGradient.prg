$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QConicalGradient INHERIT QGradient

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD angle
   METHOD center
   METHOD setAngle
   METHOD setCenter1
   METHOD setCenter2
   METHOD setCenter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QConicalGradient>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QConicalGradient()
*/
$constructor=|new1|

/*
QConicalGradient(const QPointF &center, qreal startAngle)
*/
$constructor=|new2|const QPointF &,qreal

/*
QConicalGradient(qreal cx, qreal cy, qreal startAngle)
*/
$constructor=|new3|qreal,qreal,qreal

//[1]QConicalGradient()
//[2]QConicalGradient(const QPointF &center, qreal startAngle)
//[3]QConicalGradient(qreal cx, qreal cy, qreal startAngle)

HB_FUNC_STATIC( QCONICALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal angle () const
*/
$method=|qreal|angle|

/*
QPointF center () const
*/
$method=|QPointF|center|

/*
void setAngle ( qreal angle )
*/
$method=|void|setAngle|qreal

/*
void setCenter ( const QPointF & center )
*/
$method=|void|setCenter,setCenter1|const QPointF &

/*
void setCenter ( qreal x, qreal y )
*/
$method=|void|setCenter,setCenter2|qreal,qreal

//[1]void setCenter ( const QPointF & center )
//[2]void setCenter ( qreal x, qreal y )

HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_SETCENTER1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_SETCENTER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
