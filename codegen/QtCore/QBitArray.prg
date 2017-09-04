$header

#include "hbclass.ch"


CLASS QBitArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD at
   METHOD clear
   METHOD clearBit
   METHOD count1
   METHOD count2
   METHOD count
   METHOD fill1
   METHOD fill2
   METHOD fill
   METHOD isEmpty
   METHOD isNull
   METHOD resize
   METHOD setBit1
   METHOD setBit2
   METHOD setBit
   METHOD size
   METHOD testBit
   METHOD toggleBit
   METHOD truncate
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QBitArray>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBitArray ()
*/
HB_FUNC_STATIC( QBITARRAY_NEW1 )
{
  QBitArray * o = new QBitArray ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QBitArray ( int size, bool value = false )
*/
HB_FUNC_STATIC( QBITARRAY_NEW2 )
{
  QBitArray * o = new QBitArray ( PINT(1), OPBOOL(2,false) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QBitArray ( const QBitArray & other )
*/
HB_FUNC_STATIC( QBITARRAY_NEW3 )
{
  QBitArray * o = new QBitArray ( *PQBITARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QBitArray ()
//[2]QBitArray ( int size, bool value = false )
//[3]QBitArray ( const QBitArray & other )

HB_FUNC_STATIC( QBITARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBITARRAY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBITARRAY_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBITARRAY(1) )
  {
    HB_FUNC_EXEC( QBITARRAY_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
bool at ( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_AT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->at ( PINT(1) ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QBITARRAY_CLEAR )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_CLEARBIT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearBit ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QBITARRAY_COUNT1 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
int count ( bool on ) const
*/
HB_FUNC_STATIC( QBITARRAY_COUNT2 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count ( PBOOL(1) ) );
  }
}


//[1]int count () const
//[2]int count ( bool on ) const

HB_FUNC_STATIC( QBITARRAY_COUNT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBITARRAY_COUNT1 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QBITARRAY_COUNT2 );
  }
}

/*
bool fill ( bool value, int size = -1 )
*/
HB_FUNC_STATIC( QBITARRAY_FILL1 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->fill ( PBOOL(1), OPINT(2,-1) ) );
  }
}


/*
void fill ( bool value, int begin, int end )
*/
HB_FUNC_STATIC( QBITARRAY_FILL2 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fill ( PBOOL(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool fill ( bool value, int size = -1 )
//[2]void fill ( bool value, int begin, int end )

HB_FUNC_STATIC( QBITARRAY_FILL )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBITARRAY_FILL1 );
  }
  else if( ISNUMPAR(3) && ISLOG(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QBITARRAY_FILL2 );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QBITARRAY_ISEMPTY )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QBITARRAY_ISNULL )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
void resize ( int size )
*/
HB_FUNC_STATIC( QBITARRAY_RESIZE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_SETBIT1 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBit ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBit ( int i, bool value )
*/
HB_FUNC_STATIC( QBITARRAY_SETBIT2 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBit ( PINT(1), PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setBit ( int i )
//[2]void setBit ( int i, bool value )

HB_FUNC_STATIC( QBITARRAY_SETBIT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBITARRAY_SETBIT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QBITARRAY_SETBIT2 );
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QBITARRAY_SIZE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->size () );
  }
}


/*
bool testBit ( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_TESTBIT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->testBit ( PINT(1) ) );
  }
}


/*
bool toggleBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_TOGGLEBIT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->toggleBit ( PINT(1) ) );
  }
}


/*
void truncate ( int pos )
*/
HB_FUNC_STATIC( QBITARRAY_TRUNCATE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->truncate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
