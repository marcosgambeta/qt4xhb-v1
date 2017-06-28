/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QItemDelegate ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QITEMDELEGATE_NEW )
{
  QItemDelegate * o = new QItemDelegate ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QITEMDELEGATE_DELETE )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool hasClipping () const
*/
HB_FUNC_STATIC( QITEMDELEGATE_HASCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasClipping () );
  }
}

/*
QItemEditorFactory * itemEditorFactory () const
*/
HB_FUNC_STATIC( QITEMDELEGATE_ITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemEditorFactory * ptr = obj->itemEditorFactory ();
    _qt4xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
  }
}

/*
void setClipping ( bool clip )
*/
HB_FUNC_STATIC( QITEMDELEGATE_SETCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setClipping ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
HB_FUNC_STATIC( QITEMDELEGATE_SETITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemEditorFactory * par1 = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemEditorFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
