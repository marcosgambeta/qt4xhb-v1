%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

$prototype=QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
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

$prototype=bool autoClose () const
$method=|bool|autoClose|

$prototype=bool autoReset () const
$method=|bool|autoReset|

$prototype=QString labelText () const
$method=|QString|labelText|

$prototype=int maximum () const
$method=|int|maximum|

$prototype=int minimum () const
$method=|int|minimum|

$prototype=int minimumDuration () const
$method=|int|minimumDuration|

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=void setAutoClose ( bool close )
$method=|void|setAutoClose|bool

$prototype=void setAutoReset ( bool reset )
$method=|void|setAutoReset|bool

$prototype=void setBar ( QProgressBar * bar )
$method=|void|setBar|QProgressBar *

$prototype=void setCancelButton ( QPushButton * cancelButton )
$method=|void|setCancelButton|QPushButton *

$prototype=void setLabel ( QLabel * label )
$method=|void|setLabel|QLabel *

$prototype=int value () const
$method=|int|value|

$prototype=bool wasCanceled () const
$method=|bool|wasCanceled|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void cancel ()
$method=|void|cancel|

$prototype=void reset ()
$method=|void|reset|

$prototype=void setCancelButtonText ( const QString & cancelButtonText )
$method=|void|setCancelButtonText|const QString &

$prototype=void setLabelText ( const QString & text )
$method=|void|setLabelText|const QString &

$prototype=void setMaximum ( int maximum )
$method=|void|setMaximum|int

$prototype=void setMinimum ( int minimum )
$method=|void|setMinimum|int

$prototype=void setMinimumDuration ( int ms )
$method=|void|setMinimumDuration|int

$prototype=void setRange ( int minimum, int maximum )
$method=|void|setRange|int,int

$prototype=void setValue ( int progress )
$method=|void|setValue|int

#pragma ENDDUMP
