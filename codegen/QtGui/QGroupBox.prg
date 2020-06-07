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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGroupBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QGroupBox ( const QString & title, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

/*
[1]QGroupBox ( QWidget * parent = 0 )
[2]QGroupBox ( const QString & title, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QGroupBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QGroupBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototypeV2=bool isCheckable() const

$prototypeV2=bool isChecked() const

$prototypeV2=bool isFlat() const

$prototype=void setAlignment ( int alignment )
$method=|void|setAlignment|int

$prototype=void setCheckable ( bool checkable )
$method=|void|setCheckable|bool

$prototype=void setFlat ( bool flat )
$method=|void|setFlat|bool

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototypeV2=QString title() const

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=void setChecked ( bool checked )
$method=|void|setChecked|bool

$beginSignals
$signal=|clicked(bool)
$signal=|toggled(bool)
$endSignals

#pragma ENDDUMP
