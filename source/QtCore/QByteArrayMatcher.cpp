/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QByteArrayMatcher>

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
QByteArrayMatcher ()
*/
HB_FUNC( QBYTEARRAYMATCHER_NEW1 )
{
  QByteArrayMatcher * o = NULL;
  o = new QByteArrayMatcher (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QByteArrayMatcher ( const QByteArray & pattern )
*/
HB_FUNC( QBYTEARRAYMATCHER_NEW2 )
{
  QByteArrayMatcher * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QByteArrayMatcher ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QByteArrayMatcher ( const char * pattern, int length )
*/
HB_FUNC( QBYTEARRAYMATCHER_NEW3 )
{
  QByteArrayMatcher * o = NULL;
  const char * par1 = hb_parc(1);
  int par2 = hb_parni(2);
  o = new QByteArrayMatcher (  (const char *) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QByteArrayMatcher ( const QByteArrayMatcher & other )
*/
HB_FUNC( QBYTEARRAYMATCHER_NEW4 )
{
  QByteArrayMatcher * o = NULL;
  QByteArrayMatcher * par1 = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QByteArrayMatcher ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QByteArrayMatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QByteArrayMatcher ()
//[2]QByteArrayMatcher ( const QByteArray & pattern )
//[3]QByteArrayMatcher ( const char * pattern, int length )
//[4]QByteArrayMatcher ( const QByteArrayMatcher & other )

HB_FUNC( QBYTEARRAYMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAYMATCHER(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QBYTEARRAYMATCHER_DELETE )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int indexIn ( const QByteArray & ba, int from = 0 ) const
*/
HB_FUNC( QBYTEARRAYMATCHER_INDEXIN1 )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    int i = obj->indexIn ( *par1, par2 );
    hb_retni( i );
  }
}


/*
int indexIn ( const char * str, int len, int from = 0 ) const
*/
HB_FUNC( QBYTEARRAYMATCHER_INDEXIN2 )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int par2 = hb_parni(2);
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    int i = obj->indexIn (  (const char *) par1, par2, par3 );
    hb_retni( i );
  }
}


//[1]int indexIn ( const QByteArray & ba, int from = 0 ) const
//[2]int indexIn ( const char * str, int len, int from = 0 ) const

HB_FUNC( QBYTEARRAYMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_INDEXIN1 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QBYTEARRAYMATCHER_INDEXIN2 );
  }
}

/*
QByteArray pattern () const
*/
HB_FUNC( QBYTEARRAYMATCHER_PATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->pattern (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
void setPattern ( const QByteArray & pattern )
*/
HB_FUNC( QBYTEARRAYMATCHER_SETPATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPattern ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




