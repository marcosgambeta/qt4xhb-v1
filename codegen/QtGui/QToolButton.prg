%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QToolButton INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD arrowType
   METHOD autoRaise
   METHOD defaultAction
   METHOD menu
   METHOD popupMode
   METHOD setArrowType
   METHOD setAutoRaise
   METHOD setMenu
   METHOD setPopupMode
   METHOD toolButtonStyle
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setDefaultAction
   METHOD setToolButtonStyle
   METHOD showMenu

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>
#include <QMenu>

$prototype=QToolButton ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=Qt::ArrowType arrowType () const
$method=|Qt::ArrowType|arrowType|

$prototype=bool autoRaise () const
$method=|bool|autoRaise|

$prototype=QAction * defaultAction () const
$method=|QAction *|defaultAction|

$prototype=QMenu * menu () const
$method=|QMenu *|menu|

$prototype=ToolButtonPopupMode popupMode () const
$method=|QToolButton::ToolButtonPopupMode|popupMode|

$prototype=void setArrowType ( Qt::ArrowType type )
$method=|void|setArrowType|Qt::ArrowType

$prototype=void setAutoRaise ( bool enable )
$method=|void|setAutoRaise|bool

$prototype=void setMenu ( QMenu * menu )
$method=|void|setMenu|QMenu *

$prototype=void setPopupMode ( ToolButtonPopupMode mode )
$method=|void|setPopupMode|QToolButton::ToolButtonPopupMode

$prototype=Qt::ToolButtonStyle toolButtonStyle () const
$method=|Qt::ToolButtonStyle|toolButtonStyle|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void setDefaultAction ( QAction * action )
$method=|void|setDefaultAction|QAction *

$prototype=void setToolButtonStyle ( Qt::ToolButtonStyle style )
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

$prototype=void showMenu ()
$method=|void|showMenu|

#pragma ENDDUMP
