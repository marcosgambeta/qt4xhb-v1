$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QSplashScreen INHERIT QWidget

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QSPLASHSCREEN_NEW1 )
{
  QPixmap par1 = ISNIL(1)? QPixmap() : *(QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QSplashScreen * o = new QSplashScreen ( par1, (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_NEW2 )
{
  QPixmap par2 = ISNIL(2)? QPixmap() : *(QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QSplashScreen * o = new QSplashScreen ( PQWIDGET(1), par2, (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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
HB_FUNC_STATIC( QSPLASHSCREEN_FINISH )
{
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->finish ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QPixmap pixmap () const
*/
HB_FUNC_STATIC( QSPLASHSCREEN_PIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void repaint ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_REPAINT )
{
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->repaint ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SETPIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPixmap ( *PQPIXMAP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearMessage ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_CLEARMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearMessage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SHOWMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par3 = ISNIL(3)? Qt::black : ISOBJECT(3)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(3));
    obj->showMessage ( PQSTRING(1), OPINT(2,Qt::AlignLeft), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
