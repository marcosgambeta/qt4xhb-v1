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

#include <QAbstractButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool autoExclusive () const
*/
$method=|bool|autoExclusive|

/*
bool autoRepeat () const
*/
$metjod=|bool|autoRepeat|

/*
int autoRepeatDelay () const
*/
$method=|int|autoRepeatDelay|

/*
int autoRepeatInterval () const
*/
$method=|int|autoRepeatInterval|

/*
QButtonGroup * group () const
*/
$method=|QButtonGroup *|group|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
bool isDown () const
*/
$method=|bool|isDown|

/*
void setAutoExclusive ( bool )
*/
$method=|void|setAutoExclusive|bool

/*
void setAutoRepeat ( bool )
*/
$method=|void|setAutoRepeat|bool

/*
void setAutoRepeatDelay ( int )
*/
$method=|void|setAutoRepeatDelay|int

/*
void setAutoRepeatInterval ( int )
*/
$method=|void|setAutoRepeatInterval|int

/*
void setCheckable ( bool )
*/
$method=|void|setCheckable|bool

/*
void setDown ( bool )
*/
$method=|void|setDown|bool

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setShortcut ( const QKeySequence & key )
*/
$method=|void|setShortcut|const QKeySequence &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
QKeySequence shortcut () const
*/
$method=|QKeySequence|shortcut|

/*
QString text () const
*/
$method=|QString|text|

/*
void animateClick ( int msec = 100 )
*/
$method=|void|animateClick|int=100

/*
void click ()
*/
$method=|void|click|

/*
void setChecked ( bool )
*/
$method=|void|setChecked|bool

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
void toggle ()
*/
$method=|void|toggle|

#pragma ENDDUMP
