/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressDialog INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD autoClose
   METHOD autoReset
   METHOD labelText
   METHOD maximum
   METHOD minimum
   METHOD minimumDuration
   METHOD open
   METHOD setAutoClose
   METHOD setAutoReset
   METHOD setBar
   METHOD setCancelButton
   METHOD setLabel
   METHOD value
   METHOD wasCanceled
   METHOD sizeHint
   METHOD cancel
   METHOD reset
   METHOD setCancelButtonText
   METHOD setLabelText
   METHOD setMaximum
   METHOD setMinimum
   METHOD setMinimumDuration
   METHOD setRange
   METHOD setValue
   METHOD onCanceled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProgressDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QProgressDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_NEW1 )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QProgressDialog * o = new QProgressDialog ( OPQWIDGET(1,0),  (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_NEW2 )
{
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  QProgressDialog * o = new QProgressDialog ( PQSTRING(1), PQSTRING(2), PINT(3), PINT(4), OPQWIDGET(5,0),  (Qt::WindowFlags) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QPROGRESSDIALOG_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPROGRESSDIALOG_NEW1 );
  }
  else if( ISBETWEEN(4,6) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) && (ISQWIDGET(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QPROGRESSDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPROGRESSDIALOG_DELETE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoClose () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_AUTOCLOSE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoClose () );
  }
}


/*
bool autoReset () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_AUTORESET )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoReset () );
  }
}


/*
QString labelText () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_LABELTEXT )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->labelText ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
int maximum () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_MAXIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maximum () );
  }
}


/*
int minimum () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_MINIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minimum () );
  }
}


/*
int minimumDuration () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_MINIMUMDURATION )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minimumDuration () );
  }
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_OPEN )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1),  (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoClose ( bool close )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETAUTOCLOSE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoClose ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoReset ( bool reset )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETAUTORESET )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoReset ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBar ( QProgressBar * bar )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETBAR )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QProgressBar * par1 = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCancelButton ( QPushButton * cancelButton )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETCANCELBUTTON )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPushButton * par1 = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCancelButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabel ( QLabel * label )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETLABEL )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLabel * par1 = (QLabel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLabel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int value () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_VALUE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->value () );
  }
}


/*
bool wasCanceled () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_WASCANCELED )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->wasCanceled () );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SIZEHINT )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void cancel ()
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_CANCEL )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancel ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reset ()
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_RESET )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCancelButtonText ( const QString & cancelButtonText )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETCANCELBUTTONTEXT )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCancelButtonText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabelText ( const QString & text )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETLABELTEXT )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLabelText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximum ( int maximum )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETMAXIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimum ( int minimum )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETMINIMUM )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumDuration ( int ms )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETMINIMUMDURATION )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimumDuration ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRange ( int minimum, int maximum )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETRANGE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( int progress )
*/
HB_FUNC_STATIC( QPROGRESSDIALOG_SETVALUE )
{
  QProgressDialog * obj = (QProgressDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
