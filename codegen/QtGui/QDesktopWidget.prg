$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWIDGET
#endif

CLASS QDesktopWidget INHERIT QWidget

   METHOD availableGeometry1
   METHOD availableGeometry2
   METHOD availableGeometry3
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry1
   METHOD screenGeometry2
   METHOD screenGeometry3
   METHOD screenGeometry
   METHOD screenNumber1
   METHOD screenNumber2
   METHOD screenNumber

   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesktopWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
const QRect availableGeometry ( int screen = -1 ) const
*/
$method=|const QRect|availableGeometry,availableGeometry1|int=-1

/*
const QRect availableGeometry ( const QWidget * widget ) const
*/
$method=|const QRect|availableGeometry,availableGeometry2|const QWidget *

/*
const QRect availableGeometry ( const QPoint & p ) const
*/
$method=|const QRect|availableGeometry,availableGeometry3|const QPoint &

//[1]const QRect availableGeometry ( int screen = -1 ) const
//[2]const QRect availableGeometry ( const QWidget * widget ) const
//[3]const QRect availableGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_AVAILABLEGEOMETRY )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_AVAILABLEGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_AVAILABLEGEOMETRY2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_AVAILABLEGEOMETRY3 );
  }
}

/*
bool isVirtualDesktop () const
*/
$method=|bool|isVirtualDesktop|

/*
int primaryScreen () const
*/
$method=|int|primaryScreen|

/*
QWidget * screen ( int screen = -1 )
*/
$method=|QWidget *|screen|int=-1

/*
int screenCount () const
*/
$method=|int|screenCount|

/*
const QRect screenGeometry ( int screen = -1 ) const
*/
$method=|const QRect|screenGeometry,screenGeometry1|int=-1

/*
const QRect screenGeometry ( const QWidget * widget ) const
*/
$method=|const QRect|screenGeometry,screenGeometry2|const QWidget *

/*
const QRect screenGeometry ( const QPoint & p ) const
*/
$method=|const QRect|screenGeometry,screenGeometry3|const QPoint &

//[1]const QRect screenGeometry ( int screen = -1 ) const
//[2]const QRect screenGeometry ( const QWidget * widget ) const
//[3]const QRect screenGeometry ( const QPoint & p ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENGEOMETRY )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENGEOMETRY1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENGEOMETRY2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENGEOMETRY3 );
  }
}

/*
int screenNumber ( const QWidget * widget = 0 ) const
*/
$method=|int|screenNumber,screenNumber1|const QWidget *=0

/*
int screenNumber ( const QPoint & point ) const
*/
$method=|int|screenNumber,screenNumber2|const QPoint &

//[1]int screenNumber ( const QWidget * widget = 0 ) const
//[2]int screenNumber ( const QPoint & point ) const

HB_FUNC_STATIC( QDESKTOPWIDGET_SCREENNUMBER )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENNUMBER1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QDESKTOPWIDGET_SCREENNUMBER2 );
  }
}

#pragma ENDDUMP
