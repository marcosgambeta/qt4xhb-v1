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

$beginClassFrom=QAbstractButton

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPushButton ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QPushButton ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

$prototype=QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
$internalConstructor=|new3|const QIcon &,const QString &,QWidget *=0

/*
[1]QPushButton ( QWidget * parent = 0 )
[2]QPushButton ( const QString & text, QWidget * parent = 0 )
[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPushButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPushButton_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QPushButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool autoDefault() const

$prototypeV2=bool isDefault() const

$prototypeV2=bool isFlat() const

$prototype=void setAutoDefault ( bool )
$method=|void|setAutoDefault|bool

$prototype=void setDefault ( bool )
$method=|void|setDefault|bool

$prototype=void setFlat ( bool )
$method=|void|setFlat|bool

$prototypeV2=void showMenu()

#pragma ENDDUMP
