$header

#include "hbclass.ch"


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

$destructor

#pragma BEGINDUMP

#include <QMetaType>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"








/*
static int registerTypedef(const char *typeName, int aliasId)
*/
HB_FUNC_STATIC( QMETATYPE_REGISTERTYPEDEF )
{
  RINT( QMetaType::registerTypedef ( (const char *) hb_parc(1), PINT(2) ) );
}


/*
static int type(const char *typeName)
*/
HB_FUNC_STATIC( QMETATYPE_TYPE )
{
  RINT( QMetaType::type ( (const char *) hb_parc(1) ) );
}


/*
static const char *typeName(int type)
*/
HB_FUNC_STATIC( QMETATYPE_TYPENAME )
{
  const char * str1 = QMetaType::typeName ( PINT(1) );
  hb_retc( str1 );
}


/*
static bool isRegistered(int type)
*/
HB_FUNC_STATIC( QMETATYPE_ISREGISTERED )
{
  RBOOL( QMetaType::isRegistered ( PINT(1) ) );
}


/*
static void *construct(int type, const void *copy = 0)
*/
HB_FUNC_STATIC( QMETATYPE_CONSTRUCT )
{
  const void * par2 = ISNIL(2)? 0 : (const void *) hb_parptr(2);
  void * retptr = QMetaType::construct ( PINT(1), par2 );
  hb_retptr( (void *) retptr );
}


/*
static void destroy(int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_DESTROY )
{
  void * par2 = (void *) hb_parptr(2);
  QMetaType::destroy ( PINT(1), par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void unregisterType(const char *typeName)
*/
HB_FUNC_STATIC( QMETATYPE_UNREGISTERTYPE )
{
  QMetaType::unregisterType ( (const char *) hb_parc(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool save(QDataStream &stream, int type, const void *data)
*/
HB_FUNC_STATIC( QMETATYPE_SAVE )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const void * par3 = (const void *) hb_parptr(3);
  RBOOL( QMetaType::save ( *par1, PINT(2), par3 ) );
}


/*
static bool load(QDataStream &stream, int type, void *data)
*/
HB_FUNC_STATIC( QMETATYPE_LOAD )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  void * par3 = (void *) hb_parptr(3);
  RBOOL( QMetaType::load ( *par1, PINT(2), par3 ) );
}

$extraMethods

#pragma ENDDUMP
