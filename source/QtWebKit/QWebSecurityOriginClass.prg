/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBDATABASE
REQUEST QWEBSECURITYORIGIN

CLASS QWebSecurityOrigin

   DATA pointer
   DATA class_id INIT Class_Id_QWebSecurityOrigin
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD databaseQuota
   METHOD databaseUsage
   METHOD databases
   METHOD host
   METHOD port
   METHOD scheme
   METHOD setDatabaseQuota
   METHOD addLocalScheme
   METHOD allOrigins
   METHOD localSchemes
   METHOD removeLocalScheme
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QWebSecurityOrigin
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QWebSecurityOrigin
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QWebSecurityOrigin
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QWebSecurityOrigin
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QWebSecurityOrigin
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QWebSecurityOrigin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWebSecurityOrigin>

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

#include <QStringList>
#include <QWebDatabase>

/*
QWebSecurityOrigin ( const QWebSecurityOrigin & other )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEW )
{
  QWebSecurityOrigin * o = NULL;
  QWebSecurityOrigin * par1 = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QWebSecurityOrigin ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebSecurityOrigin *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QWEBSECURITYORIGIN_DELETE )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qint64 databaseQuota () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASEQUOTA )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->databaseQuota (  );
    hb_retni( i );
  }
}


/*
qint64 databaseUsage () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASEUSAGE )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->databaseUsage (  );
    hb_retni( i );
  }
}


/*
QList<QWebDatabase> databases () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASES )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QWebDatabase> list = obj->databases (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBDATABASE" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBDATABASE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QWebDatabase *) new QWebDatabase ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QString host () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_HOST )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->host (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int port () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_PORT )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->port (  ) );
  }
}


/*
QString scheme () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_SCHEME )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->scheme (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setDatabaseQuota ( qint64 quota )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_SETDATABASEQUOTA )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setDatabaseQuota ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void addLocalScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ADDLOCALSCHEME )
{
  QString par1 = hb_parc(1);
  QWebSecurityOrigin::addLocalScheme ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QWebSecurityOrigin> allOrigins ()
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ALLORIGINS )
{
  QList<QWebSecurityOrigin> list = QWebSecurityOrigin::allOrigins (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWEBSECURITYORIGIN" );
  #else
  pDynSym = hb_dynsymFindName( "QWEBSECURITYORIGIN" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QWebSecurityOrigin *) new QWebSecurityOrigin ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
QStringList localSchemes ()
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_LOCALSCHEMES )
{
  QStringList strl = QWebSecurityOrigin::localSchemes (  );
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
void removeLocalScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_REMOVELOCALSCHEME )
{
  QString par1 = hb_parc(1);
  QWebSecurityOrigin::removeLocalScheme ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
