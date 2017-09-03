$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsEffect INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD boundingRect
   METHOD boundingRectFor
   METHOD isEnabled
   METHOD setEnabled
   METHOD update

   METHOD onEnabledChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGRAPHICSEFFECT_DELETE )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECT )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_BOUNDINGRECTFOR )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
bool isEnabled () const
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_ISENABLED )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}

/*
void setEnabled ( bool enable )
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_SETENABLED )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ()
*/
HB_FUNC_STATIC( QGRAPHICSEFFECT_UPDATE )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
