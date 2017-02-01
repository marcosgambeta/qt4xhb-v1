/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QBitArray>

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
QBitArray ()
*/
HB_FUNC( QBITARRAY_NEW1 )
{
  QBitArray * o = NULL;
  o = new QBitArray (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBitArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QBitArray ( int size, bool value = false )
*/
HB_FUNC( QBITARRAY_NEW2 )
{
  QBitArray * o = NULL;
  int par1 = hb_parni(1);
  bool par2 = ISNIL(2)? false : hb_parl(2);
  o = new QBitArray ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBitArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QBitArray ( const QBitArray & other )
*/
HB_FUNC( QBITARRAY_NEW3 )
{
  QBitArray * o = NULL;
  QBitArray * par1 = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QBitArray ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBitArray *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QBitArray ()
//[2]QBitArray ( int size, bool value = false )
//[3]QBitArray ( const QBitArray & other )

HB_FUNC( QBITARRAY_NEW )
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
HB_FUNC( QBITARRAY_AT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->at ( par1 );
    hb_retl( b );
  }
}


/*
void clear ()
*/
HB_FUNC( QBITARRAY_CLEAR )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearBit ( int i )
*/
HB_FUNC( QBITARRAY_CLEARBIT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->clearBit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC( QBITARRAY_COUNT1 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
int count ( bool on ) const
*/
HB_FUNC( QBITARRAY_COUNT2 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    int i = obj->count ( par1 );
    hb_retni( i );
  }
}


//[1]int count () const
//[2]int count ( bool on ) const

HB_FUNC( QBITARRAY_COUNT )
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
HB_FUNC( QBITARRAY_FILL1 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    int par2 = ISNIL(2)? -1 : hb_parni(2);
    bool b = obj->fill ( par1, par2 );
    hb_retl( b );
  }
}


/*
void fill ( bool value, int begin, int end )
*/
HB_FUNC( QBITARRAY_FILL2 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->fill ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool fill ( bool value, int size = -1 )
//[2]void fill ( bool value, int begin, int end )

HB_FUNC( QBITARRAY_FILL )
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
HB_FUNC( QBITARRAY_ISEMPTY )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QBITARRAY_ISNULL )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
void resize ( int size )
*/
HB_FUNC( QBITARRAY_RESIZE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBit ( int i )
*/
HB_FUNC( QBITARRAY_SETBIT1 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBit ( int i, bool value )
*/
HB_FUNC( QBITARRAY_SETBIT2 )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setBit ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setBit ( int i )
//[2]void setBit ( int i, bool value )

HB_FUNC( QBITARRAY_SETBIT )
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
HB_FUNC( QBITARRAY_SIZE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->size (  );
    hb_retni( i );
  }
}


/*
bool testBit ( int i ) const
*/
HB_FUNC( QBITARRAY_TESTBIT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->testBit ( par1 );
    hb_retl( b );
  }
}


/*
bool toggleBit ( int i )
*/
HB_FUNC( QBITARRAY_TOGGLEBIT )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->toggleBit ( par1 );
    hb_retl( b );
  }
}


/*
void truncate ( int pos )
*/
HB_FUNC( QBITARRAY_TRUNCATE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->truncate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




