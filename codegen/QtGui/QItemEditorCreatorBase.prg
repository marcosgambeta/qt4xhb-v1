$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createWidget
   METHOD valuePropertyName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QItemEditorCreatorBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QITEMEDITORCREATORBASE_DELETE )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QWidget * createWidget ( QWidget * parent ) const = 0
*/
HB_FUNC_STATIC( QITEMEDITORCREATORBASE_CREATEWIDGET )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->createWidget ( PQWIDGET(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual QByteArray valuePropertyName () const = 0
*/
HB_FUNC_STATIC( QITEMEDITORCREATORBASE_VALUEPROPERTYNAME )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valuePropertyName () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

$extraMethods

#pragma ENDDUMP
