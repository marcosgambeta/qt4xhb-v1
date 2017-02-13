/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   DATA class_id INIT Class_Id_QDesignerPropertyEditorInterface
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly
   METHOD onPropertyChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerPropertyEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerPropertyEditorInterface>

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


HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_DELETE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CORE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}


/*
virtual QString currentPropertyName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CURRENTPROPERTYNAME )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->currentPropertyName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual bool isReadOnly () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_ISREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadOnly (  );
    hb_retl( b );
  }
}


/*
virtual QObject * object () const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_OBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
virtual void setObject ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETOBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setPropertyValue ( const QString & name, const QVariant & value, bool changed = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETPROPERTYVALUE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool par3 = ISNIL(3)? true : hb_parl(3);
    obj->setPropertyValue ( par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setReadOnly ( bool readOnly ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setReadOnly ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP
