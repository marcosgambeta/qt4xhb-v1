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

CLASS QMetaType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD registerTypedef
   METHOD type
   METHOD typeName
   METHOD isRegistered
   METHOD construct
   METHOD destroy
   METHOD unregisterType
   METHOD save
   METHOD load

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMetaType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QMetaType>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

/*
static int registerTypedef( const char * typeName, int aliasId )
*/
HB_FUNC_STATIC( QMETATYPE_REGISTERTYPEDEF )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
#endif
    RINT( QMetaType::registerTypedef( PCONSTCHAR(1), PINT(2)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int type( const char * typeName )
*/
HB_FUNC_STATIC( QMETATYPE_TYPE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RINT( QMetaType::type( PCONSTCHAR(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static const char * typeName( int type )
*/
HB_FUNC_STATIC( QMETATYPE_TYPENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    hb_retc( ( const char * ) QMetaType::typeName( PINT(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isRegistered( int type )
*/
HB_FUNC_STATIC( QMETATYPE_ISREGISTERED )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    RBOOL( QMetaType::isRegistered( PINT(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void * construct( int type, const void * copy = 0 )
*/
HB_FUNC_STATIC( QMETATYPE_CONSTRUCT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISNUM(1) && (HB_ISPOINTER(2) || HB_ISNIL(2)) )
  {
#endif
    hb_retptr( static_cast<void*>( QMetaType::construct( PINT(1), HB_ISNIL(2) ? (const void *) 0 : (const void *) hb_parptr(2)) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void destroy( int type, void * data )
*/
HB_FUNC_STATIC( QMETATYPE_DESTROY )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISPOINTER(2) )
  {
#endif
    QMetaType::destroy( PINT(1), static_cast<void*>( hb_parptr(2)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void unregisterType( const char * typeName )
*/
HB_FUNC_STATIC( QMETATYPE_UNREGISTERTYPE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QMetaType::unregisterType( PCONSTCHAR(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static bool save( QDataStream & stream, int type, const void * data )
*/
HB_FUNC_STATIC( QMETATYPE_SAVE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISQDATASTREAM(1) && HB_ISNUM(2) && HB_ISPOINTER(3) )
  {
#endif
    RBOOL( QMetaType::save( *PQDATASTREAM(1), PINT(2), static_cast<const void*>( hb_parptr(3)) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool load( QDataStream & stream, int type, void * data )
*/
HB_FUNC_STATIC( QMETATYPE_LOAD )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISQDATASTREAM(1) && HB_ISNUM(2) && HB_ISPOINTER(3) )
  {
#endif
    RBOOL( QMetaType::load( *PQDATASTREAM(1), PINT(2), static_cast<void*>( hb_parptr(3)) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QMETATYPE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QMETATYPE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMETATYPE_NEWFROM );
}

HB_FUNC_STATIC( QMETATYPE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMETATYPE_NEWFROM );
}

HB_FUNC_STATIC( QMETATYPE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMETATYPE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
