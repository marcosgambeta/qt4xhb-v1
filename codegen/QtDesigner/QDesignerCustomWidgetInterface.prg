$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD codeTemplate
   METHOD createWidget
   METHOD domXml
   METHOD group
   METHOD icon
   METHOD includeFile
   METHOD initialize
   METHOD isContainer
   METHOD isInitialized
   METHOD name
   METHOD toolTip
   METHOD whatsThis
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerCustomWidgetInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QString codeTemplate () const
*/
$virtualMethod=|QString|codeTemplate|

/*
virtual QWidget * createWidget ( QWidget * parent ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_CREATEWIDGET )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->createWidget ( PQWIDGET(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual QString domXml () const
*/
$virtualMethod=|QString|domXml|

/*
virtual QString group () const = 0
*/
$virtualMethod=|QString|group|

/*
virtual QIcon icon () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ICON )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
virtual QString includeFile () const = 0
*/
$virtualMethod=|QString|includeFile|

/*
virtual void initialize ( QDesignerFormEditorInterface * formEditor )
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_INITIALIZE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormEditorInterface * par1 = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->initialize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isContainer () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ISCONTAINER )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isContainer () );
  }
}


/*
virtual bool isInitialized () const
*/
HB_FUNC_STATIC( QDESIGNERCUSTOMWIDGETINTERFACE_ISINITIALIZED )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isInitialized () );
  }
}

/*
virtual QString name () const = 0
*/
$virtualMethod=|QString|name|

/*
virtual QString toolTip () const = 0
*/
$virtualMethod=|QString|toolTip|

/*
virtual QString whatsThis () const = 0
*/
$virtualMethod=|QString|whatsThis|

$extraMethods

#pragma ENDDUMP
