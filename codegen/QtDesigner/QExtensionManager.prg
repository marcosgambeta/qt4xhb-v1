$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QExtensionManager INHERIT QObject,QAbstractExtensionManager

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QExtensionManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QExtensionManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_NEW )
{
  QExtensionManager * o = new QExtensionManager ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_EXTENSION )
{
  QExtensionManager * obj = (QExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->extension ( PQOBJECT(1), PQSTRING(2) );
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_REGISTEREXTENSIONS )
{
  QExtensionManager * obj = (QExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerExtensions ( par1, OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_UNREGISTEREXTENSIONS )
{
  QExtensionManager * obj = (QExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unregisterExtensions ( par1, OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
