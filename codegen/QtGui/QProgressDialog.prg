$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressDialog INHERIT QDialog

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

$destructor

#pragma BEGINDUMP

#include <QProgressDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

/*
QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new2|const QString &,const QString &,int,int,QWidget *=0,Qt::WindowFlags=0

//[1]QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QPROGRESSDIALOG_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QProgressDialog_new1();
  }
  else if( ISBETWEEN(4,6) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) && (ISQWIDGET(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    QProgressDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoClose () const
*/
$method=|bool|autoClose|

/*
bool autoReset () const
*/
$method=|bool|autoReset|

/*
QString labelText () const
*/
$method=|QString|labelText|

/*
int maximum () const
*/
$method=|int|maximum|

/*
int minimum () const
*/
$method=|int|minimum|

/*
int minimumDuration () const
*/
$method=|int|minimumDuration|

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
void setAutoClose ( bool close )
*/
$method=|void|setAutoClose|bool

/*
void setAutoReset ( bool reset )
*/
$method=|void|setAutoReset|bool

/*
void setBar ( QProgressBar * bar )
*/
$method=|void|setBar|QProgressBar *

/*
void setCancelButton ( QPushButton * cancelButton )
*/
$method=|void|setCancelButton|QPushButton *

/*
void setLabel ( QLabel * label )
*/
$method=|void|setLabel|QLabel *

/*
int value () const
*/
$method=|int|value|

/*
bool wasCanceled () const
*/
$method=|bool|wasCanceled|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void cancel ()
*/
$method=|void|cancel|

/*
void reset ()
*/
$method=|void|reset|

/*
void setCancelButtonText ( const QString & cancelButtonText )
*/
$method=|void|setCancelButtonText|const QString &

/*
void setLabelText ( const QString & text )
*/
$method=|void|setLabelText|const QString &

/*
void setMaximum ( int maximum )
*/
$method=|void|setMaximum|int

/*
void setMinimum ( int minimum )
*/
$method=|void|setMinimum|int

/*
void setMinimumDuration ( int ms )
*/
$method=|void|setMinimumDuration|int

/*
void setRange ( int minimum, int maximum )
*/
$method=|void|setRange|int,int

/*
void setValue ( int progress )
*/
$method=|void|setValue|int

#pragma ENDDUMP
