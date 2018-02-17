%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBUTTONGROUP
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
#endif

CLASS QAbstractButton INHERIT QWidget

   METHOD delete
   METHOD autoExclusive
   METHOD autoRepeat
   METHOD autoRepeatDelay
   METHOD autoRepeatInterval
   METHOD group
   METHOD icon
   METHOD iconSize
   METHOD isCheckable
   METHOD isChecked
   METHOD isDown
   METHOD setAutoExclusive
   METHOD setAutoRepeat
   METHOD setAutoRepeatDelay
   METHOD setAutoRepeatInterval
   METHOD setCheckable
   METHOD setDown
   METHOD setIcon
   METHOD setShortcut
   METHOD setText
   METHOD shortcut
   METHOD text
   METHOD animateClick
   METHOD click
   METHOD setChecked
   METHOD setIconSize
   METHOD toggle

   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QButtonGroup>

$deleteMethod

$prototype=bool autoExclusive () const
$method=|bool|autoExclusive|

$prototype=bool autoRepeat () const
$method=|bool|autoRepeat|

$prototype=int autoRepeatDelay () const
$method=|int|autoRepeatDelay|

$prototype=int autoRepeatInterval () const
$method=|int|autoRepeatInterval|

$prototype=QButtonGroup * group () const
$method=|QButtonGroup *|group|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=bool isCheckable () const
$method=|bool|isCheckable|

$prototype=bool isChecked () const
$method=|bool|isChecked|

$prototype=bool isDown () const
$method=|bool|isDown|

$prototype=void setAutoExclusive ( bool )
$method=|void|setAutoExclusive|bool

$prototype=void setAutoRepeat ( bool )
$method=|void|setAutoRepeat|bool

$prototype=void setAutoRepeatDelay ( int )
$method=|void|setAutoRepeatDelay|int

$prototype=void setAutoRepeatInterval ( int )
$method=|void|setAutoRepeatInterval|int

$prototype=void setCheckable ( bool )
$method=|void|setCheckable|bool

$prototype=void setDown ( bool )
$method=|void|setDown|bool

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setShortcut ( const QKeySequence & key )
$method=|void|setShortcut|const QKeySequence &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=QKeySequence shortcut () const
$method=|QKeySequence|shortcut|

$prototype=QString text () const
$method=|QString|text|

$prototype=void animateClick ( int msec = 100 )
$method=|void|animateClick|int=100

$prototype=void click ()
$method=|void|click|

$prototype=void setChecked ( bool )
$method=|void|setChecked|bool

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=void toggle ()
$method=|void|toggle|

#pragma ENDDUMP
