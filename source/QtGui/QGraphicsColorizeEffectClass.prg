/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   DATA class_id INIT Class_Id_QGraphicsColorizeEffect
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength
   METHOD onColorChanged
   METHOD onStrengthChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsColorizeEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsColorizeEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsColorizeEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_NEW )
{
  QGraphicsColorizeEffect * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsColorizeEffect ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_DELETE )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QColor color () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_COLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor * ptr = new QColor( obj->color (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
qreal strength () const
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_STRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->strength (  );
    hb_retnd( r );
  }
}


/*
void setColor ( const QColor & c )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETCOLOR )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrength ( qreal strength )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_SETSTRENGTH )
{
  QGraphicsColorizeEffect * obj = (QGraphicsColorizeEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStrength ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
