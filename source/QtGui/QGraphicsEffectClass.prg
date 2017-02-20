/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF

CLASS QGraphicsEffect INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsEffect
   DATA self_destruction INIT .f.

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
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
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
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *par1 ) );
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
    hb_retl( obj->isEnabled (  ) );
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
    bool par1 = hb_parl(1);
    obj->setEnabled ( par1 );
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
    obj->update (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
