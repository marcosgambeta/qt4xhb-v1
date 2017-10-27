$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedLayout INHERIT QLayout

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStackedLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStackedLayout ()
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW1 )
{
  QStackedLayout * o = new QStackedLayout ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QStackedLayout ( QWidget * parent )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW2 )
{
  QStackedLayout * o = new QStackedLayout ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QStackedLayout ( QLayout * parentLayout )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW3 )
{
  QStackedLayout * o = new QStackedLayout ( PQLAYOUT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int addWidget ( QWidget * widget )
*/
$method=|int|addWidget|QWidget *

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
QWidget * currentWidget () const
*/
$method=|QWidget *|currentWidget|

/*
int insertWidget ( int index, QWidget * widget )
*/
$method=|int|insertWidget|int,QWidget *

/*
void setStackingMode ( StackingMode stackingMode )
*/
$method=|void|setStackingMode|QStackedLayout::StackingMode

/*
StackingMode stackingMode () const
*/
$method=|QStackedLayout::StackingMode|stackingMode|

/*
QWidget * widget ( int index ) const
*/
$method=|QWidget *|widget|int

/*
void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setCurrentWidget ( QWidget * widget )
*/
$method=|void|setCurrentWidget|QWidget *

#pragma ENDDUMP
