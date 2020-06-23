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

$prototype=QActionGroup ( QObject * parent )
$constructor=|new|QObject *

$deleteMethod

$prototypeV2=QList<QAction *> actions() const

$prototype=QAction * addAction ( QAction * action )
$internalMethod=|QAction *|addAction,addAction1|QAction *

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction2|const QString &

$prototype=QAction * addAction ( const QIcon & icon, const QString & text )
$internalMethod=|QAction *|addAction,addAction3|const QIcon &,const QString &

/*
[1]QAction * addAction ( QAction * action )
[2]QAction * addAction ( const QString & text )
[3]QAction * addAction ( const QIcon & icon, const QString & text )
*/

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QActionGroup_addAction1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QActionGroup_addAction2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QActionGroup_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addAction

$prototypeV2=QAction * checkedAction() const

$prototypeV2=bool isEnabled() const

$prototypeV2=bool isExclusive() const

$prototypeV2=bool isVisible() const

$prototypeV2=void removeAction( QAction * action )

$prototypeV2=void setDisabled( bool b )

$prototypeV2=void setEnabled( bool )

$prototypeV2=void setExclusive( bool )

$prototypeV2=void setVisible( bool )

$beginSignals
$signal=|hovered(QAction*)
$signal=|triggered(QAction*)
$endSignals

#pragma ENDDUMP
