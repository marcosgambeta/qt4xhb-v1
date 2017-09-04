$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemEditorFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD registerEditor
   METHOD valuePropertyName
   METHOD defaultFactory
   METHOD setDefaultFactory

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemEditorFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QItemEditorFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QItemEditorFactory ()
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_NEW )
{
  QItemEditorFactory * o = new QItemEditorFactory ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QITEMEDITORFACTORY_DELETE )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QWidget * createEditor ( QVariant::Type type, QWidget * parent ) const
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_CREATEEDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->createEditor ( (QVariant::Type) hb_parni(1), PQWIDGET(2) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void registerEditor ( QVariant::Type type, QItemEditorCreatorBase * creator )
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_REGISTEREDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QItemEditorCreatorBase * par2 = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerEditor ( (QVariant::Type) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QByteArray valuePropertyName ( QVariant::Type type ) const
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_VALUEPROPERTYNAME )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->valuePropertyName ( (QVariant::Type) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
const QItemEditorFactory * defaultFactory ()
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_DEFAULTFACTORY )
{
  const QItemEditorFactory * ptr = QItemEditorFactory::defaultFactory ();
  _qt4xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
}

/*
void setDefaultFactory ( QItemEditorFactory * factory )
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_SETDEFAULTFACTORY )
{
  QItemEditorFactory * par1 = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QItemEditorFactory::setDefaultFactory ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
