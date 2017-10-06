$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDial INHERIT QAbstractSlider

   METHOD new
   METHOD delete
   METHOD notchSize
   METHOD notchTarget
   METHOD notchesVisible
   METHOD setNotchTarget
   METHOD wrapping
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setNotchesVisible
   METHOD setWrapping

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDial>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDial ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
int notchSize () const
*/
$method=|int|notchSize|

/*
qreal notchTarget () const
*/
$method=|qreal|notchTarget|

/*
bool notchesVisible () const
*/
$method=|bool|notchesVisible|

/*
void setNotchTarget ( double target )
*/
$method=|void|setNotchTarget|double

/*
bool wrapping () const
*/
$method=|bool|wrapping|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void setNotchesVisible ( bool visible )
*/
$method=|void|setNotchesVisible|bool

/*
void setWrapping ( bool on )
*/
$method=|void|setWrapping|bool

#pragma ENDDUMP
