/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QITEMEDITORFACTORY

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   DATA class_id INIT Class_Id_QItemDelegate
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QItemDelegate>

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
QItemDelegate ( QObject * parent = 0 )
*/
HB_FUNC( QITEMDELEGATE_NEW )
{
  QItemDelegate * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QItemDelegate ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemDelegate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QITEMDELEGATE_DELETE )
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
HB_FUNC( QITEMDELEGATE_HASCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasClipping (  );
    hb_retl( b );
  }
}


/*
QItemEditorFactory * itemEditorFactory () const
*/
HB_FUNC( QITEMDELEGATE_ITEMEDITORFACTORY )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemEditorFactory * ptr = obj->itemEditorFactory (  );
    _qt4xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );  }
}


/*
void setClipping ( bool clip )
*/
HB_FUNC( QITEMDELEGATE_SETCLIPPING )
{
  QItemDelegate * obj = (QItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setClipping ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
HB_FUNC( QITEMDELEGATE_SETITEMEDITORFACTORY )
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
