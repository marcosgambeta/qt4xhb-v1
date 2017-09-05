$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
#endif

CLASS QPropertyAnimation INHERIT QVariantAnimation

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD propertyName
   METHOD setPropertyName
   METHOD setTargetObject
   METHOD targetObject
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPropertyAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPropertyAnimation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_NEW1 )
{
  QPropertyAnimation * o = new QPropertyAnimation ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_NEW2 )
{
  QPropertyAnimation * o = new QPropertyAnimation ( PQOBJECT(1), *PQBYTEARRAY(2), OPQOBJECT(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QPropertyAnimation ( QObject * parent = 0 )
//[2]QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPROPERTYANIMATION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISQBYTEARRAY(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPROPERTYANIMATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray propertyName () const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_PROPERTYNAME )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->propertyName () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setPropertyName ( const QByteArray & propertyName )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETPROPERTYNAME )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPropertyName ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTargetObject ( QObject * target )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETTARGETOBJECT )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTargetObject ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject * targetObject () const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_TARGETOBJECT )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->targetObject ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}




#pragma ENDDUMP
