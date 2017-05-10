/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QRadioButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QRadioButton
   DATA self_destruction INIT .F.

   METHOD new
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QRadioButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QRadioButton ( QWidget * parent = 0 )
*/
void QRadioButton_new1 ()
{
  QRadioButton * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QRadioButton ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QRadioButton ( const QString & text, QWidget * parent = 0 )
*/
void QRadioButton_new2 ()
{
  QRadioButton * o = NULL;
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QRadioButton ( PQSTRING(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QRadioButton ( QWidget * parent = 0 )
//[2]QRadioButton ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QRADIOBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QRadioButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QRadioButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QRADIOBUTTON_SIZEHINT )
{
  QRadioButton * obj = (QRadioButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
