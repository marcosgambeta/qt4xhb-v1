/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerContainerExtension>

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

HB_FUNC( QDESIGNERCONTAINEREXTENSION_DELETE )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void addWidget ( QWidget * page ) = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_ADDWIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_COUNT )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
virtual int currentIndex () const = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_CURRENTINDEX )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentIndex (  );
    hb_retni( i );
  }
}


/*
virtual void insertWidget ( int index, QWidget * page ) = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_INSERTWIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertWidget ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void remove ( int index ) = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_REMOVE )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->remove ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setCurrentIndex ( int index ) = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_SETCURRENTINDEX )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QWidget * widget ( int index ) const = 0
*/
HB_FUNC( QDESIGNERCONTAINEREXTENSION_WIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * ptr = obj->widget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}



