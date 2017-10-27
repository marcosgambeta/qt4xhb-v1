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

#include <QToolButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QToolButton ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTOOLBUTTON_NEW )
{
  QToolButton * o = new QToolButton ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::ArrowType arrowType () const
*/
$method=|Qt::ArrowType|arrowType|

/*
bool autoRaise () const
*/
$method=|bool|autoRaise|

/*
QAction * defaultAction () const
*/
$method=|QAction *|defaultAction|

/*
QMenu * menu () const
*/
$method=|QMenu *|menu|

/*
ToolButtonPopupMode popupMode () const
*/
$method=|QToolButton::ToolButtonPopupMode|popupMode|

/*
void setArrowType ( Qt::ArrowType type )
*/
$method=|void|setArrowType|Qt::ArrowType

/*
void setAutoRaise ( bool enable )
*/
$method=|void|setAutoRaise|bool

/*
void setMenu ( QMenu * menu )
*/
$method=|void|setMenu|QMenu *

/*
void setPopupMode ( ToolButtonPopupMode mode )
*/
$method=|void|setPopupMode|QToolButton::ToolButtonPopupMode

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
$method=|Qt::ToolButtonStyle|toolButtonStyle|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void setDefaultAction ( QAction * action )
*/
$method=|void|setDefaultAction|QAction *

/*
void setToolButtonStyle ( Qt::ToolButtonStyle style )
*/
$method=|void|setToolButtonStyle|Qt::ToolButtonStyle

/*
void showMenu ()
*/
$method=|void|showMenu|

#pragma ENDDUMP
