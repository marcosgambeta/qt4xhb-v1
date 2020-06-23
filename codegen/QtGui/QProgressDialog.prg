%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

$prototype=QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|const QString &,const QString &,int,int,QWidget *=0,Qt::WindowFlags=0

/*
[1]QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
[2]QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=bool autoClose() const

$prototypeV2=bool autoReset() const

$prototypeV2=QString labelText() const

$prototypeV2=int maximum() const

$prototypeV2=int minimum() const

$prototypeV2=int minimumDuration() const

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=void setAutoClose( bool close )

$prototypeV2=void setAutoReset( bool reset )

$prototypeV2=void setBar( QProgressBar * bar )

$prototypeV2=void setCancelButton( QPushButton * cancelButton )

$prototypeV2=void setLabel( QLabel * label )

$prototypeV2=int value() const

$prototypeV2=bool wasCanceled() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void cancel()

$prototypeV2=void reset()

$prototypeV2=void setCancelButtonText( const QString & cancelButtonText )

$prototypeV2=void setLabelText( const QString & text )

$prototypeV2=void setMaximum( int maximum )

$prototypeV2=void setMinimum( int minimum )

$prototypeV2=void setMinimumDuration( int ms )

$prototypeV2=void setRange( int minimum, int maximum )

$prototypeV2=void setValue( int progress )

$beginSignals
$signal=|canceled()
$endSignals

#pragma ENDDUMP
