/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QINPUTCONTEXT

CLASS QInputContextFactory

   DATA pointer
   DATA class_id INIT Class_Id_QInputContextFactory
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QInputContextFactory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QInputContextFactory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QInputContextFactory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QInputContextFactory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QInputContextFactory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QInputContextFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QInputContextFactory>

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

HB_FUNC( QINPUTCONTEXTFACTORY_DELETE )
{
  QInputContextFactory * obj = (QInputContextFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QInputContext * create ( const QString & key, QObject * parent )
*/
HB_FUNC( QINPUTCONTEXTFACTORY_CREATE )
{
  QString par1 = hb_parc(1);
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QInputContext * ptr = QInputContextFactory::create ( par1, par2 );
  _qt4xhb_createReturnClass ( ptr, "QINPUTCONTEXT" );}


/*
QString description ( const QString & key )
*/
HB_FUNC( QINPUTCONTEXTFACTORY_DESCRIPTION )
{
  QString par1 = hb_parc(1);
  QString str1 = QInputContextFactory::description ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString displayName ( const QString & key )
*/
HB_FUNC( QINPUTCONTEXTFACTORY_DISPLAYNAME )
{
  QString par1 = hb_parc(1);
  QString str1 = QInputContextFactory::displayName ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList keys ()
*/
HB_FUNC( QINPUTCONTEXTFACTORY_KEYS )
{
  QStringList strl = QInputContextFactory::keys (  );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}


/*
QStringList languages ( const QString & key )
*/
HB_FUNC( QINPUTCONTEXTFACTORY_LANGUAGES )
{
  QString par1 = hb_parc(1);
  QStringList strl = QInputContextFactory::languages ( par1 );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}




#pragma ENDDUMP
