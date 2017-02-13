/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QBYTEARRAY
REQUEST QITEMEDITORFACTORY

CLASS QItemEditorFactory

   DATA pointer
   DATA class_id INIT Class_Id_QItemEditorFactory
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QItemEditorFactory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QItemEditorFactory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QItemEditorFactory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QItemEditorFactory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QItemEditorFactory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QItemEditorFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QItemEditorFactory>

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
QItemEditorFactory ()
*/
HB_FUNC( QITEMEDITORFACTORY_NEW )
{
  QItemEditorFactory * o = NULL;
  o = new QItemEditorFactory (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QItemEditorFactory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QITEMEDITORFACTORY_DELETE )
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
HB_FUNC( QITEMEDITORFACTORY_CREATEEDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWidget * par2 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->createEditor (  (QVariant::Type) par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
void registerEditor ( QVariant::Type type, QItemEditorCreatorBase * creator )
*/
HB_FUNC( QITEMEDITORFACTORY_REGISTEREDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QItemEditorCreatorBase * par2 = (QItemEditorCreatorBase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerEditor (  (QVariant::Type) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QByteArray valuePropertyName ( QVariant::Type type ) const
*/
HB_FUNC( QITEMEDITORFACTORY_VALUEPROPERTYNAME )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->valuePropertyName (  (QVariant::Type) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}



/*
const QItemEditorFactory * defaultFactory ()
*/
HB_FUNC( QITEMEDITORFACTORY_DEFAULTFACTORY )
{
  const QItemEditorFactory * ptr = QItemEditorFactory::defaultFactory (  );
  _qt4xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );}


/*
void setDefaultFactory ( QItemEditorFactory * factory )
*/
HB_FUNC( QITEMEDITORFACTORY_SETDEFAULTFACTORY )
{
  QItemEditorFactory * par1 = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QItemEditorFactory::setDefaultFactory ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
