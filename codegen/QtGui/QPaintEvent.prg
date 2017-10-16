$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QREGION
#endif

CLASS QPaintEvent INHERIT QEvent

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD rect
   METHOD region

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPaintEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPaintEvent ( const QRegion & paintRegion )
*/
HB_FUNC_STATIC( QPAINTEVENT_NEW1 )
{
  QPaintEvent * o = new QPaintEvent ( *PQREGION(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPaintEvent ( const QRect & paintRect )
*/
HB_FUNC_STATIC( QPAINTEVENT_NEW2 )
{
  QPaintEvent * o = new QPaintEvent ( *PQRECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QPaintEvent ( const QRegion & paintRegion )
//[2]QPaintEvent ( const QRect & paintRect )

HB_FUNC_STATIC( QPAINTEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QPAINTEVENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QPAINTEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QRect & rect () const
*/
$method=|const QRect &|rect|

/*
const QRegion & region () const
*/
$method=|const QRegion &|region|

#pragma ENDDUMP
