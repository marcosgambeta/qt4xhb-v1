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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QMenu>

$prototype=QSystemTrayIcon ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QSystemTrayIcon ( const QIcon & icon, QObject * parent = 0 )
$internalConstructor=|new2|const QIcon &,QObject *=0

/*
[1]QSystemTrayIcon ( QObject * parent = 0 )
[2]QSystemTrayIcon ( const QIcon & icon, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSystemTrayIcon_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||ISCHAR(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSystemTrayIcon_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QMenu * contextMenu() const

$prototypeV2=QRect geometry() const

$prototypeV2=QIcon icon() const

$prototypeV2=bool isVisible() const

$prototypeV2=void setContextMenu( QMenu * menu )

$prototypeV2=void setIcon( const QIcon & icon )

$prototypeV2=void setToolTip( const QString & tip )

$prototype=void showMessage ( const QString & title, const QString & message, MessageIcon icon = Information, int millisecondsTimeoutHint = 10000 )
$method=|void|showMessage|const QString &,const QString &,QSystemTrayIcon::MessageIcon=QSystemTrayIcon::Information,int=10000

$prototypeV2=QString toolTip() const

$prototypeV2=void hide()

$prototypeV2=void setVisible( bool visible )

$prototypeV2=void show()

$prototypeV2=static bool isSystemTrayAvailable()

$prototypeV2=static bool supportsMessages()

$beginSignals
$signal=|activated(QSystemTrayIcon::ActivationReason)
$signal=|messageClicked()
$endSignals

#pragma ENDDUMP
