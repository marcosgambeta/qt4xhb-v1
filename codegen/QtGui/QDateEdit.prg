$header

#include "hbclass.ch"

CLASS QDateEdit INHERIT QDateTimeEdit

   METHOD new1
   METHOD new2
   METHOD new

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDateEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDateEdit ( QWidget * parent = 0 )
*/
$constructor=|new1|QWidget *=0

/*
QDateEdit ( const QDate & date, QWidget * parent = 0 )
*/
$constructor=|new2|const QDate &,QWidget *=0

//[1]QDateEdit ( QWidget * parent = 0 )
//[2]QDateEdit ( const QDate & date, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
