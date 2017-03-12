/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
#endif

CLASS QInputContextFactory

   DATA pointer
   DATA class_id INIT Class_Id_QInputContextFactory
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QInputContextFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QInputContextFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_DELETE )
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
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_CREATE )
{
  QString par1 = hb_parc(1);
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QInputContext * ptr = QInputContextFactory::create ( par1, par2 );
  _qt4xhb_createReturnClass ( ptr, "QINPUTCONTEXT" );
}


/*
QString description ( const QString & key )
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_DESCRIPTION )
{
  QString par1 = hb_parc(1);
  QString str1 = QInputContextFactory::description ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString displayName ( const QString & key )
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_DISPLAYNAME )
{
  QString par1 = hb_parc(1);
  QString str1 = QInputContextFactory::displayName ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QStringList keys ()
*/
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_KEYS )
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
HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_LANGUAGES )
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


HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QINPUTCONTEXTFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QINPUTCONTEXTFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QINPUTCONTEXTFACTORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
