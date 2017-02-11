/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMetaType>

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








/*
static int registerTypedef(const char *typeName, int aliasId)
*/
HB_FUNC( QMETATYPE_REGISTERTYPEDEF )
{
  const char * par1 = hb_parc(1);
  int par2 = hb_parni(2);
  int i = QMetaType::registerTypedef (  (const char *) par1, par2 );
  hb_retni( i );
}


/*
static int type(const char *typeName)
*/
HB_FUNC( QMETATYPE_TYPE )
{
  const char * par1 = hb_parc(1);
  int i = QMetaType::type (  (const char *) par1 );
  hb_retni( i );
}


/*
static const char *typeName(int type)
*/
HB_FUNC( QMETATYPE_TYPENAME )
{
  int par1 = hb_parni(1);
  const char * str1 = QMetaType::typeName ( par1 );
  hb_retc( str1 );
}


/*
static bool isRegistered(int type)
*/
HB_FUNC( QMETATYPE_ISREGISTERED )
{
  int par1 = hb_parni(1);
  bool b = QMetaType::isRegistered ( par1 );
  hb_retl( b );
}


/*
static void *construct(int type, const void *copy = 0)
*/
HB_FUNC( QMETATYPE_CONSTRUCT )
{
  int par1 = hb_parni(1);
  const void * par2 = ISNIL(2)? 0 : (const void *) hb_parptr(2);
  void * retptr = QMetaType::construct ( par1, par2 );
  hb_retptr( (void *) retptr );
}


/*
static void destroy(int type, void *data)
*/
HB_FUNC( QMETATYPE_DESTROY )
{
  int par1 = hb_parni(1);
  void * par2 = (void *) hb_parptr(2);
  QMetaType::destroy ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void unregisterType(const char *typeName)
*/
HB_FUNC( QMETATYPE_UNREGISTERTYPE )
{
  const char * par1 = hb_parc(1);
  QMetaType::unregisterType (  (const char *) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool save(QDataStream &stream, int type, const void *data)
*/
HB_FUNC( QMETATYPE_SAVE )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  const void * par3 = (const void *) hb_parptr(3);
  bool b = QMetaType::save ( *par1, par2, par3 );
  hb_retl( b );
}


/*
static bool load(QDataStream &stream, int type, void *data)
*/
HB_FUNC( QMETATYPE_LOAD )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  void * par3 = (void *) hb_parptr(3);
  bool b = QMetaType::load ( *par1, par2, par3 );
  hb_retl( b );
}



