/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QURL

CLASS QUrl

   DATA pointer
   DATA class_id INIT Class_Id_QUrl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addEncodedQueryItem
   METHOD addQueryItem
   METHOD allEncodedQueryItemValues
   METHOD allQueryItemValues
   METHOD authority
   METHOD clear
   METHOD encodedFragment
   METHOD encodedHost
   METHOD encodedPassword
   METHOD encodedPath
   METHOD encodedQuery
   METHOD encodedQueryItemValue
   METHOD encodedUserName
   METHOD errorString
   METHOD fragment
   METHOD hasEncodedQueryItem
   METHOD hasFragment
   METHOD hasQuery
   METHOD hasQueryItem
   METHOD host
   METHOD isEmpty
   METHOD isLocalFile
   METHOD isParentOf
   METHOD isRelative
   METHOD isValid
   METHOD password
   METHOD path
   METHOD port1
   METHOD port2
   METHOD port
   METHOD queryItemValue
   METHOD removeAllEncodedQueryItems
   METHOD removeAllQueryItems
   METHOD removeEncodedQueryItem
   METHOD removeQueryItem
   METHOD resolved
   METHOD scheme
   METHOD setAuthority
   METHOD setEncodedFragment
   METHOD setEncodedHost
   METHOD setEncodedPassword
   METHOD setEncodedPath
   METHOD setEncodedQuery
   METHOD setEncodedUrl1
   METHOD setEncodedUrl2
   METHOD setEncodedUrl
   METHOD setEncodedUserName
   METHOD setFragment
   METHOD setHost
   METHOD setPassword
   METHOD setPath
   METHOD setPort
   METHOD setQueryDelimiters
   METHOD setScheme
   METHOD setUrl1
   METHOD setUrl2
   METHOD setUrl
   METHOD setUserInfo
   METHOD setUserName
   METHOD swap
   METHOD toEncoded
   METHOD toLocalFile
   METHOD toString
   METHOD topLevelDomain
   METHOD userInfo
   METHOD userName
   METHOD fromAce
   METHOD fromEncoded1
   METHOD fromEncoded2
   METHOD fromEncoded
   METHOD fromLocalFile
   METHOD fromPercentEncoding
   METHOD fromUserInput
   METHOD idnWhitelist
   METHOD setIdnWhitelist
   METHOD toAce
   METHOD toPercentEncoding
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUrl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QUrl>

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

/*
QUrl ()
*/
HB_FUNC_STATIC( QURL_NEW1 )
{
  QUrl * o = NULL;
  o = new QUrl (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUrl ( const QString & url )
*/
HB_FUNC_STATIC( QURL_NEW2 )
{
  QUrl * o = NULL;
  QString par1 = hb_parc(1);
  o = new QUrl ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUrl ( const QUrl & other )
*/
HB_FUNC_STATIC( QURL_NEW3 )
{
  QUrl * o = NULL;
  QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUrl ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_NEW4 )
{
  QUrl * o = NULL;
  QString par1 = hb_parc(1);
  int par2 = hb_parni(2);
  o = new QUrl ( par1,  (QUrl::ParsingMode) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUrl *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QUrl ()
//[2]QUrl ( const QString & url )
//[3]QUrl ( const QUrl & other )
//[4]QUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURL_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QURL_NEW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QURL_DELETE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addEncodedQueryItem ( const QByteArray & key, const QByteArray & value )
*/
HB_FUNC_STATIC( QURL_ADDENCODEDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QByteArray * par2 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addEncodedQueryItem ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addQueryItem ( const QString & key, const QString & value )
*/
HB_FUNC_STATIC( QURL_ADDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    obj->addQueryItem ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QByteArray> allEncodedQueryItemValues ( const QByteArray & key ) const
*/
HB_FUNC_STATIC( QURL_ALLENCODEDQUERYITEMVALUES )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QByteArray> list = obj->allEncodedQueryItemValues ( *par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QStringList allQueryItemValues ( const QString & key ) const
*/
HB_FUNC_STATIC( QURL_ALLQUERYITEMVALUES )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QStringList strl = obj->allQueryItemValues ( par1 );
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
}


/*
QString authority () const
*/
HB_FUNC_STATIC( QURL_AUTHORITY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->authority (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QURL_CLEAR )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray encodedFragment () const
*/
HB_FUNC_STATIC( QURL_ENCODEDFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedFragment (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedHost () const
*/
HB_FUNC_STATIC( QURL_ENCODEDHOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedHost (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedPassword () const
*/
HB_FUNC_STATIC( QURL_ENCODEDPASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedPassword (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedPath () const
*/
HB_FUNC_STATIC( QURL_ENCODEDPATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedPath (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedQuery () const
*/
HB_FUNC_STATIC( QURL_ENCODEDQUERY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedQuery (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedQueryItemValue ( const QByteArray & key ) const
*/
HB_FUNC_STATIC( QURL_ENCODEDQUERYITEMVALUE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QByteArray * ptr = new QByteArray( obj->encodedQueryItemValue ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QByteArray encodedUserName () const
*/
HB_FUNC_STATIC( QURL_ENCODEDUSERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedUserName (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QURL_ERRORSTRING )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString fragment () const
*/
HB_FUNC_STATIC( QURL_FRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fragment (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool hasEncodedQueryItem ( const QByteArray & key ) const
*/
HB_FUNC_STATIC( QURL_HASENCODEDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->hasEncodedQueryItem ( *par1 ) );
  }
}


/*
bool hasFragment () const
*/
HB_FUNC_STATIC( QURL_HASFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasFragment (  ) );
  }
}


/*
bool hasQuery () const
*/
HB_FUNC_STATIC( QURL_HASQUERY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasQuery (  ) );
  }
}


/*
bool hasQueryItem ( const QString & key ) const
*/
HB_FUNC_STATIC( QURL_HASQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->hasQueryItem ( par1 ) );
  }
}


/*
QString host () const
*/
HB_FUNC_STATIC( QURL_HOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->host (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QURL_ISEMPTY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isLocalFile () const
*/
HB_FUNC_STATIC( QURL_ISLOCALFILE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isLocalFile (  ) );
  }
}


/*
bool isParentOf ( const QUrl & childUrl ) const
*/
HB_FUNC_STATIC( QURL_ISPARENTOF )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isParentOf ( *par1 ) );
  }
}


/*
bool isRelative () const
*/
HB_FUNC_STATIC( QURL_ISRELATIVE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isRelative (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QURL_ISVALID )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QURL_PASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->password (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QURL_PATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->path (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int port () const
*/
HB_FUNC_STATIC( QURL_PORT1 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->port (  ) );
  }
}


/*
int port ( int defaultPort ) const
*/
HB_FUNC_STATIC( QURL_PORT2 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->port ( par1 ) );
  }
}


//[1]int port () const
//[2]int port ( int defaultPort ) const

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURL_PORT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QURL_PORT2 );
  }
}

/*
QString queryItemValue ( const QString & key ) const
*/
HB_FUNC_STATIC( QURL_QUERYITEMVALUE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->queryItemValue ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





/*
void removeAllEncodedQueryItems ( const QByteArray & key )
*/
HB_FUNC_STATIC( QURL_REMOVEALLENCODEDQUERYITEMS )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeAllEncodedQueryItems ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAllQueryItems ( const QString & key )
*/
HB_FUNC_STATIC( QURL_REMOVEALLQUERYITEMS )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->removeAllQueryItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeEncodedQueryItem ( const QByteArray & key )
*/
HB_FUNC_STATIC( QURL_REMOVEENCODEDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeEncodedQueryItem ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeQueryItem ( const QString & key )
*/
HB_FUNC_STATIC( QURL_REMOVEQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->removeQueryItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl resolved ( const QUrl & relative ) const
*/
HB_FUNC_STATIC( QURL_RESOLVED )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QUrl * ptr = new QUrl( obj->resolved ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QString scheme () const
*/
HB_FUNC_STATIC( QURL_SCHEME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->scheme (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setAuthority ( const QString & authority )
*/
HB_FUNC_STATIC( QURL_SETAUTHORITY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setAuthority ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedFragment ( const QByteArray & fragment )
*/
HB_FUNC_STATIC( QURL_SETENCODEDFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedFragment ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedHost ( const QByteArray & host )
*/
HB_FUNC_STATIC( QURL_SETENCODEDHOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedHost ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedPassword ( const QByteArray & password )
*/
HB_FUNC_STATIC( QURL_SETENCODEDPASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedPassword ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedPath ( const QByteArray & path )
*/
HB_FUNC_STATIC( QURL_SETENCODEDPATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedQuery ( const QByteArray & query )
*/
HB_FUNC_STATIC( QURL_SETENCODEDQUERY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedQuery ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setEncodedUrl ( const QByteArray & encodedUrl )
*/
HB_FUNC_STATIC( QURL_SETENCODEDURL1 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_SETENCODEDURL2 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setEncodedUrl ( *par1,  (QUrl::ParsingMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setEncodedUrl ( const QByteArray & encodedUrl )
//[2]void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETENCODEDURL )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QURL_SETENCODEDURL1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_SETENCODEDURL2 );
  }
}

/*
void setEncodedUserName ( const QByteArray & userName )
*/
HB_FUNC_STATIC( QURL_SETENCODEDUSERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setEncodedUserName ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFragment ( const QString & fragment )
*/
HB_FUNC_STATIC( QURL_SETFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFragment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHost ( const QString & host )
*/
HB_FUNC_STATIC( QURL_SETHOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setHost ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QURL_SETPASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPassword ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QURL_SETPATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPort ( int port )
*/
HB_FUNC_STATIC( QURL_SETPORT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPort ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQueryDelimiters ( char valueDelimiter, char pairDelimiter )
*/
HB_FUNC_STATIC( QURL_SETQUERYDELIMITERS )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
    obj->setQueryDelimiters ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QURL_SETSCHEME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setScheme ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QString & url )
*/
HB_FUNC_STATIC( QURL_SETURL1 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setUrl ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_SETURL2 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    obj->setUrl ( par1,  (QUrl::ParsingMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setUrl ( const QString & url )
//[2]void setUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURL_SETURL1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_SETURL2 );
  }
}

/*
void setUserInfo ( const QString & userInfo )
*/
HB_FUNC_STATIC( QURL_SETUSERINFO )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setUserInfo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUserName ( const QString & userName )
*/
HB_FUNC_STATIC( QURL_SETUSERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setUserName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void swap ( QUrl & other )
*/
HB_FUNC_STATIC( QURL_SWAP )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOENCODED )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toEncoded ( ISNIL(1)? QUrl::None : (QUrl::FormattingOptions) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toLocalFile () const
*/
HB_FUNC_STATIC( QURL_TOLOCALFILE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toLocalFile (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOSTRING )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toString ( ISNIL(1)? QUrl::None : (QUrl::FormattingOptions) hb_parni(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString topLevelDomain () const
*/
HB_FUNC_STATIC( QURL_TOPLEVELDOMAIN )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->topLevelDomain (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString userInfo () const
*/
HB_FUNC_STATIC( QURL_USERINFO )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->userInfo (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString userName () const
*/
HB_FUNC_STATIC( QURL_USERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->userName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
QString fromAce ( const QByteArray & domain )
*/
HB_FUNC_STATIC( QURL_FROMACE )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString str1 = QUrl::fromAce ( *par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QUrl fromEncoded ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMENCODED1 )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_FROMENCODED2 )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *par1,  (QUrl::ParsingMode) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


//[1]QUrl fromEncoded ( const QByteArray & input )
//[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QURL_FROMENCODED1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_FROMENCODED2 );
  }
}

/*
QUrl fromLocalFile ( const QString & localFile )
*/
HB_FUNC_STATIC( QURL_FROMLOCALFILE )
{
  QString par1 = hb_parc(1);
  QUrl * ptr = new QUrl( QUrl::fromLocalFile ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
QString fromPercentEncoding ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMPERCENTENCODING )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString str1 = QUrl::fromPercentEncoding ( *par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QUrl fromUserInput ( const QString & userInput )
*/
HB_FUNC_STATIC( QURL_FROMUSERINPUT )
{
  QString par1 = hb_parc(1);
  QUrl * ptr = new QUrl( QUrl::fromUserInput ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
QStringList idnWhitelist ()
*/
HB_FUNC_STATIC( QURL_IDNWHITELIST )
{
  QStringList strl = QUrl::idnWhitelist (  );
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
void setIdnWhitelist ( const QStringList & list )
*/
HB_FUNC_STATIC( QURL_SETIDNWHITELIST )
{
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
  QUrl::setIdnWhitelist ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toAce ( const QString & domain )
*/
HB_FUNC_STATIC( QURL_TOACE )
{
  QString par1 = hb_parc(1);
  QByteArray * ptr = new QByteArray( QUrl::toAce ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
HB_FUNC_STATIC( QURL_TOPERCENTENCODING )
{
  QString par1 = hb_parc(1);
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray * ptr = new QByteArray( QUrl::toPercentEncoding ( par1, par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


HB_FUNC_STATIC( QURL_NEWFROM )
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

HB_FUNC_STATIC( QURL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QURL_NEWFROM );
}

HB_FUNC_STATIC( QURL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QURL_SETSELFDESTRUCTION )
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
