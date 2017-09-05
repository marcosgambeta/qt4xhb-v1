$header

#include "hbclass.ch"

CLASS QHBoxLayout INHERIT QBoxLayout

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHBoxLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHBoxLayout ()
*/
HB_FUNC_STATIC( QHBOXLAYOUT_NEW1 )
{
  QHBoxLayout * o = new QHBoxLayout ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QHBoxLayout ( QWidget * parent )
*/
HB_FUNC_STATIC( QHBOXLAYOUT_NEW2 )
{
  QHBoxLayout * o = new QHBoxLayout ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QHBoxLayout ()
//[2]QHBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QHBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHBOXLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QHBOXLAYOUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
