/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QICON

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerCustomWidgetInterface
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QDesignerCustomWidgetInterface
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDesignerCustomWidgetInterface
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDesignerCustomWidgetInterface
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDesignerCustomWidgetInterface
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDesignerCustomWidgetInterface
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDesignerCustomWidgetInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerCustomWidgetInterface>

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

HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_DELETE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString codeTemplate () const
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_CODETEMPLATE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->codeTemplate (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QWidget * createWidget ( QWidget * parent ) = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_CREATEWIDGET )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * par1 = (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * ptr = obj->createWidget ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
virtual QString domXml () const
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_DOMXML )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->domXml (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QString group () const = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_GROUP )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->group (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QIcon icon () const = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_ICON )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );  }
}


/*
virtual QString includeFile () const = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_INCLUDEFILE )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->includeFile (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual void initialize ( QDesignerFormEditorInterface * formEditor )
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_INITIALIZE )
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
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_ISCONTAINER )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isContainer (  );
    hb_retl( b );
  }
}


/*
virtual bool isInitialized () const
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_ISINITIALIZED )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isInitialized (  );
    hb_retl( b );
  }
}


/*
virtual QString name () const = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_NAME )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QString toolTip () const = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_TOOLTIP )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toolTip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QString whatsThis () const = 0
*/
HB_FUNC( QDESIGNERCUSTOMWIDGETINTERFACE_WHATSTHIS )
{
  QDesignerCustomWidgetInterface * obj = (QDesignerCustomWidgetInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->whatsThis (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
