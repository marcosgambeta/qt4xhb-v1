$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QMetaClassInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD value
   METHOD enclosingMetaObject
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMetaClassInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMetaClassInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMetaClassInfo()
*/
HB_FUNC_STATIC( QMETACLASSINFO_NEW )
{
  QMetaClassInfo * o = new QMetaClassInfo ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QMETACLASSINFO_DELETE )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const char *name() const
*/
HB_FUNC_STATIC( QMETACLASSINFO_NAME )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->name ();
    hb_retc( str1 );
  }
}


/*
const char *value() const
*/
HB_FUNC_STATIC( QMETACLASSINFO_VALUE )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->value ();
    hb_retc( str1 );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETACLASSINFO_ENCLOSINGMETAOBJECT )
{
  QMetaClassInfo * obj = (QMetaClassInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
