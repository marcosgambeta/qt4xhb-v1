/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHOSTADDRESS
REQUEST QHOSTINFO

CLASS QHostInfo

   DATA pointer
   DATA class_id INIT Class_Id_QHostInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addresses
   METHOD error
   METHOD errorString
   METHOD hostName
   METHOD lookupId
   METHOD setAddresses
   METHOD setError
   METHOD setErrorString
   METHOD setHostName
   METHOD setLookupId
   METHOD abortHostLookup
   METHOD fromName
   METHOD localDomainName
   METHOD localHostName
   METHOD lookupHost
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QHostInfo
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QHostInfo
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QHostInfo
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QHostInfo
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QHostInfo
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QHostInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHostInfo>

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
QHostInfo ( int id = -1 )
*/
HB_FUNC_STATIC( QHOSTINFO_NEW1 )
{
  QHostInfo * o = NULL;
  int par1 = ISNIL(1)? -1 : hb_parni(1);
  o = new QHostInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QHostInfo ( const QHostInfo & other )
*/
HB_FUNC_STATIC( QHOSTINFO_NEW2 )
{
  QHostInfo * o = NULL;
  QHostInfo * par1 = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QHostInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHostInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QHostInfo ( int id = -1 )
//[2]QHostInfo ( const QHostInfo & other )

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    HB_FUNC_EXEC( QHOSTINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHOSTINFO_DELETE )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QHostAddress> addresses () const
*/
HB_FUNC_STATIC( QHOSTINFO_ADDRESSES )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QHostAddress> list = obj->addresses (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QHOSTADDRESS" );
    #else
    pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
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
        hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
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
HostInfoError error () const
*/
HB_FUNC_STATIC( QHOSTINFO_ERROR )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QHOSTINFO_ERRORSTRING )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString hostName () const
*/
HB_FUNC_STATIC( QHOSTINFO_HOSTNAME )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->hostName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int lookupId () const
*/
HB_FUNC_STATIC( QHOSTINFO_LOOKUPID )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->lookupId (  ) );
  }
}


/*
void setAddresses ( const QList<QHostAddress> & addresses )
*/
HB_FUNC_STATIC( QHOSTINFO_SETADDRESSES )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QHostAddress> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QHostAddress *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->setAddresses ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setError ( HostInfoError error )
*/
HB_FUNC_STATIC( QHOSTINFO_SETERROR )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setError (  (QHostInfo::HostInfoError) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setErrorString ( const QString & str )
*/
HB_FUNC_STATIC( QHOSTINFO_SETERRORSTRING )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setErrorString ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHostName ( const QString & hostName )
*/
HB_FUNC_STATIC( QHOSTINFO_SETHOSTNAME )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setHostName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLookupId ( int id )
*/
HB_FUNC_STATIC( QHOSTINFO_SETLOOKUPID )
{
  QHostInfo * obj = (QHostInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLookupId ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void abortHostLookup ( int id )
*/
HB_FUNC_STATIC( QHOSTINFO_ABORTHOSTLOOKUP )
{
  int par1 = hb_parni(1);
  QHostInfo::abortHostLookup ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QHostInfo fromName ( const QString & name )
*/
HB_FUNC_STATIC( QHOSTINFO_FROMNAME )
{
  QString par1 = hb_parc(1);
  QHostInfo * ptr = new QHostInfo( QHostInfo::fromName ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QHOSTINFO", true );
}


/*
QString localDomainName ()
*/
HB_FUNC_STATIC( QHOSTINFO_LOCALDOMAINNAME )
{
  QString str1 = QHostInfo::localDomainName (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString localHostName ()
*/
HB_FUNC_STATIC( QHOSTINFO_LOCALHOSTNAME )
{
  QString str1 = QHostInfo::localHostName (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
int lookupHost ( const QString & name, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QHOSTINFO_LOOKUPHOST )
{
  QString par1 = hb_parc(1);
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par3 = hb_parc(3);
  hb_retni( QHostInfo::lookupHost ( par1, par2,  (const char *) par3 ) );
}




#pragma ENDDUMP
