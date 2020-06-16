/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDynamicPropertyChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD propertyName

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDynamicPropertyChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QDynamicPropertyChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDynamicPropertyChangeEvent ( const QByteArray & name )
*/
HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_NEW )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QDynamicPropertyChangeEvent * obj = new QDynamicPropertyChangeEvent( *PQBYTEARRAY(1) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_DELETE )
{
  QDynamicPropertyChangeEvent * obj = (QDynamicPropertyChangeEvent *) Qt4xHb::itemGetPtrStackSelfItem();

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
QByteArray propertyName() const
*/
HB_FUNC_STATIC( QDYNAMICPROPERTYCHANGEEVENT_PROPERTYNAME )
{
  QDynamicPropertyChangeEvent * obj = (QDynamicPropertyChangeEvent *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->propertyName() );
      Qt4xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
