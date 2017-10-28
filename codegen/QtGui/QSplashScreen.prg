$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QSplashScreen INHERIT QWidget

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD finish
   METHOD pixmap
   METHOD repaint
   METHOD setPixmap
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSplashScreen>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
$constructor=|new1|const QPixmap &=QPixmap(),Qt::WindowFlags=0

/*
QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
$constructor=|new2|QWidget *,const QPixmap &=QPixmap(),Qt::WindowFlags=0

//[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
//[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QSPLASHSCREEN_NEW )
{
  if( ISBETWEEN(0,2) && (ISQPIXMAP(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSPLASHSCREEN_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQWIDGET(1) && (ISQPIXMAP(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSPLASHSCREEN_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void finish ( QWidget * mainWin )
*/
$method=|void|finish|QWidget *

/*
const QPixmap pixmap () const
*/
$method=|const QPixmap|pixmap|

/*
void repaint ()
*/
$method=|void|repaint|

/*
void setPixmap ( const QPixmap & pixmap )
*/
$method=|void|setPixmap|const QPixmap &

/*
void clearMessage ()
*/
$method=|void|clearMessage|

/*
void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
*/
$method=|void|showMessage|const QString &,int=Qt::AlignLeft,const QColor &=Qt::black

#pragma ENDDUMP
