/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QXmlAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type
   METHOD uri
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXml/QXmlAttributes>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlAttributes()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlAttributes * obj = new QXmlAttributes();
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QXMLATTRIBUTES_DELETE )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void append( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_APPEND )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISCHAR(4) )
    {
#endif
      obj->append( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clear()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_CLEAR )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int count() const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_COUNT )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    int index( const QString & qName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RINT( obj->index( PQSTRING(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    /*
    int index( const QLatin1String & qName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RINT( obj->index( *PQLATIN1STRING(1) ) );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    int index( const QString & uri, const QString & localPart ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RINT( obj->index( PQSTRING(1), PQSTRING(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int length() const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LENGTH )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->length() );
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
QString localName( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_LOCALNAME )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->localName( PINT(1) ) );
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
QString qName( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_QNAME )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->qName( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QString type( int index ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->type( PINT(1) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QString type( const QString & qName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->type( PQSTRING(1) ) );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    QString type( const QString & uri, const QString & localName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->type( PQSTRING(1), PQSTRING(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString uri( int index ) const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_URI )
{
  QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->uri( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QString value( int index ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->value( PINT(1) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QString value( const QString & qName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->value( PQSTRING(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    /*
    QString value( const QLatin1String & qName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->value( *PQLATIN1STRING(1) ) );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    QString value( const QString & uri, const QString & localName ) const
    */
    QXmlAttributes * obj = static_cast<QXmlAttributes*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->value( PQSTRING(1), PQSTRING(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QXMLATTRIBUTES_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast<void*>( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast<void*>( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLATTRIBUTES_NEWFROM );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLATTRIBUTES_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
