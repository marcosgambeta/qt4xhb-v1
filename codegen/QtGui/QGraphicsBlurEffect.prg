$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsBlurEffect INHERIT QGraphicsWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD blurHints
   METHOD blurRadius
   METHOD boundingRectFor
   METHOD setBlurHints
   METHOD setBlurRadius

   METHOD onBlurHintsChanged
   METHOD onBlurRadiusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsBlurEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsBlurEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_NEW )
{
  QGraphicsBlurEffect * o = new QGraphicsBlurEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
BlurHints blurHints () const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->blurHints () );
  }
}

/*
qreal blurRadius () const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->blurRadius () );
  }
}

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BOUNDINGRECTFOR )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setBlurHints ( BlurHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBlurHints ( (QGraphicsBlurEffect::BlurHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBlurRadius ( qreal blurRadius )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBlurRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
