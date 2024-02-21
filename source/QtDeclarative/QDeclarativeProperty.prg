/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QMETAPROPERTY
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QDeclarativeProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD reset
   METHOD type
   METHOD read
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDeclarative/QDeclarativeProperty>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDeclarativeProperty()
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    /*
    QDeclarativeProperty( QObject * obj )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( PQOBJECT(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    /*
    QDeclarativeProperty( QObject * obj, QDeclarativeContext * ctxt )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( PQOBJECT(1), PQDECLARATIVECONTEXT(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVEENGINE(2) )
  {
    /*
    QDeclarativeProperty( QObject * obj, QDeclarativeEngine * engine )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( PQOBJECT(1), PQDECLARATIVEENGINE(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    QDeclarativeProperty( QObject * obj, const QString & name )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( PQOBJECT(1), PQSTRING(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    /*
    QDeclarativeProperty( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( PQOBJECT(1), PQSTRING(2), PQDECLARATIVECONTEXT(3) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    /*
    QDeclarativeProperty( QObject * obj, const QString & name, QDeclarativeEngine * engine )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( PQOBJECT(1), PQSTRING(2), PQDECLARATIVEENGINE(3) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
  {
    /*
    QDeclarativeProperty( const QDeclarativeProperty & other )
    */
    QDeclarativeProperty * obj = new QDeclarativeProperty( *PQDECLARATIVEPROPERTY(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    bool connectNotifySignal( QObject * dest, const char * slot ) const
    */
    QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->connectNotifySignal( PQOBJECT(1), PCONSTCHAR(2)) );
    }
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2) )
  {
    /*
    bool connectNotifySignal( QObject * dest, int method ) const
    */
    QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->connectNotifySignal( PQOBJECT(1), PINT(2)) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_HASNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasNotifySignal() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int index() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_INDEX )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->index() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isDesignable() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISDESIGNABLE )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDesignable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isProperty() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISPROPERTY )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isProperty() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isResettable() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISRESETTABLE )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isResettable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isSignalProperty() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISSIGNALPROPERTY )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSignalProperty() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISVALID )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isWritable() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISWRITABLE )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMetaMethod method() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_METHOD )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaMethod * ptr = new QMetaMethod( obj->method() );
      Qt4xHb::createReturnClass(ptr, "QMETAMETHOD", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NAME )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool needsNotifySignal() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->needsNotifySignal() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QObject * object() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_OBJECT )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->object();
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMetaProperty property() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTY )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaProperty * ptr = new QMetaProperty( obj->property() );
      Qt4xHb::createReturnClass(ptr, "QMETAPROPERTY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int propertyType() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPE )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->propertyType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDeclarativeProperty::PropertyTypeCategory propertyTypeCategory() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPECATEGORY )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->propertyTypeCategory() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const char * propertyTypeName() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPENAME )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( ( const char * ) obj->propertyTypeName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool reset() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_RESET )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->reset() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDeclarativeProperty::Type type() const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_TYPE )
{
  QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    /*
    QVariant read() const
    */
    QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QVariant * ptr = new QVariant( obj->read() );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    static QVariant read( QObject * object, const QString & name )
    */

    QVariant * ptr = new QVariant( QDeclarativeProperty::read( PQOBJECT(1), PQSTRING(2)) );
    Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    /*
    static QVariant read( QObject * object, const QString & name, QDeclarativeContext * ctxt )
    */

    QVariant * ptr = new QVariant( QDeclarativeProperty::read( PQOBJECT(1), PQSTRING(2), PQDECLARATIVECONTEXT(3)) );
    Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    /*
    static QVariant read( QObject * object, const QString & name, QDeclarativeEngine * engine )
    */

    QVariant * ptr = new QVariant( QDeclarativeProperty::read( PQOBJECT(1), PQSTRING(2), PQDECLARATIVEENGINE(3)) );
    Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    /*
    bool write( const QVariant & value ) const
    */
    QDeclarativeProperty * obj = static_cast<QDeclarativeProperty*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->write( *PQVARIANT(1)) );
    }
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value )
    */

    RBOOL( QDeclarativeProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3)) );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVECONTEXT(4) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
    */

    RBOOL( QDeclarativeProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQDECLARATIVECONTEXT(4)) );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVEENGINE(4) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
    */

    RBOOL( QDeclarativeProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQDECLARATIVEENGINE(4)) );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
