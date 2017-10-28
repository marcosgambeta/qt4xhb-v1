$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QScrollBar INHERIT QAbstractSlider

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScrollBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScrollBar ( QWidget * parent = 0 )
*/
$constructor=|new1|QWidget *=0

/*
QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
$constructor=|new2|Qt::Orientation,QWidget *=0

//[1]QScrollBar ( QWidget * parent = 0 )
//[2]QScrollBar ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSCROLLBAR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSCROLLBAR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSCROLLBAR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual bool event ( QEvent * event )
*/
$virtualMethod=|bool|event|QEvent *

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
