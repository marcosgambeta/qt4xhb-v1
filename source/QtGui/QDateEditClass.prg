/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QDateEdit INHERIT QDateTimeEdit

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDateEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDateEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDateEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATEEDIT_NEW1 )
{
  QDateEdit * o = new QDateEdit ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDateEdit ( const QDate & date, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATEEDIT_NEW2 )
{
  QDateEdit * o = new QDateEdit ( *PQDATE(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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
