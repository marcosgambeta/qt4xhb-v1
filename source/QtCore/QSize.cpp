/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSize>

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
QSize ()
*/
HB_FUNC( QSIZE_NEW1 )
{
  QSize * o = NULL;
  o = new QSize (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSize ( int width, int height )
*/
HB_FUNC( QSIZE_NEW2 )
{
  QSize * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  o = new QSize ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSize ()
//[2]QSize ( int width, int height )

HB_FUNC( QSIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSIZE_DELETE )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSize boundedTo ( const QSize & otherSize ) const
*/
HB_FUNC( QSIZE_BOUNDEDTO )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->boundedTo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
QSize expandedTo ( const QSize & otherSize ) const
*/
HB_FUNC( QSIZE_EXPANDEDTO )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->expandedTo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
int height () const
*/
HB_FUNC( QSIZE_HEIGHT )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->height (  );
    hb_retni( i );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC( QSIZE_ISEMPTY )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QSIZE_ISNULL )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QSIZE_ISVALID )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}




/*
void scale ( int width, int height, Qt::AspectRatioMode mode )
*/
HB_FUNC( QSIZE_SCALE1 )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    obj->scale ( par1, par2,  (Qt::AspectRatioMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scale ( const QSize & size, Qt::AspectRatioMode mode )
*/
HB_FUNC( QSIZE_SCALE2 )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->scale ( *par1,  (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void scale ( int width, int height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSize & size, Qt::AspectRatioMode mode )

HB_FUNC( QSIZE_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZE_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZE_SCALE2 );
  }
}

/*
void setHeight ( int height )
*/
HB_FUNC( QSIZE_SETHEIGHT )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( int width )
*/
HB_FUNC( QSIZE_SETWIDTH )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void transpose ()
*/
HB_FUNC( QSIZE_TRANSPOSE )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->transpose (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int width () const
*/
HB_FUNC( QSIZE_WIDTH )
{
  QSize * obj = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->width (  );
    hb_retni( i );
  }
}




