$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDynamicPropertyChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD propertyName
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDynamicPropertyChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDynamicPropertyChangeEvent ( const QByteArray & name )
*/
HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_NEW )
{
  QDynamicPropertyChangeEvent * o = new QDynamicPropertyChangeEvent ( *PQBYTEARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QByteArray propertyName () const
*/
HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_PROPERTYNAME )
{
  QDynamicPropertyChangeEvent * obj = (QDynamicPropertyChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->propertyName () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}




#pragma ENDDUMP
