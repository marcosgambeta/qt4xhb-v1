$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDialog INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD setSizeGripEnabled
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject

   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
bool isSizeGripEnabled () const
*/
$method=|bool|isSizeGripEnabled|

/*
int result () const
*/
$method=|int|result|

/*
void setModal ( bool modal )
*/
$method=|void|setModal|bool

/*
void setResult ( int i )
*/
$method=|void|setResult|int

/*
void setSizeGripEnabled ( bool )
*/
$method=|void|setSizeGripEnabled|bool

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual void accept ()
*/
$virtualMethod=|void|accept|

/*
virtual void done ( int r )
*/
$virtualMethod=|void|done|int

/*
int exec ()
*/
$method=|int|exec|

/*
void open ()
*/
$method=|void|open|

/*
virtual void reject ()
*/
$virtualMethod=|void|reject|

#pragma ENDDUMP
