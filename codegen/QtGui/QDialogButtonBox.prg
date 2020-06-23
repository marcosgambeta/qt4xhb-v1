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

#include <QtGui/QPushButton>

$prototype=QDialogButtonBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

$prototype=QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )
$internalConstructor=|new3|QDialogButtonBox::StandardButtons,Qt::Orientation=Qt::Horizontal,QWidget *=0

/*
[1]QDialogButtonBox ( QWidget * parent = 0 )
[2]QDialogButtonBox ( Qt::Orientation orientation, QWidget * parent = 0 )
[3]QDialogButtonBox ( StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDialogButtonBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDialogButtonBox_new2();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QDialogButtonBox_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addButton ( QAbstractButton * button, ButtonRole role )
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QDialogButtonBox::ButtonRole

$prototype=QPushButton * addButton ( const QString & text, ButtonRole role )
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QDialogButtonBox::ButtonRole

$prototype=QPushButton * addButton ( StandardButton button )
$internalMethod=|QPushButton *|addButton,addButton3|QDialogButtonBox::StandardButton

/*
[1]void addButton ( QAbstractButton * button, ButtonRole role )
[2]QPushButton * addButton ( const QString & text, ButtonRole role )
[3]QPushButton * addButton ( StandardButton button )
*/

HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDialogButtonBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addButton

$prototypeV2=QPushButton * button( QDialogButtonBox::StandardButton which ) const

$prototypeV2=QDialogButtonBox::ButtonRole buttonRole( QAbstractButton * button ) const

$prototypeV2=QList<QAbstractButton *> buttons() const

$prototypeV2=bool centerButtons() const

$prototypeV2=void clear()

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void removeButton( QAbstractButton * button )

$prototypeV2=void setCenterButtons( bool center )

$prototypeV2=void setOrientation( Qt::Orientation orientation )

$prototypeV2=void setStandardButtons( QDialogButtonBox::StandardButtons buttons )

$prototypeV2=QDialogButtonBox::StandardButton standardButton( QAbstractButton * button ) const

$prototypeV2=QDialogButtonBox::StandardButtons standardButtons() const

$beginSignals
$signal=|accepted()
$signal=|clicked(QAbstractButton*)
$signal=|helpRequested()
$signal=|rejected()
$endSignals

#pragma ENDDUMP
