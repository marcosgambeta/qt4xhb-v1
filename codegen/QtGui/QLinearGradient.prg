$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QLinearGradient INHERIT QGradient

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop1
   METHOD setFinalStop2
   METHOD setFinalStop
   METHOD setStart1
   METHOD setStart2
   METHOD setStart
   METHOD start

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLinearGradient>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLinearGradient()
*/
$constructor=|new1|

/*
QLinearGradient(const QPointF &start, const QPointF &finalStop)
*/
$constructor=|new2|const QPointF &,const QPointF &

/*
QLinearGradient(qreal xStart, qreal yStart, qreal xFinalStop, qreal yFinalStop)
*/
$constructor=|new3|qreal,qreal,qreal,qreal

//[1]QLinearGradient()
//[2]QLinearGradient(const QPointF &start, const QPointF &finalStop)
//[3]QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QLINEARGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QPointF finalStop () const
*/
$method=|QPointF|finalStop|

/*
void setFinalStop ( const QPointF & stop )
*/
$method=|void|setFinalStop,setFinalStop1|const QPointF &

/*
void setFinalStop ( qreal x, qreal y )
*/
$method=|void|setFinalStop,setFinalStop2|qreal,qreal

//[1]void setFinalStop ( const QPointF & stop )
//[2]void setFinalStop ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETFINALSTOP1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETFINALSTOP2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStart ( const QPointF & start )
*/
$method=|void|setStart,setStart1|const QPointF &

/*
void setStart ( qreal x, qreal y )
*/
$method=|void|setStart,setStart2|qreal,qreal

//[1]void setStart ( const QPointF & start )
//[2]void setStart ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETSTART1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEARGRADIENT_SETSTART2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF start () const
*/
$method=|QPointF|start|

#pragma ENDDUMP
