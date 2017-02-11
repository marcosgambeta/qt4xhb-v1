/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGraphicsBlurEffect>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QGraphicsBlurEffect ( QObject * parent = 0 )
*/
HB_FUNC( QGRAPHICSBLUREFFECT_NEW )
{
  QGraphicsBlurEffect * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsBlurEffect ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsBlurEffect *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QGRAPHICSBLUREFFECT_DELETE )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
BlurHints blurHints () const
*/
HB_FUNC( QGRAPHICSBLUREFFECT_BLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->blurHints (  );
    hb_retni( i );
  }
}


/*
qreal blurRadius () const
*/
HB_FUNC( QGRAPHICSBLUREFFECT_BLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->blurRadius (  );
    hb_retnd( r );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC( QGRAPHICSBLUREFFECT_BOUNDINGRECTFOR )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );  }
}


/*
void setBlurHints ( BlurHints hints )
*/
HB_FUNC( QGRAPHICSBLUREFFECT_SETBLURHINTS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBlurHints (  (QGraphicsBlurEffect::BlurHints) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBlurRadius ( qreal blurRadius )
*/
HB_FUNC( QGRAPHICSBLUREFFECT_SETBLURRADIUS )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBlurRadius ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





