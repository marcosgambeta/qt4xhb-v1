$header

#include "hbclass.ch"

CLASS QTimeEdit INHERIT QDateTimeEdit

   METHOD new1
   METHOD new2
   METHOD new

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTimeEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTimeEdit ( QWidget * parent = 0 )
*/
$constructor=|new1|QWidget *=0

/*
QTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
$constructor=|new2|const QTime &,QWidget *=0

//[1]QTimeEdit ( QWidget * parent = 0 )
//[2]QTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QTIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTIMEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTIMEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
