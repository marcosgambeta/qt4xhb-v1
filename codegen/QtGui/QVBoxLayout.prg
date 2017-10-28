$header

#include "hbclass.ch"

CLASS QVBoxLayout INHERIT QBoxLayout

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QVBoxLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QVBoxLayout ()
*/
$constructor=|new1|

/*
QVBoxLayout ( QWidget * parent )
*/
$constructor=|new2|QWidget *

//[1]QVBoxLayout ()
//[2]QVBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QVBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVBOXLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QVBOXLAYOUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
