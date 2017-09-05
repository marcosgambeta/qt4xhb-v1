$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QByteArrayMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD indexIn1
   METHOD indexIn2
   METHOD indexIn
   METHOD pattern
   METHOD setPattern
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QByteArrayMatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QByteArrayMatcher ()
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW1 )
{
  QByteArrayMatcher * o = new QByteArrayMatcher ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArrayMatcher ( const QByteArray & pattern )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW2 )
{
  QByteArrayMatcher * o = new QByteArrayMatcher ( *PQBYTEARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArrayMatcher ( const char * pattern, int length )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW3 )
{
  QByteArrayMatcher * o = new QByteArrayMatcher ( (const char *) hb_parc(1), PINT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArrayMatcher ( const QByteArrayMatcher & other )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW4 )
{
  QByteArrayMatcher * o = new QByteArrayMatcher ( *PQBYTEARRAYMATCHER(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QByteArrayMatcher ()
//[2]QByteArrayMatcher ( const QByteArray & pattern )
//[3]QByteArrayMatcher ( const char * pattern, int length )
//[4]QByteArrayMatcher ( const QByteArrayMatcher & other )

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW )
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

$deleteMethod

/*
int indexIn ( const QByteArray & ba, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN1 )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexIn ( *PQBYTEARRAY(1), OPINT(2,0) ) );
  }
}


/*
int indexIn ( const char * str, int len, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN2 )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexIn ( (const char *) hb_parc(1), PINT(2), OPINT(3,0) ) );
  }
}


//[1]int indexIn ( const QByteArray & ba, int from = 0 ) const
//[2]int indexIn ( const char * str, int len, int from = 0 ) const

HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN )
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
HB_FUNC_STATIC( QBYTEARRAYMATCHER_PATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->pattern () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setPattern ( const QByteArray & pattern )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETPATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPattern ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
