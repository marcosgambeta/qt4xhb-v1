/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSizeF>

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
QSizeF ()
*/
HB_FUNC( QSIZEF_NEW1 )
{
  QSizeF * o = NULL;
  o = new QSizeF (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSizeF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSizeF ( const QSize & size )
*/
HB_FUNC( QSIZEF_NEW2 )
{
  QSizeF * o = NULL;
  QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSizeF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSizeF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSizeF ( qreal width, qreal height )
*/
HB_FUNC( QSIZEF_NEW3 )
{
  QSizeF * o = NULL;
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  o = new QSizeF ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSizeF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSizeF ()
//[2]QSizeF ( const QSize & size )
//[3]QSizeF ( qreal width, qreal height )

HB_FUNC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QSIZEF_DELETE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSizeF boundedTo ( const QSizeF & otherSize ) const
*/
HB_FUNC( QSIZEF_BOUNDEDTO )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSizeF * ptr = new QSizeF( obj->boundedTo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );  }
}


/*
QSizeF expandedTo ( const QSizeF & otherSize ) const
*/
HB_FUNC( QSIZEF_EXPANDEDTO )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSizeF * ptr = new QSizeF( obj->expandedTo ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );  }
}


/*
qreal height () const
*/
HB_FUNC( QSIZEF_HEIGHT )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->height (  );
    hb_retnd( r );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC( QSIZEF_ISEMPTY )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEmpty (  );
    hb_retl( b );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QSIZEF_ISNULL )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QSIZEF_ISVALID )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}




/*
void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
*/
HB_FUNC( QSIZEF_SCALE1 )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    int par3 = hb_parni(3);
    obj->scale ( par1, par2,  (Qt::AspectRatioMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scale ( const QSizeF & size, Qt::AspectRatioMode mode )
*/
HB_FUNC( QSIZEF_SCALE2 )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->scale ( *par1,  (Qt::AspectRatioMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void scale ( qreal width, qreal height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSizeF & size, Qt::AspectRatioMode mode )

HB_FUNC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIZEF_SCALE2 );
  }
}

/*
void setHeight ( qreal height )
*/
HB_FUNC( QSIZEF_SETHEIGHT )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setHeight ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( qreal width )
*/
HB_FUNC( QSIZEF_SETWIDTH )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize toSize () const
*/
HB_FUNC( QSIZEF_TOSIZE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );  }
}


/*
void transpose ()
*/
HB_FUNC( QSIZEF_TRANSPOSE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->transpose (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width () const
*/
HB_FUNC( QSIZEF_WIDTH )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->width (  );
    hb_retnd( r );
  }
}




